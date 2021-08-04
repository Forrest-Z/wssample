/****************************************************************/
/*                                                              */
/*          GSOF Packet Protocol Library                        */
/*        ROS Driver, Packet to Published Message Example       */
/*          Copyright 2021, Beijing Nuogeng Technology Ltd      */
/*                                                              */
/****************************************************************/
/*
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
#define HAVE_ROS
#ifdef HAVE_ROS
#include <ros/ros.h>
#include <sensor_msgs/NavSatFix.h>
#include <sensor_msgs/TimeReference.h>
#include <sensor_msgs/Imu.h>
#include <geometry_msgs/Twist.h>
#include <diagnostic_msgs/DiagnosticArray.h>
#endif // HAVE_ROS

#define _USE_MATH_DEFINES
#include <math.h>
#include <stdlib.h>
#include <stdio.h>
#include <stdint.h>
#include <string>
#include <thread>
#include <chrono>

#include "rs232/rs232.h"
#include "gsof_packet_protocol.h"
#include "gsof_records.h"

// enable this if use ROS
//#define HAVE_ROS

#define RADIANS_TO_DEGREES (180.0/M_PI)
#define DEGREES_TO_RADIANS (M_PI/180.0)
 
 // The start of GPS time in a time_t style. In this version it is a constant, but this constant assumes that
// the local machine uses 00:00:00 01/01/1970 as its Epoch time. If your machine is different then you need to
// convert 00:00:00 06/01/1980 in to the local machine's time_t time.
#define GPS_TIME_START_TIME_MSEC (315964800000)

#define MINUTES_IN_WEEK (10080)       //!< Number of minutes in a week.


int64_t gps_time_to_utc(utc_record_t* utc_record)
{
	int64_t ms_gps_utc = 0;
	if (utc_record->flags.val.time_valid && utc_record->flags.val.offset_valid)
	{
		ms_gps_utc = int64_t(utc_record->gps_week) * MINUTES_IN_WEEK * 60000;
		ms_gps_utc += utc_record->gps_time_ms;
		ms_gps_utc += GPS_TIME_START_TIME_MSEC + int64_t(utc_record->utc_offset) * 1000;
	}
	return ms_gps_utc;
}


int main(int argc, char *argv[])
{

#ifdef HAVE_ROS
	// Set up ROS node //
	ros::init(argc, argv, "nav992_device_node");
	ros::NodeHandle nh;
	ros::NodeHandle pnh("~");
#endif // HAVE_ROS

	printf("\nYour NAV992 ROS driver is currently running\nPress Ctrl-C to interrupt\n");

	// Set up the COM port
	std::string com_port = "/dev/ttyUSB0";
	int baud_rate = 115200;
	std::string imu_frame_id;
	std::string nav_sat_frame_id;
	std::string topic_prefix;

	if (argc >= 3) {
		com_port = std::string(argv[1]);
		baud_rate = atoi(argv[2]);
	}

#ifdef HAVE_ROS
	else {
		pnh.param("port", com_port, std::string("/dev/ttyUSB0"));
		pnh.param("baud_rate", baud_rate, 115200);
	}

	pnh.param("imu_frame_id", imu_frame_id, std::string("imu"));
	pnh.param("nav_sat_frame_id", nav_sat_frame_id, std::string("gps"));
	pnh.param("topic_prefix", topic_prefix, std::string("nav992_device"));
#endif // HAVE_ROS


#ifdef HAVE_ROS
	// Initialise Publishers and Topics //
	ros::Publisher nav_sat_fix_pub=nh.advertise<sensor_msgs::NavSatFix>(topic_prefix + "/NavSatFix",10);
	ros::Publisher twist_pub=nh.advertise<geometry_msgs::Twist>(topic_prefix + "/Twist",10);
	ros::Publisher imu_pub=nh.advertise<sensor_msgs::Imu>(topic_prefix + "/Imu",10);
	ros::Publisher system_status_pub=nh.advertise<diagnostic_msgs::DiagnosticStatus>(topic_prefix + "/SystemStatus",10);
	ros::Publisher filter_status_pub=nh.advertise<diagnostic_msgs::DiagnosticStatus>(topic_prefix + "/FilterStatus",10);

	// Initialise messages
	sensor_msgs::NavSatFix nav_sat_fix_msg;
	nav_sat_fix_msg.header.stamp.sec=0;
	nav_sat_fix_msg.header.stamp.nsec=0;
	nav_sat_fix_msg.header.frame_id='0';
	nav_sat_fix_msg.status.status=0;
	nav_sat_fix_msg.status.service=1; // fixed to GPS
	nav_sat_fix_msg.latitude=0.0;
	nav_sat_fix_msg.longitude=0.0;
	nav_sat_fix_msg.altitude=0.0;
	nav_sat_fix_msg.position_covariance={0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0};
	nav_sat_fix_msg.position_covariance_type=2; // fixed to variance on the diagonal

	geometry_msgs::Twist twist_msg;
	twist_msg.linear.x=0.0;
	twist_msg.linear.y=0.0;
	twist_msg.linear.z=0.0;
	twist_msg.angular.x=0.0;
	twist_msg.angular.y=0.0;
	twist_msg.angular.z=0.0;

	sensor_msgs::Imu imu_msg;
	imu_msg.header.stamp.sec=0;
	imu_msg.header.stamp.nsec=0;
	imu_msg.header.frame_id='0';
	imu_msg.orientation.x=0.0;
	imu_msg.orientation.y=0.0;
	imu_msg.orientation.z=0.0;
	imu_msg.orientation.w=0.0;
	imu_msg.orientation_covariance={0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0};
	imu_msg.angular_velocity.x=0.0;
	imu_msg.angular_velocity.y=0.0;
	imu_msg.angular_velocity.z=0.0;
	imu_msg.angular_velocity_covariance={0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0}; // fixed
	imu_msg.linear_acceleration.x=0.0;
	imu_msg.linear_acceleration.y=0.0;
	imu_msg.linear_acceleration.z=0.0;
	imu_msg.linear_acceleration_covariance={0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0}; // fixed

	diagnostic_msgs::DiagnosticStatus system_status_msg;
	system_status_msg.level = 0; // default OK state
	system_status_msg.name = "System Status";
	system_status_msg.message = "";

	diagnostic_msgs::DiagnosticStatus filter_status_msg;
	filter_status_msg.level = 0; // default OK state
	filter_status_msg.name = "Filter Status";
	filter_status_msg.message = "";
#endif // HAVE_ROS

	// get data from com port //
	gsof_decoder_t* gsof_decoder = (gsof_decoder_t*)malloc(sizeof(gsof_decoder_t));
	memset(gsof_decoder, 0, sizeof(gsof_decoder_t));
	gsof_record_t* gsof_record = (gsof_record_t*)malloc(sizeof(gsof_record_t));
	memset(gsof_record, 0, sizeof(gsof_record_t));
	utc_record_t* utc_record = (utc_record_t*)malloc(sizeof(utc_record_t));
	memset(utc_record, 0, sizeof(utc_record_t));
	ins_full_navigation_record_t* ins_full_navigation_record = (ins_full_navigation_record_t*)malloc(sizeof(ins_full_navigation_record_t));
	memset(ins_full_navigation_record, 0, sizeof(ins_full_navigation_record_t));
	ins_rms_info_record_t* ins_rms_info_record = (ins_rms_info_record_t*)malloc(sizeof(ins_rms_info_record_t));
	memset(ins_rms_info_record, 0, sizeof(ins_rms_info_record_t));
	int bytes_received;
	
	if (OpenComport(const_cast<char*>(com_port.c_str()), baud_rate))
	{
		printf("Could not open serial port: %s \n",com_port.c_str());
		exit(EXIT_FAILURE);
	}
		
	// Loop continuously, polling for packets
#ifdef HAVE_ROS
	while (ros::ok())
	{
		std::this_thread::sleep_for(std::chrono::milliseconds(10)); // 10ms=100Hz

		ros::spinOnce();
		if ((bytes_received = PollComport(gsof_decoder_pointer(gsof_decoder), gsof_decoder_size(gsof_decoder))) > 0)
		{

			//printf("receive data ......................");
			// increment the decode buffer length by the number of bytes received //
			gsof_decoder_increment(gsof_decoder, bytes_received);

			// decode all the packets in the buffer //
			while (0 == gsof_record_decode(gsof_decoder, gsof_record))
			{
				switch (gsof_record->record_type)
				{
				case record_type_utc:
				{
					if (decode_utc_record(utc_record, gsof_record) == 0)
					{
						int64_t ms_gps_utc = gps_time_to_utc(utc_record);
						if (ms_gps_utc != 0)
						{
							// NavSatFix
							nav_sat_fix_msg.header.stamp.sec = static_cast<uint32_t>(ms_gps_utc / 1000);
							nav_sat_fix_msg.header.stamp.nsec = static_cast<uint32_t>((ms_gps_utc - nav_sat_fix_msg.header.stamp.sec) * 1000000);
							// IMU
							imu_msg.header.stamp.sec = nav_sat_fix_msg.header.stamp.sec;
							imu_msg.header.stamp.nsec = nav_sat_fix_msg.header.stamp.nsec;
						}
					}
					break;
				}
				case record_type_ins_full_navigation:
				{
					if (decode_ins_full_navigation_record(ins_full_navigation_record, gsof_record) == 0)
					{
						// NavSatFix
						nav_sat_fix_msg.header.frame_id = nav_sat_frame_id;
						if (ins_full_navigation_record->quality_indication == Quality_Autonomous)
						{
							nav_sat_fix_msg.status.status = 0; // STATUS_FIX
						}
						else if (ins_full_navigation_record->quality_indication == Quality_PPSMode)
						{
							nav_sat_fix_msg.status.status = 1; // STATUS_SBAS_FIX
						}
						else if ((ins_full_navigation_record->quality_indication == Quality_Differential) ||
							(ins_full_navigation_record->quality_indication == Quality_RTKFixed) ||
							(ins_full_navigation_record->quality_indication == Quality_RTKFloat))
						{
							nav_sat_fix_msg.status.status = 2; // STATUS_GBAS_FIX
						}
						else
						{
							nav_sat_fix_msg.status.status = -1; // STATUS_NO_FIX
						}
						nav_sat_fix_msg.latitude = ins_full_navigation_record->latitude;
						nav_sat_fix_msg.longitude = ins_full_navigation_record->longitude;
						nav_sat_fix_msg.altitude = ins_full_navigation_record->altitude;

						// Twist
         				twist_msg.linear.x = ins_full_navigation_record->north_velocity;
						twist_msg.linear.y = ins_full_navigation_record->east_velocity;
						twist_msg.linear.z = ins_full_navigation_record->down_velocity;
						twist_msg.angular.x = ins_full_navigation_record->angle_rate_x * DEGREES_TO_RADIANS;
						twist_msg.angular.y = ins_full_navigation_record->angle_rate_y * DEGREES_TO_RADIANS;
						twist_msg.angular.z = ins_full_navigation_record->angle_rate_z * DEGREES_TO_RADIANS;

						// IMU
						imu_msg.header.frame_id = imu_frame_id;
						// Convert roll, pitch, yaw from radians to quaternion format //
						float phi = ins_full_navigation_record->roll * DEGREES_TO_RADIANS / 2.0f;
						float theta = ins_full_navigation_record->pitch * DEGREES_TO_RADIANS / 2.0f;
						float psi = ins_full_navigation_record->heading * DEGREES_TO_RADIANS / 2.0f;
						float sin_phi = sinf(phi);
						float cos_phi = cosf(phi);
						float sin_theta = sinf(theta);
						float cos_theta = cosf(theta);
						float sin_psi = sinf(psi);
						float cos_psi = cosf(psi);
						imu_msg.orientation.x = -cos_phi * sin_theta * sin_psi + sin_phi * cos_theta * cos_psi;
						imu_msg.orientation.y = cos_phi * sin_theta * cos_psi + sin_phi * cos_theta * sin_psi;
						imu_msg.orientation.z = cos_phi * cos_theta * sin_psi - sin_phi * sin_theta * cos_psi;
						imu_msg.orientation.w = cos_phi * cos_theta * cos_psi + sin_phi * sin_theta * sin_psi;

						imu_msg.angular_velocity.x = ins_full_navigation_record->angle_rate_x * DEGREES_TO_RADIANS; // These the same as the TWIST msg values
						imu_msg.angular_velocity.y = ins_full_navigation_record->angle_rate_y * DEGREES_TO_RADIANS;
						imu_msg.angular_velocity.z = ins_full_navigation_record->angle_rate_z * DEGREES_TO_RADIANS;
						imu_msg.linear_acceleration.x = ins_full_navigation_record->longitudinal_acceleration;
						imu_msg.linear_acceleration.y = ins_full_navigation_record->traverse_acceleration;
						imu_msg.linear_acceleration.z = ins_full_navigation_record->down_acceleration;

						// System Status
						system_status_msg.message = "";
						system_status_msg.level = 0; // default OK state

						// Filter Status
						filter_status_msg.message = "";
						filter_status_msg.level = 0; // default OK state
						if (ins_full_navigation_record->align_status == Align_Aligned ||
							ins_full_navigation_record->align_status == Align_FullNavigationMode) {
							filter_status_msg.message = filter_status_msg.message + "0. Aligned. ";
						}
						else {
							filter_status_msg.level = 1; // WARN state
							filter_status_msg.message = filter_status_msg.message + "1. Not aligned. ";
						}

						//{
						//	namespace sc = std::chrono;
						//	static sc::duration<double> start_time = sc::system_clock::now().time_since_epoch();
						//	sc::duration<double> now_time = sc::system_clock::now().time_since_epoch();
						//	double fps = 0;
						//	double diff = (now_time - start_time).count();
						//	if (diff > 0)
						//	{
						//		fps = 1 / diff;
						//		start_time = now_time;
						//	}
						//}

						//printf("INS Full fps:%.1fHz, gps_ms:%d\n", fps, ins_full_navigation_record->gps_time_ms);
					}
					break;
				}
				case record_type_ins_rms_info:
				{
					if (decode_ins_rms_info_record(ins_rms_info_record, gsof_record) == 0)
					{
						// NavSatFix
						nav_sat_fix_msg.position_covariance = {
							pow(ins_rms_info_record->east_position_rms,2), 0.0, 0.0,
							0.0, pow(ins_rms_info_record->north_position_rms,2), 0.0,
							0.0, 0.0, pow(ins_rms_info_record->down_position_rms,2)
						};

						// IMU
						imu_msg.orientation_covariance[0] = ins_rms_info_record->roll_rms * DEGREES_TO_RADIANS;
						imu_msg.orientation_covariance[4] = ins_rms_info_record->pitch_rms * DEGREES_TO_RADIANS;
						imu_msg.orientation_covariance[8] = ins_rms_info_record->heading_rms * DEGREES_TO_RADIANS;

						//printf("INS RMS, gps_ms:%d\n", ins_rms_info_record->gps_time_ms);
					}
					break;
				}
				default:
					break;
				}
				
				// Publish messages //
				//if (utc_record->flags.val.time_valid && utc_record->flags.val.offset_valid)
				//{
					nav_sat_fix_pub.publish(nav_sat_fix_msg);
					twist_pub.publish(twist_msg);
					imu_pub.publish(imu_msg);
					system_status_pub.publish(system_status_msg);
					filter_status_pub.publish(filter_status_msg);
				//}
			}
		}
	}

#else // HAVE_ROS
	while (1)
	{
		std::this_thread::sleep_for(std::chrono::milliseconds(10)); // 10ms=100Hz

		if ((bytes_received = PollComport(gsof_decoder_pointer(gsof_decoder), gsof_decoder_size(gsof_decoder))) > 0)
		{
			// increment the decode buffer length by the number of bytes received //
			gsof_decoder_increment(gsof_decoder, bytes_received);

			printf("Received bytes:%d\n", bytes_received);
			// decode all the packets in the buffer //
			while (0 == gsof_record_decode(gsof_decoder, gsof_record))
			{
				switch (gsof_record->record_type)
				{
				case record_type_utc:
				{
					if (decode_utc_record(utc_record, gsof_record) == 0)
					{
						int64_t ms_gps_to_utc = gps_time_to_utc(utc_record);
						printf("UTC offset:%d, gps_ms:%d\n", utc_record->utc_offset, utc_record->gps_time_ms);
					}
					break;
				}
				case record_type_ins_full_navigation:
				{
					if (decode_ins_full_navigation_record(ins_full_navigation_record, gsof_record) == 0)
					{
						namespace sc = std::chrono;
						static sc::duration<double> start_time = sc::system_clock::now().time_since_epoch();
						sc::duration<double> now_time = sc::system_clock::now().time_since_epoch();
						double fps = 0;
						double diff = (now_time - start_time).count();
						if (diff > 0)
						{
							fps = 1 / diff;
							start_time = now_time;
						}

						printf("INS Full fps:%.1fHz, gps_ms:%d\n", fps, ins_full_navigation_record->gps_time_ms);
					}
					break;
				}
				case record_type_ins_rms_info:
				{
					if (decode_ins_rms_info_record(ins_rms_info_record, gsof_record) == 0)
					{
						printf("INS RMS, gps_ms:%d\n", ins_rms_info_record->gps_time_ms);
					}
					break;
				}
				default:
					break;
				}
			}
		}
	}
jnm
#endif

	// realese resource
	free(gsof_decoder);
	free(gsof_record);
	free(utc_record);
	free(ins_full_navigation_record);
	free(ins_rms_info_record);

} // end of main()