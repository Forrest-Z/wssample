#include "CanRxTli65.h"

namespace zone3 {
namespace chassis {

using namespace std;

CanRxTli65::~CanRxTli65() {}

CanRxTli65::CanRxTli65(ros::NodeHandle &node, ros::NodeHandle &priv_nh) {
    // get topic names
    priv_nh.param<string>("node_sub_topic", node_sub_topic_, "");
    priv_nh.param<string>("container_topic", container_topic_, "");
    priv_nh.param<string>("EPB_topic", EPB_topic_, "");
    priv_nh.param<string>("Ft_topic", Ft_topic_, "");
    priv_nh.param<string>("hands_topic", hands_topic_, "");
    priv_nh.param<string>("maintain_topic", maintain_topic_, "");
    priv_nh.param<string>("speed_topic", speed_topic_, "");
    priv_nh.param<string>("st_highspeed_topic", st_highspeed_topic_, "");
    priv_nh.param<string>("st_lowspeed_topic", st_lowspeed_topic_, "");
    priv_nh.param<string>("tyre_topic", tyre_topic_, "");
    priv_nh.param<string>("VIN_topic", VIN_topic_, "");
    priv_nh.param<string>("fuel_topic", fuel_topic_, "");

    // sub
    sub_can_rx_ =
        node.subscribe(node_sub_topic_, 1, &CanRxTli65::RecvCan, this);

    // pub
    pub_rx_container_ =
        node.advertise<tli65_can_msgs::RxContainer>(container_topic_, 10);
    pub_rx_EPB_ = node.advertise<tli65_can_msgs::RxEPB>(EPB_topic_, 10);
    pub_rx_ft_ = node.advertise<tli65_can_msgs::RxFt>(Ft_topic_, 10);
    pub_rx_hands_ = node.advertise<tli65_can_msgs::RxHands>(hands_topic_, 10);
    pub_rx_maintain_ =
        node.advertise<tli65_can_msgs::RxMaintain>(maintain_topic_, 10);
    pub_rx_speed_ = node.advertise<tli65_can_msgs::RxSpeed>(speed_topic_, 10);
    pub_rx_st_highspeed_ =
        node.advertise<tli65_can_msgs::RxStHighspeed>(st_highspeed_topic_, 10);
    pub_rx_st_lowspeed_ =
        node.advertise<tli65_can_msgs::RxStLowspeed>(st_lowspeed_topic_, 10);
    pub_rx_tyre_ = node.advertise<tli65_can_msgs::RxTyre>(tyre_topic_, 10);
    pub_rx_VIN_ = node.advertise<tli65_can_msgs::RxVIN>(VIN_topic_, 10);
    pub_rx_fuel_ = node.advertise<tli65_can_msgs::RxFuel>(fuel_topic_, 10);

    // timer
    highspeed_timer_ = node.createTimer(
        ros::Duration(0.02), &CanRxTli65::HighspeedTimerCallback, this);
    lowspeed_timer_ = node.createTimer(
        ros::Duration(0.1), &CanRxTli65::LowspeedTimerCallback, this);
}

void CanRxTli65::RecvCan(const can_msgs::Frame::ConstPtr &msg) {
    switch (msg->id) {
    case static_cast<uint>(0x1830FF21):
        ProcRxHands(msg);
        break;
        // hands
    case static_cast<uint>(0x1830B021):
        ProcRxSt1(msg);
        break;
        //
    case static_cast<uint>(0x1830E021):
        ProcRxFt1(msg);
        break;
        //
    case static_cast<uint>(0x18FECA21):
        ProcRxFt2(msg);
        break;
        //
    case static_cast<uint>(0x18FECB21):
        ProcRxFt3(msg);
        break;
        //
    case static_cast<uint>(0xC300021):
        ProcRxSt2(msg);
        break;
        //
    case static_cast<uint>(0xC301121):
        ProcRxSpeed(msg);
        break;
        //
    case static_cast<uint>(0xC301021):
        ProcRxSt3(msg);
        break;
        //
    case static_cast<uint>(0xC301221):
        ProcRxSt4(msg);
        break;
        //
    case static_cast<uint>(0xC302021):
        // for TLi90; 0xC302021 for Tli65
        ProcRxSt5(msg);
        break;
        //
    case static_cast<uint>(0xC303021):
        ProcRxSt6(msg);
        break;
        //
    case static_cast<uint>(0xC304021):
        ProcRxContainer(msg);
        break;
        //
    case static_cast<uint>(0x1830FC21):
        ProcRxTyre1(msg);
        break;
        //
    case static_cast<uint>(0x1830FB21):
        ProcRxTyre2(msg);
        break;
        //
    case static_cast<uint>(0x1830FA21):
        ProcRxTyre3(msg);
        break;
        //
    case static_cast<uint>(0x1830F921):
        ProcRxTyre4(msg);
        break;
        //
    case static_cast<uint>(0x1830F821):
        ProcRxTyre5(msg);
        break;
        //
    case static_cast<uint>(0xC301421):
        ProcRxEPB(msg);
        break;
        //
    case static_cast<uint>(0x1830F021):
        ProcRxVIN(msg);
        break;
        //
    case static_cast<uint>(0x1830A321):
        ProcRxMaintain(msg);
        break;
        //
    case static_cast<uint>(0x1830A021):
        ProcRxSt7(msg);
        break;
        //
    case static_cast<uint>(0x1830A221):
        ProcRxSt8(msg);
        break;
        //
    case static_cast<uint>(0x1830A121):
        ProcRxSt9(msg);
        break;
        //
    case static_cast<uint>(0x1830FE21):
        ProcRxFuel(msg);
        break;
        //
    default:
        // other can mags
        break;
    }
}

void CanRxTli65::ProcRxHands(const can_msgs::Frame::ConstPtr &msg) {
    const StruRxHands *ptr = (const StruRxHands *)msg->data.elems;

    tli65_can_msgs::RxHands out;
    out.header.frame_id = "chassis";
    out.header.stamp = msg->header.stamp;

    out.shake_hands = static_cast<string>(ptr->ASC);

    pub_rx_hands_.publish(out);
}

void CanRxTli65::ProcRxSt1(const can_msgs::Frame::ConstPtr &msg) {
    const StruRxSt1 *ptr = (const StruRxSt1 *)msg->data.elems;

    state_lowspeed_.header.frame_id = "chassis";
    state_lowspeed_.header.stamp = msg->header.stamp;

    state_lowspeed_.auto_mode = static_cast<uint>(ptr->auto_mode);
    state_lowspeed_.engine_active = static_cast<uint>(ptr->engine_active);
    state_lowspeed_.hand_brake_active =
        static_cast<uint>(ptr->hand_brake_active);
    state_lowspeed_.EBS_active = static_cast<uint>(ptr->EBS_active);
    state_lowspeed_.retarder_active = static_cast<uint>(ptr->retarder_active);
    state_highspeed_.gear_active = static_cast<uint>(ptr->gear_active);
    state_lowspeed_.EPS_active = static_cast<uint>(ptr->EPS_active);
    state_lowspeed_.hang_active = static_cast<uint>(ptr->hang_active);
}

void CanRxTli65::ProcRxFt1(const can_msgs::Frame::ConstPtr &msg) {
    const StruRxFt1 *ptr = (const StruRxFt1 *)msg->data.elems;

    fault_.header.frame_id = "chassis";
    fault_.header.stamp = msg->header.stamp;

    fault_.engine_fault = static_cast<uint>(ptr->engine_fault);
    fault_.gear_fault = static_cast<uint>(ptr->gear_fault);
    fault_.EBS_fault = static_cast<uint>(ptr->EBS_fault);
    fault_.EPS_fault = static_cast<uint>(ptr->EPS_fault);
    fault_.EPB_fault = static_cast<uint>(ptr->EPB_fault);
}

void CanRxTli65::ProcRxFt2(const can_msgs::Frame::ConstPtr &msg) {
    const StruRxFt2 *ptr = (const StruRxFt2 *)msg->data.elems;

    fault_.header.frame_id = "chassis";
    fault_.header.stamp = msg->header.stamp;

    fault_.truck_fault_level = static_cast<uint>(ptr->truck_fault_level);
    fault_.engine_fault_code = static_cast<uint>(ptr->engine_fault_code);
    fault_.gear_fault_code = static_cast<uint>(ptr->gear_fault_code);
}

void CanRxTli65::ProcRxFt3(const can_msgs::Frame::ConstPtr &msg) {
    const StruRxFt3 *ptr = (const StruRxFt3 *)msg->data.elems;

    fault_.header.frame_id = "chassis";
    fault_.header.stamp = msg->header.stamp;

    fault_.EPS_fault_code = static_cast<uint>(ptr->EPS_fault_code);
    fault_.EPS_fault_code = static_cast<uint>(ptr->EPS_fault_code);
    fault_.electric_fault_code = static_cast<uint>(ptr->electric_fault_code);
}

void CanRxTli65::ProcRxSt2(const can_msgs::Frame::ConstPtr &msg) {
    const StruRxSt2 *ptr = (const StruRxSt2 *)msg->data.elems;

    state_highspeed_.header.frame_id = "chassis";
    state_highspeed_.header.stamp = msg->header.stamp;

    state_highspeed_.throttle_pedal_pos =
        static_cast<int>(ptr->throttle_pedal_pos * 0.4);
    state_highspeed_.engine_torque_percentage =
        static_cast<int>(ptr->engine_torque_percentage - 125.0);
    state_highspeed_.engine_speed = static_cast<int>(ptr->engine_speed * 0.125);
    state_highspeed_.actual_throttle_pedal_pos =
        static_cast<int>(ptr->actual_throttle_pedal_pos * 0.4);
}

void CanRxTli65::ProcRxSpeed(const can_msgs::Frame::ConstPtr &msg) {
    const StruRxSpeed *ptr = (const StruRxSpeed *)msg->data.elems;

    tli65_can_msgs::RxSpeed out;
    out.header.frame_id = "chassis";
    out.header.stamp = msg->header.stamp;

    //  m/s
    out.front_axle_speed =
        static_cast<double>(ptr->front_axle_speed * 1.0 / 256) / 3.6;
    out.front_left_speed =
        static_cast<double>(ptr->front_left_speed * 1.0 / 16 - 7.8125) / 3.6;
    out.front_right_speed =
        static_cast<double>(ptr->front_right_speed * 1.0 / 16 - 7.8125) / 3.6;
    out.back_left_speed =
        static_cast<double>(ptr->back_left_speed * 1.0 / 16 - 7.8125) / 3.6;
    out.back_right_speed =
        static_cast<double>(ptr->back_right_speed * 1.0 / 16 - 7.8125) / 3.6;

    pub_rx_speed_.publish(out);
}

void CanRxTli65::ProcRxSt3(const can_msgs::Frame::ConstPtr &msg) {
    const StruRxSt3 *ptr = (const StruRxSt3 *)msg->data.elems;

    state_highspeed_.header.frame_id = "chassis";
    state_highspeed_.header.stamp = msg->header.stamp;

    state_highspeed_.brake_pedal_pos =
        static_cast<int>(ptr->brake_pedal_pos * 0.4);
}

void CanRxTli65::ProcRxSt4(const can_msgs::Frame::ConstPtr &msg) {
    const StruRxSt4 *ptr = (const StruRxSt4 *)msg->data.elems;

    state_highspeed_.header.frame_id = "chassis";
    state_highspeed_.header.stamp = msg->header.stamp;

    state_highspeed_.retarder_torque_percentage =
        static_cast<int>(ptr->retarder_torque_percentage - 125);
}

void CanRxTli65::ProcRxSt5(const can_msgs::Frame::ConstPtr &msg) {
    const StruRxSt5 *ptr = (const StruRxSt5 *)msg->data.elems;

    state_highspeed_.header.frame_id = "chassis";
    state_highspeed_.header.stamp = msg->header.stamp;
    // for tli65
    state_highspeed_.steer_angle =
        static_cast<int>(ptr->steer_angle * 0.1 - 1575);
    state_highspeed_.electric_steer_torque =
        static_cast<int>(ptr->electric_steer_torque * 0.000152 - 5);
    state_highspeed_.steer_angle_rate =
        static_cast<int>(ptr->steer_angle_rate * 10);

    // for tli90
    // state_highspeed_.steer_angle =
    //    static_cast<double>(ptr->steer_angle * 0.01 - 50);
}

void CanRxTli65::ProcRxSt6(const can_msgs::Frame::ConstPtr &msg) {
    const StruRxSt6 *ptr = (const StruRxSt6 *)msg->data.elems;

    state_highspeed_.header.frame_id = "chassis";
    state_highspeed_.header.stamp = msg->header.stamp;
    state_lowspeed_.header.frame_id = "chassis";
    state_lowspeed_.header.stamp = msg->header.stamp;

    state_highspeed_.gear = static_cast<int8_t>(ptr->gear - 125);
    state_highspeed_.max_forward_gear =
        static_cast<int8_t>(ptr->max_forward_gear - 125);
    state_highspeed_.speed_from_gear =
        static_cast<double>(ptr->speed_from_gear * 1.0 / 256);
}

void CanRxTli65::ProcRxContainer(const can_msgs::Frame::ConstPtr &msg) {
    const StruRxContainer *ptr = (const StruRxContainer *)msg->data.elems;

    tli65_can_msgs::RxContainer out;
    out.header.frame_id = "chassis";
    out.header.stamp = msg->header.stamp;

    out.roll = static_cast<int8_t>(ptr->roll * 1.0 / 128 - 200);
    out.pitch = static_cast<int8_t>(ptr->pitch * 1.0 / 128 - 200);
    out.container_angle =
        static_cast<uint8_t>(ptr->container_angle * 1.0 / 128 - 200);
    out.container_angle_state =
        static_cast<uint8_t>(ptr->container_angle_state);

    pub_rx_container_.publish(out);
}

void CanRxTli65::ProcRxTyre1(const can_msgs::Frame::ConstPtr &msg) {
    const StruRxTyre1 *ptr = (const StruRxTyre1 *)msg->data.elems;

    tyre_.header.frame_id = "chassis";
    tyre_.header.stamp = msg->header.stamp;

    tyre_.front_left_pressure =
        static_cast<uint16_t>(ptr->front_left_pressure * 8);
    tyre_.front_right_pressure =
        static_cast<uint16_t>(ptr->front_right_pressure * 8);
    tyre_.middle_left_outer_pressure =
        static_cast<uint16_t>(ptr->middle_left_outer_pressure * 8);
    tyre_.middle_left_inner_pressure =
        static_cast<uint16_t>(ptr->middle_left_inner_pressure * 8);
    tyre_.middle_right_inner_pressure =
        static_cast<uint16_t>(ptr->middle_right_inner_pressure * 8);
    tyre_.middle_right_outer_pressure =
        static_cast<uint16_t>(ptr->middle_right_outer_pressure * 8);
    tyre_.pressure_test_fault |= static_cast<uint8_t>(ptr->pressure_test_fault);
}

void CanRxTli65::ProcRxTyre2(const can_msgs::Frame::ConstPtr &msg) {
    const StruRxTyre2 *ptr = (const StruRxTyre2 *)msg->data.elems;

    tyre_.header.frame_id = "chassis";
    tyre_.header.stamp = msg->header.stamp;

    tyre_.back_left_outer_pressure =
        static_cast<uint16_t>(ptr->back_left_outer_pressure * 8);
    tyre_.back_left_inner_pressure =
        static_cast<uint16_t>(ptr->back_left_inner_pressure * 8);
    tyre_.back_right_inner_pressure =
        static_cast<uint16_t>(ptr->back_right_inner_pressure * 8);
    tyre_.back_right_outer_pressure =
        static_cast<uint16_t>(ptr->back_right_outer_pressure * 8);
    tyre_.pressure_test_fault |= static_cast<uint8_t>(ptr->pressure_test_fault);
}

void CanRxTli65::ProcRxTyre3(const can_msgs::Frame::ConstPtr &msg) {
    const StruRxTyre3 *ptr = (const StruRxTyre3 *)msg->data.elems;

    tyre_.header.frame_id = "chassis";
    tyre_.header.stamp = msg->header.stamp;

    tyre_.front_left_temperature =
        static_cast<double>(ptr->front_left_temperature * 0.03125 - 40);
    tyre_.front_right_temperature =
        static_cast<double>(ptr->front_right_temperature * 0.03125 - 40);
    tyre_.front_temperature_test_fault |=
        static_cast<uint8_t>(ptr->front_temperature_test_fault);
    tyre_.middle_back_temperature_test_fault |=
        static_cast<uint8_t>(ptr->middle_back_temperature_test_fault);
}

void CanRxTli65::ProcRxTyre4(const can_msgs::Frame::ConstPtr &msg) {
    const StruRxTyre4 *ptr = (const StruRxTyre4 *)msg->data.elems;

    tyre_.header.frame_id = "chassis";
    tyre_.header.stamp = msg->header.stamp;

    tyre_.middle_left_outer_temperature =
        static_cast<double>(ptr->middle_left_outer_temperature * 0.03125 - 40);
    tyre_.middle_left_inner_temperature =
        static_cast<double>(ptr->middle_left_inner_temperature * 0.03125 - 40);
    tyre_.middle_right_inner_temperature =
        static_cast<double>(ptr->middle_right_inner_temperature * 0.03125 - 40);
    tyre_.middle_right_outer_temperature =
        static_cast<double>(ptr->middle_right_outer_temperature * 0.03125 - 40);
}

void CanRxTli65::ProcRxTyre5(const can_msgs::Frame::ConstPtr &msg) {
    const StruRxTyre5 *ptr = (const StruRxTyre5 *)msg->data.elems;

    tyre_.header.frame_id = "chassis";
    tyre_.header.stamp = msg->header.stamp;

    tyre_.back_left_outer_temperature =
        static_cast<double>(ptr->back_left_outer_temperature * 0.03125 - 40);
    tyre_.back_left_inner_temperature =
        static_cast<double>(ptr->back_left_inner_temperature * 0.03125 - 40);
    tyre_.back_right_inner_temperature =
        static_cast<double>(ptr->back_right_inner_temperature * 0.03125 - 40);
    tyre_.back_right_outer_temperature =
        static_cast<double>(ptr->back_right_outer_temperature * 0.03125 - 40);
}

void CanRxTli65::ProcRxEPB(const can_msgs::Frame::ConstPtr &msg) {
    const StruRxEPB *ptr = (const StruRxEPB *)msg->data.elems;

    tli65_can_msgs::RxEPB out;
    out.header.frame_id = "chassis";
    out.header.stamp = msg->header.stamp;

    out.EPB_state = static_cast<uint8_t>(ptr->EPB_state);
    out.EPB_low_pressure_switch =
        static_cast<uint8_t>(ptr->EPB_low_pressure_switch);
    out.EPB_mode = static_cast<uint8_t>(ptr->EPB_mode);

    pub_rx_EPB_.publish(out);
}

void CanRxTli65::ProcRxVIN(const can_msgs::Frame::ConstPtr &msg) {
    const StruRxVIN *ptr = (const StruRxVIN *)msg->data.elems;

    tli65_can_msgs::RxVIN out;
    out.header.frame_id = "chassis";
    out.header.stamp = msg->header.stamp;

    out.vin_code = static_cast<string>(ptr->ASC);

    pub_rx_VIN_.publish(out);
}

void CanRxTli65::ProcRxMaintain(const can_msgs::Frame::ConstPtr &msg) {
    const StruRxMaintain *ptr = (const StruRxMaintain *)msg->data.elems;

    tli65_can_msgs::RxMaintain out;
    out.header.frame_id = "chassis";
    out.header.stamp = msg->header.stamp;

    out.emergency_input_backup =
        static_cast<uint8_t>(ptr->emergency_input_backup);
    out.air_filter_warning = static_cast<uint8_t>(ptr->air_filter_warning);
    out.steer_oil_filter_warning =
        static_cast<uint8_t>(ptr->steer_oil_filter_warning);

    pub_rx_maintain_.publish(out);
}

void CanRxTli65::ProcRxSt7(const can_msgs::Frame::ConstPtr &msg) {
    const StruRxSt7 *ptr = (const StruRxSt7 *)msg->data.elems;

    state_lowspeed_.header.frame_id = "chassis";
    state_lowspeed_.header.stamp = msg->header.stamp;

    state_lowspeed_.left_light = static_cast<uint8_t>(ptr->left_light);
    state_lowspeed_.right_light = static_cast<uint8_t>(ptr->right_light);
    state_lowspeed_.near_light = static_cast<uint8_t>(ptr->near_light);
    state_lowspeed_.far_light = static_cast<uint8_t>(ptr->far_light);
    state_lowspeed_.top_warning_light =
        static_cast<uint8_t>(ptr->top_warning_light);
    state_lowspeed_.air_beep = static_cast<uint8_t>(ptr->air_beep);
    state_lowspeed_.front_fog_light =
        static_cast<uint8_t>(ptr->front_fog_light);
    state_lowspeed_.front_work_light =
        static_cast<uint8_t>(ptr->front_work_light);
    state_lowspeed_.side_light = static_cast<uint8_t>(ptr->side_light);
    state_lowspeed_.position_light = static_cast<uint8_t>(ptr->position_light);
    state_lowspeed_.sweeper_power = static_cast<uint8_t>(ptr->sweeper_power);
    state_lowspeed_.EBS_power = static_cast<uint8_t>(ptr->EBS_power);
    state_lowspeed_.air_pressure_power =
        static_cast<uint8_t>(ptr->air_pressure_power);
    state_lowspeed_.hang_up_power = static_cast<uint8_t>(ptr->hang_up_power);
    state_lowspeed_.hang_down_power =
        static_cast<uint8_t>(ptr->hang_down_power);
    state_lowspeed_.hang_manual_power =
        static_cast<uint8_t>(ptr->hang_manual_power);
}

void CanRxTli65::ProcRxSt8(const can_msgs::Frame::ConstPtr &msg) {
    const StruRxSt8 *ptr = (const StruRxSt8 *)msg->data.elems;

    state_lowspeed_.header.frame_id = "chassis";
    state_lowspeed_.header.stamp = msg->header.stamp;

    state_lowspeed_.air_pressure1 = static_cast<double>(ptr->air_pressure1 * 4);
    state_lowspeed_.air_pressure2 = static_cast<double>(ptr->air_pressure2 * 4);
    state_lowspeed_.oil_percentage =
        static_cast<double>(ptr->oil_percentage * 0.4);
}

void CanRxTli65::ProcRxSt9(const can_msgs::Frame::ConstPtr &msg) {
    const StruRxSt9 *ptr = (const StruRxSt9 *)msg->data.elems;

    state_lowspeed_.header.frame_id = "chassis";
    state_lowspeed_.header.stamp = msg->header.stamp;

    state_lowspeed_.back_left_light =
        static_cast<uint8_t>(ptr->back_left_light);
    state_lowspeed_.back_right_light =
        static_cast<uint8_t>(ptr->back_right_light);
    state_lowspeed_.back_position_light =
        static_cast<uint8_t>(ptr->back_position_light);
    state_lowspeed_.brake_light = static_cast<uint8_t>(ptr->brake_light);
    state_lowspeed_.reverse_light = static_cast<uint8_t>(ptr->reverse_light);
    state_lowspeed_.back_work_light =
        static_cast<uint8_t>(ptr->back_work_light);
    state_lowspeed_.cooler1 = static_cast<uint8_t>(ptr->cooler1);
    state_lowspeed_.cooler2 = static_cast<uint8_t>(ptr->cooler2);
    state_lowspeed_.axle_diff_switch =
        static_cast<uint8_t>(ptr->axle_diff_switch);
    state_lowspeed_.drier_power = static_cast<uint8_t>(ptr->drier_power);
    state_lowspeed_.inclinometer_power =
        static_cast<uint8_t>(ptr->inclinometer_power);
    state_lowspeed_.cold_water_treasure_power =
        static_cast<uint8_t>(ptr->cold_water_treasure_power);
    state_lowspeed_.exhaust_brake_switch =
        static_cast<uint8_t>(ptr->exhaust_brake_switch);
}

void CanRxTli65::ProcRxFuel(const can_msgs::Frame::ConstPtr &msg) {
    const StruRxFuel *ptr = (const StruRxFuel *)msg->data.elems;

    tli65_can_msgs::RxFuel out;
    out.header.frame_id = "chassis";
    out.header.stamp = msg->header.stamp;

    out.fuel_consumption = static_cast<uint16_t>(ptr->fuel_consumption * 0.05);
    out.ins_fuel_consumption =
        static_cast<uint16_t>(ptr->ins_fuel_consumption * 0.001953125);

    pub_rx_fuel_.publish(out);
}

void CanRxTli65::HighspeedTimerCallback(const ros::TimerEvent &event) {
    pub_rx_st_highspeed_.publish(state_highspeed_);
}

void CanRxTli65::LowspeedTimerCallback(const ros::TimerEvent &event) {
    pub_rx_st_lowspeed_.publish(state_lowspeed_);
    pub_rx_tyre_.publish(tyre_);
    pub_rx_ft_.publish(fault_);
}

} // namespace chassis
} // namespace zone3