/****************************************************************/
/*                                                              */
/*          GSOF Packet Protocol Library                        */
/*          C Language Dynamic, Version 1.0                     */
/*   Copyright 2021, Beijing Nuogeng Technology Ltd             */
/*                                                              */
/****************************************************************/
/*
 * Copyright (C) 2021 Beijing Nuogeng Technology Ltd
 *
 * Permission is hereby granted, free of charge, to any person obtaining
 * a copy of this software and associated documentation files (the "Software"),
 * to deal in the Software without restriction, including without limitation
 * the rights to use, copy, modify, merge, publish, distribute, sublicense,
 * and/or sell copies of the Software, and to permit persons to whom the
 * Software is furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included
 * in all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
 * OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE 
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
 * DEALINGS IN THE SOFTWARE.
 */

#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <assert.h>
#include "gsof_packet_protocol.h"

/*
 * Function to decode gsof_records from raw data
 * Returns 0 with valid gsof_record
 */
int gsof_record_decode(gsof_decoder_t* gsof_decoder, gsof_record_t* gsof_record)
{
	// read one or more gsof_record
	if (gsof_decoder->record_buf_length > 0)
	{
		gsof_record->record_type = gsof_decoder->record_check_pos[0];
		gsof_record->length = gsof_decoder->record_check_pos[1];
		gsof_record->data = gsof_decoder->record_check_pos + 2;

		gsof_decoder->record_buf_length -= gsof_record->length + 2;
		gsof_decoder->record_check_pos += gsof_record->length + 2;
		return 0;
	}

	// decode gsof_package data, it may have one or more gsof_record
	uint16_t checksum = 0;
	gsof_packet_t* gsof_pkt = &gsof_decoder->gsof_packet;
	while (gsof_decoder->decode_iterator + GSOF_PACKET_HEADER_SIZE <= gsof_decoder->recv_buf_length)
	{
		uint8_t* recv_buf = gsof_decoder->recv_buffer + gsof_decoder->decode_iterator;
		if (recv_buf[0] != 0x02) {
			++gsof_decoder->decode_iterator;
			continue;
		}
		gsof_pkt->status = recv_buf[1];
		gsof_pkt->package_type = recv_buf[2];
		gsof_pkt->length = recv_buf[3];
		gsof_pkt->transmission_number = recv_buf[4];
		gsof_pkt->page_index = recv_buf[5];
		gsof_pkt->max_page_index = recv_buf[6];

		// check packet size
		if (gsof_pkt->length + 6 + gsof_decoder->decode_iterator > gsof_decoder->recv_buf_length)
			break; // need more data
		
		gsof_decoder->decode_iterator += GSOF_PACKET_HEADER_SIZE;
		// check valid STX ETX range
		if (recv_buf[gsof_pkt->length + 5] != 0x03) {
			gsof_decoder->decode_iterator -= (GSOF_PACKET_HEADER_SIZE - 1);
			continue; // find next valid STX-ETX range
		}

		// skip non gsof packet type
		if (gsof_pkt->package_type != 0x40) {
			gsof_decoder->decode_iterator += (gsof_pkt->length - 3 + 2);
			continue; // find next gosf packet type
		}
		
		// calculated check sum
		checksum = 0;
		uint8_t* sum_begin = recv_buf + 1;
		int sum_length = 3 + gsof_pkt->length;
		for (int i = 0; i < sum_length; ++i) {
			checksum += sum_begin[i];
		}

		gsof_pkt->check_sum = recv_buf[gsof_pkt->length + 4];
		// two check sum should be the same
		if (checksum % 256 == gsof_pkt->check_sum)
		{
			memcpy(gsof_decoder->record_buffer + gsof_decoder->record_buf_length,
				recv_buf + GSOF_PACKET_HEADER_SIZE,
				gsof_pkt->length - 3);

			gsof_decoder->record_buf_length += gsof_pkt->length - 3;
			gsof_decoder->record_check_pos = gsof_decoder->record_buffer;
			gsof_decoder->decode_iterator += (gsof_pkt->length - 3 + 2);

			if (gsof_pkt->page_index == gsof_pkt->max_page_index)
			{
				// read one or more gsof_record
				if (gsof_decoder->record_buf_length > 0)
				{
					gsof_record->record_type = gsof_decoder->record_check_pos[0];
					gsof_record->length = gsof_decoder->record_check_pos[1];
					gsof_record->data = gsof_decoder->record_check_pos + 2;

					gsof_decoder->record_buf_length -= gsof_record->length + 2;
					gsof_decoder->record_check_pos += gsof_record->length + 2;
					return 0; // return one valid gsof_record
				}
			}
			else // have multi page, copy this page data to gsof_record buffer for future decode
				continue; // continue to check recv_buffer
		}
		else // check sum error, skip this package
		{
			gsof_decoder->decode_iterator += (gsof_pkt->length - 3 + 2);
			gsof_decoder->checksum_errors++;
			continue; // continue to check recv_buffer
		}
	}

	// to check whether have some data in the buffer
	if (gsof_decoder->decode_iterator < gsof_decoder->recv_buf_length)
	{
		if (gsof_decoder->decode_iterator > 0)
		{ // copy unchecked data to recv_buffer begin position
			memmove(gsof_decoder->recv_buffer,
				gsof_decoder->recv_buffer + gsof_decoder->decode_iterator,
				(gsof_decoder->recv_buf_length - gsof_decoder->decode_iterator) * sizeof(uint8_t));

			gsof_decoder->recv_buf_length -= gsof_decoder->decode_iterator;
		}
	}
	else
		gsof_decoder->recv_buf_length = 0;
	// reset decode_iterator to recv_buffer begin position
	gsof_decoder->decode_iterator = 0;

	return 1;
}