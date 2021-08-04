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

#ifdef __cplusplus
extern "C"
{
#endif

#define GSOF_PACKET_HEADER_SIZE 7
#define RECV_BUFFER_SIZE 4096
#define GSOF_RECORD_BUFFER_SIZE 1024

// point to address which incoming data can be append here
#define gsof_decoder_pointer(gsof_decoder) &(gsof_decoder)->recv_buffer[(gsof_decoder)->recv_buf_length]
// size have not filled data
#define gsof_decoder_size(gsof_decoder) (sizeof((gsof_decoder)->recv_buffer) - (gsof_decoder)->recv_buf_length)
// update filled data size
#define gsof_decoder_increment(gsof_decoder, bytes_received) (gsof_decoder)->recv_buf_length += bytes_received


typedef struct
{
	uint8_t record_type;
	uint8_t length;
	uint8_t* data;
} gsof_record_t;

typedef struct
{
	//uint8_t STX; //sync header=0x02;
	uint8_t status;
	uint8_t package_type; //0x40=gsof type
	uint8_t length;
	uint8_t transmission_number;
	uint8_t page_index;
	uint8_t max_page_index;
	/*data section，length-3 bytes*/
	// below is data end, two bytes
	uint8_t check_sum; // (status + package_type + length + data bytes) modulo 256
	//uint8_t ETX; // sync trailer=0x03;
} gsof_packet_t;

typedef struct
{
	uint8_t recv_buffer[RECV_BUFFER_SIZE];
	int16_t recv_buf_length;
	int16_t decode_iterator;
	uint8_t record_buffer[GSOF_RECORD_BUFFER_SIZE];
	int16_t record_buf_length;
	uint8_t* record_check_pos;
	uint32_t checksum_errors;
	gsof_packet_t gsof_packet;
} gsof_decoder_t;

int gsof_record_decode(gsof_decoder_t* gsof_decoder, gsof_record_t* gsof_record);

#ifdef __cplusplus
}
#endif