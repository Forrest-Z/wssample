#pragma once

#include <can_msgs/Frame.h>
#include <chrono>
#include <ros/ros.h>
#include <yaml-cpp/yaml.h>

#include "tli65_can_msgs/RxContainer.h"
#include "tli65_can_msgs/RxEPB.h"
#include "tli65_can_msgs/RxFt.h"
#include "tli65_can_msgs/RxFuel.h"
#include "tli65_can_msgs/RxHands.h"
#include "tli65_can_msgs/RxMaintain.h"
#include "tli65_can_msgs/RxSpeed.h"
#include "tli65_can_msgs/RxSt1.h"
#include "tli65_can_msgs/RxSt2.h"
#include "tli65_can_msgs/RxSt3.h"
#include "tli65_can_msgs/RxSt4.h"
#include "tli65_can_msgs/RxSt5.h"
#include "tli65_can_msgs/RxSt6.h"
#include "tli65_can_msgs/RxSt7.h"
#include "tli65_can_msgs/RxSt8.h"
#include "tli65_can_msgs/RxSt9.h"
#include "tli65_can_msgs/RxStHighspeed.h"
#include "tli65_can_msgs/RxStLowspeed.h"
#include "tli65_can_msgs/RxTyre.h"
#include "tli65_can_msgs/RxVIN.h"

namespace zone3 {
namespace chassis {

using namespace std;

#pragma pack(1)

typedef struct {
    char ASC[8];
} StruRxHands;

typedef struct {
    uint8_t auto_mode;
    uint8_t engine_active : 2;
    uint8_t hand_brake_active : 2;
    uint8_t EBS_active : 2;
    uint8_t retarder_active : 2;
    uint8_t gear_active : 2;
    uint8_t EPS_active : 2;
    uint8_t hang_active : 2;
    uint8_t : 2;
    uint8_t : 8;
    uint32_t : 32;
} StruRxSt1;

typedef struct {
    uint8_t engine_fault;
    uint8_t gear_fault;
    uint8_t EBS_fault;
    uint8_t EPS_fault;
    uint8_t EPB_fault;
    uint8_t : 8;
    uint8_t : 8;
    uint8_t : 8;
} StruRxFt1;

typedef struct {
    uint8_t truck_fault_level;
    uint8_t engine_fault_code;
    uint8_t : 8;
    uint8_t : 8;
    uint8_t : 8;
    uint8_t gear_fault_code;
    uint8_t : 8;
    uint8_t : 8;
} StruRxFt2;

typedef struct {
    uint8_t : 8;
    uint8_t EPS_fault_code;
    uint8_t EBS_fault_code;
    uint8_t : 8;
    uint8_t : 8;
    uint8_t : 8;
    uint8_t electric_fault_code;
    uint8_t : 8;
} StruRxFt3;

typedef struct {
    uint8_t throttle_pedal_pos;
    uint8_t engine_torque_percentage;
    uint16_t engine_speed;
    uint8_t actual_throttle_pedal_pos;
    uint8_t : 8;
    uint8_t : 8;
    uint8_t check_sum : 4;
    uint8_t msg_count : 4;
} StruRxSt2;

typedef struct {
    uint16_t front_axle_speed;
    uint8_t front_left_speed;
    uint8_t front_right_speed;
    uint8_t : 8;
    uint8_t : 8;
    uint8_t back_left_speed;
    uint8_t back_right_speed;
} StruRxSpeed;

typedef struct {
    uint8_t : 8;
    uint8_t brake_pedal_pos;
    uint32_t : 32;
    uint8_t : 8;
    uint8_t check_sum : 4;
    uint8_t msg_count : 4;
} StruRxSt3;

typedef struct {
    uint8_t retarder_torque_percentage;
    uint8_t : 8;
    uint32_t : 32;
    uint8_t : 8;
    uint8_t check_sum : 4;
    uint8_t msg_count : 4;
} StruRxSt4;
// for TLI65

typedef struct {
    uint16_t steer_angle;
    uint16_t electric_steer_torque;
    uint8_t steer_angle_rate;
    uint8_t : 8;
    uint8_t : 8;
    uint8_t check_sum : 4;
    uint8_t msg_count : 4;
} StruRxSt5;

// for TLi90
/*typedef struct {
    uint16_t steer_angle;
    uint16_t : 16;
    uint8_t : 8;
    uint8_t : 8;
    uint8_t : 8;
    uint8_t check_sum : 4;
    uint8_t msg_count : 4;
} StruRxSt5;*/

typedef struct {
    uint8_t gear;
    uint8_t max_forward_gear;
    uint16_t speed_from_gear;
    uint8_t : 8;
    uint8_t : 8;
    uint8_t : 8;
    uint8_t check_sum : 4;
    uint8_t msg_count : 4;
} StruRxSt6;

typedef struct {
    uint16_t roll;
    uint16_t pitch;
    uint16_t container_angle;
    uint8_t container_angle_state;
    uint8_t check_sum : 4;
    uint8_t msg_count : 4;
} StruRxContainer;

typedef struct {
    uint8_t front_left_pressure;
    uint8_t front_right_pressure;
    uint8_t middle_left_outer_pressure;
    uint8_t middle_left_inner_pressure;
    uint8_t middle_right_inner_pressure;
    uint8_t middle_right_outer_pressure;
    uint8_t : 8;
    uint8_t pressure_test_fault;
} StruRxTyre1;

typedef struct {
    uint8_t back_left_outer_pressure;
    uint8_t back_left_inner_pressure;
    uint8_t back_right_inner_pressure;
    uint8_t back_right_outer_pressure;
    uint8_t : 8;
    uint8_t : 8;
    uint8_t : 8;
    uint8_t pressure_test_fault;
} StruRxTyre2;

typedef struct {
    uint16_t front_left_temperature;
    uint16_t front_right_temperature;
    uint8_t : 8;
    uint8_t : 8;
    uint8_t front_temperature_test_fault;
    uint8_t middle_back_temperature_test_fault;
} StruRxTyre3;

typedef struct {
    uint16_t middle_left_outer_temperature;
    uint16_t middle_left_inner_temperature;
    uint16_t middle_right_inner_temperature;
    uint16_t middle_right_outer_temperature;
} StruRxTyre4;

typedef struct {
    uint16_t back_left_outer_temperature;
    uint16_t back_left_inner_temperature;
    uint16_t back_right_inner_temperature;
    uint16_t back_right_outer_temperature;
} StruRxTyre5;

typedef struct {
    uint8_t EPB_state;
    uint8_t EPB_low_pressure_switch;
    uint8_t EPB_mode;
    uint16_t : 16;
    uint16_t : 16;
    uint8_t check_sum : 4;
    uint8_t msg_count : 4;
} StruRxEPB;

typedef struct {
    char ASC[8];
} StruRxVIN;

typedef struct {
    uint16_t emergency_input_backup;
    uint16_t air_filter_warning;
    uint16_t steer_oil_filter_warning;
    uint16_t : 16;
} StruRxMaintain;

typedef struct {
    uint8_t left_light : 2;
    uint8_t right_light : 2;
    uint8_t near_light : 2;
    uint8_t far_light : 2;
    uint8_t top_warning_light : 2;
    uint8_t air_beep : 2;
    uint8_t front_fog_light : 2;
    uint8_t front_work_light : 2;
    uint8_t side_light : 2;
    uint8_t position_light : 2;
    uint8_t : 4;
    uint8_t sweeper_power : 2;
    uint8_t EBS_power : 2;
    uint8_t air_pressure_power : 2;
    uint8_t : 2;
    uint8_t hang_up_power : 2;
    uint8_t hang_down_power : 2;
    uint8_t hang_manual_power : 2;
    uint8_t : 2;
    uint8_t : 8;
    uint16_t : 16;
} StruRxSt7;

typedef struct {
    uint8_t air_pressure1;
    uint8_t air_pressure2;
    uint8_t oil_percentage;
    uint8_t : 8;
    uint32_t : 32;
} StruRxSt8;

typedef struct {
    uint8_t back_left_light : 2;
    uint8_t back_right_light : 2;
    uint8_t back_position_light : 2;
    uint8_t brake_light : 2;
    uint8_t reverse_light : 2;
    uint8_t back_work_light : 2;
    uint8_t : 4;
    uint8_t cooler1 : 2;
    uint8_t cooler2 : 2;
    uint8_t axle_diff_switch : 2;
    uint8_t : 2;
    uint8_t drier_power : 2;
    uint8_t inclinometer_power : 2;
    uint8_t cold_water_treasure_power : 2;
    uint8_t : 2;
    uint8_t exhaust_brake_switch : 2;
    uint8_t : 6;
    uint8_t : 8;
    uint16_t : 16;
} StruRxSt9;

typedef struct {
    uint16_t fuel_consumption;
    uint16_t ins_fuel_consumption;
    uint8_t : 8;
    uint8_t : 8;
    uint8_t : 8;
    uint8_t : 8;
} StruRxFuel;

#pragma pack()

class CanRxTli65 {
  public:
    CanRxTli65(ros::NodeHandle &node, ros::NodeHandle &priv_nh);
    ~CanRxTli65();

  private:
    string node_sub_topic_;
    string container_topic_;
    string EPB_topic_;
    string Ft_topic_;
    string hands_topic_;
    string maintain_topic_;
    string speed_topic_;
    string st_highspeed_topic_;
    string st_lowspeed_topic_;
    string tyre_topic_;
    string VIN_topic_;
    string fuel_topic_;

    tli65_can_msgs::RxStHighspeed state_highspeed_;
    tli65_can_msgs::RxStLowspeed state_lowspeed_;
    tli65_can_msgs::RxFt fault_;
    tli65_can_msgs::RxTyre tyre_;

    void RecvCan(const can_msgs::Frame::ConstPtr &msg);
    void ProcRxHands(const can_msgs::Frame::ConstPtr &msg);
    void ProcRxSt1(const can_msgs::Frame::ConstPtr &msg);
    void ProcRxFt1(const can_msgs::Frame::ConstPtr &msg);
    void ProcRxFt2(const can_msgs::Frame::ConstPtr &msg);
    void ProcRxFt3(const can_msgs::Frame::ConstPtr &msg);
    void ProcRxSt2(const can_msgs::Frame::ConstPtr &msg);
    void ProcRxSpeed(const can_msgs::Frame::ConstPtr &msg);
    void ProcRxSt3(const can_msgs::Frame::ConstPtr &msg);
    void ProcRxSt4(const can_msgs::Frame::ConstPtr &msg);
    void ProcRxSt5(const can_msgs::Frame::ConstPtr &msg);
    void ProcRxSt6(const can_msgs::Frame::ConstPtr &msg);
    void ProcRxContainer(const can_msgs::Frame::ConstPtr &msg);
    void ProcRxTyre1(const can_msgs::Frame::ConstPtr &msg);
    void ProcRxTyre2(const can_msgs::Frame::ConstPtr &msg);
    void ProcRxTyre3(const can_msgs::Frame::ConstPtr &msg);
    void ProcRxTyre4(const can_msgs::Frame::ConstPtr &msg);
    void ProcRxTyre5(const can_msgs::Frame::ConstPtr &msg);
    void ProcRxEPB(const can_msgs::Frame::ConstPtr &msg);
    void ProcRxVIN(const can_msgs::Frame::ConstPtr &msg);
    void ProcRxMaintain(const can_msgs::Frame::ConstPtr &msg);
    void ProcRxSt7(const can_msgs::Frame::ConstPtr &msg);
    void ProcRxSt8(const can_msgs::Frame::ConstPtr &msg);
    void ProcRxSt9(const can_msgs::Frame::ConstPtr &msg);
    void ProcRxFuel(const can_msgs::Frame::ConstPtr &msg);

    void HighspeedTimerCallback(const ros::TimerEvent &event);
    void LowspeedTimerCallback(const ros::TimerEvent &event);

    // sub
    ros::Subscriber sub_can_rx_;

    // pub
    ros::Publisher pub_rx_container_;
    ros::Publisher pub_rx_EPB_;
    ros::Publisher pub_rx_ft_;
    ros::Publisher pub_rx_hands_;
    ros::Publisher pub_rx_maintain_;
    ros::Publisher pub_rx_speed_;
    ros::Publisher pub_rx_st_highspeed_;
    ros::Publisher pub_rx_st_lowspeed_;
    ros::Publisher pub_rx_tyre_;
    ros::Publisher pub_rx_VIN_;
    ros::Publisher pub_rx_fuel_;

    ros::Timer highspeed_timer_;
    ros::Timer lowspeed_timer_;
};

} // namespace chassis
} // namespace zone3