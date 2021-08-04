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
 
 #include <stdint.h>
 #include <string.h>
 #include "gsof_packet_protocol.h"
 #include "gsof_records.h"
 #include "struct_pack_unpack.h"

#define vas_bswap16_(s) ((((s) & 0xff) << 8) | (((s) >> 8) & 0xff))  

#define vas_bswap32_(l) (((l) >> 24) | \
(((l) & 0x00ff0000) >> 8) | \
(((l) & 0x0000ff00) << 8) | \
((l) << 24))

#define vas_bswap64_(ll) (((ll) >> 56) | \
(((ll) & 0x00ff000000000000) >> 40)  | \
(((ll) & 0x0000ff0000000000) >> 24)  | \
(((ll) & 0x000000ff00000000) >> 8)   | \
(((ll) & 0x00000000ff000000) << 8)   | \
(((ll) & 0x0000000000ff0000) << 24)  | \
(((ll) & 0x000000000000ff00) << 40)  | \
(((ll) << 56)))


int decode_utc_record(utc_record_t *msg, gsof_record_t *gsof_record)
{
	if (gsof_record->record_type == record_type_utc && gsof_record->length == 0x09)
	{
		struct_unpack(gsof_record->data, ">I2HB",
			&msg->gps_time_ms,
			&msg->gps_week, &msg->utc_offset,
			&msg->flags.val);

		return 0;
	}
	else return 1;
}

int decode_ins_full_navigation_record(ins_full_navigation_record_t *msg, gsof_record_t *gsof_record)
{
	if (gsof_record->record_type == record_type_ins_full_navigation && gsof_record->length == 0x68)
	{
		struct_unpack(gsof_record->data, ">HI2B3d4f4d6f",
			&msg->gps_week,
			&msg->gps_time_ms,
			&msg->align_status, &msg->quality_indication,
			&msg->latitude, &msg->longitude, &msg->altitude,
			&msg->north_velocity, &msg->east_velocity, &msg->down_velocity, &msg->total_speed,
			&msg->roll, &msg->pitch, &msg->heading, &msg->track_angle,
			&msg->angle_rate_x, &msg->angle_rate_y, &msg->angle_rate_z,
			&msg->longitudinal_acceleration, &msg->traverse_acceleration, &msg->down_acceleration);

		return 0;
	}
	else return 1;
}

int decode_ins_rms_info_record(ins_rms_info_record_t *msg, gsof_record_t *gsof_record)
{
	if (gsof_record->record_type == record_type_ins_rms_info && gsof_record->length == 0x2C)
	{
		struct_unpack(gsof_record->data, ">HI2B9f",
			&msg->gps_week,
			&msg->gps_time_ms,
			&msg->align_status, &msg->quality_indication,
			&msg->north_position_rms, &msg->east_position_rms, &msg->down_position_rms,
			&msg->north_velocity_rms, &msg->east_velocity_rms, &msg->down_velocity_rms,
			&msg->roll_rms, &msg->pitch_rms, &msg->heading_rms);

		return 0;
	}
	else return 1;
}
