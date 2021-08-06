#include "DataDisplay.h"

using namespace std;

namespace zone3 {

displaydata_msgs::DisplayData global_data;

DataDisplay::~DataDisplay(){};

DataDisplay::DataDisplay(ros::NodeHandle &node, ros::NodeHandle &priv_nh) {
    priv_nh.param<string>("kalman_topic", kalman_topic_, "");
    priv_nh.param<string>("state_highspeed_topic", state_highspeed_topic_, "");
    priv_nh.param<string>("state_lowspeed_topic", state_lowspeed_topic_, "");
    priv_nh.param<string>("container_topic", container_topic_, "");
    priv_nh.param<string>("EPB_topic", EPB_topic_, "");
    priv_nh.param<string>("Ft_topic", Ft_topic_, "");
    priv_nh.param<string>("tyre_topic", tyre_topic_, "");
    priv_nh.param<string>("waypoints_topic", waypoints_topic_, "");
    priv_nh.param<string>("control_fsm_topic", control_fsm_topic_, "");
    priv_nh.param<string>("control_highspeed_topic", control_highspeed_topic_,
                          "");
    priv_nh.param<string>("control_lowspeed_topic", control_lowspeed_topic_,
                          "");
    priv_nh.param<string>("pose_topic", pose_topic_, "");
    priv_nh.param<string>("display_topic", display_topic_, "");

    // sub
    sub_data_kalman_ =
        node.subscribe(kalman_topic_, 1, &DataDisplay::ProcKalman, this);
    sub_data_highspeed_ = node.subscribe(state_highspeed_topic_, 1,
                                         &DataDisplay::ProcStHighspeed, this);
    sub_data_lowspeed_ = node.subscribe(state_lowspeed_topic_, 1,
                                        &DataDisplay::ProcStLowspeed, this);
    sub_data_container_ =
        node.subscribe(container_topic_, 1, &DataDisplay::ProcContainer, this);
    sub_data_epb_ = node.subscribe(EPB_topic_, 1, &DataDisplay::ProcEPB, this);
    sub_data_fault_ =
        node.subscribe(Ft_topic_, 1, &DataDisplay::ProcFault, this);
    sub_data_tyre_ =
        node.subscribe(tyre_topic_, 1, &DataDisplay::ProcTyre, this);
    sub_data_waypoints_ =
        node.subscribe(waypoints_topic_, 1, &DataDisplay::ProcWaypoints, this);
    sub_data_fsm_ = node.subscribe(control_fsm_topic_, 1,
                                   &DataDisplay::ProcControlFsm, this);
    sub_data_control_highspeed_ = node.subscribe(
        control_highspeed_topic_, 1, &DataDisplay::ProcControlHighspeed, this);
    sub_data_control_lowspeed_ = node.subscribe(
        control_lowspeed_topic_, 1, &DataDisplay::ProcControlLowspeed, this);
    sub_data_pose_ =
        node.subscribe(pose_topic_, 1, &DataDisplay::ProcPose, this);

    // pub
    pub_data_display_ =
        node.advertise<displaydata_msgs::DisplayData>(display_topic_, 1);

    // Timer
    data_timer_ = node.createTimer(ros::Duration(0.05),
                                   &DataDisplay::TimerCallback, this);
}

void DataDisplay::ProcKalman(const kalman_msgs::Kinematics &msg) {
    global_data.speed = msg.k_vx;
}

void DataDisplay::ProcStHighspeed(const tli65_can_msgs::RxStHighspeed &msg) {
    global_data.current_steer = msg.steer_angle;
    global_data.current_throttle_percentage = msg.actual_throttle_pedal_pos;
    global_data.current_brake_pedal_pos = msg.brake_pedal_pos;
    global_data.current_retarder_torque_percentage =msg.retarder_torque_percentage;
    switch (msg.gear) {
        case -1:
        global_data.control_gear = "Return";
        break;
    case 0:
        global_data.control_gear = "Null";
        break;
    case 1:
        global_data.control_gear = "Drive-1";
        break;
    case 2:
        global_data.control_gear = "Drive-2";
        break;
    case 3:
        global_data.control_gear = "Drive-3";
        break;
    case 4:
        global_data.control_gear = "Drive-4";
        break;
    case 5:
        global_data.control_gear = "Drive-5";
        break;
    case 6:
        global_data.control_gear = "Drive-6";
        break;
    default:
        break;
    }
    
}

void DataDisplay::ProcStLowspeed(const tli65_can_msgs::RxStLowspeed &msg) {
    global_data.auto_mode = msg.auto_mode;
    global_data.left_light = msg.left_light;
    global_data.right_light = msg.right_light;
    global_data.near_light = msg.near_light;
    global_data.far_light = msg.far_light;
    global_data.air_beep = msg.air_beep;

    global_data.top_warning_light = msg.top_warning_light;
    global_data.front_fog_light = msg.front_fog_light;
    global_data.front_work_light = msg.front_work_light;
    global_data.side_light = msg.side_light;
    global_data.position_light = msg.position_light;
    global_data.back_left_light = msg.back_left_light;
    global_data.back_right_light = msg.back_right_light;
    global_data.back_position_light = msg.back_position_light;
    global_data.brake_light = msg.brake_light;
    global_data.reverse_light = msg.reverse_light;
    global_data.back_work_light = msg.back_work_light;
}

void DataDisplay::ProcContainer(const tli65_can_msgs::ContainerCalib &msg) {
    global_data.current_hangangle = msg.relative_container_angle;
}

void DataDisplay::ProcEPB(const tli65_can_msgs::RxEPB &msg) {
    global_data.current_EPB = msg.EPB_state;
}

void DataDisplay::ProcFault(const tli65_can_msgs::RxFt &msg) {
    // ft1
    global_data.engine_fault = msg.engine_fault;
    global_data.gear_fault = msg.gear_fault;
    global_data.EBS_fault = msg.EBS_fault;
    global_data.EPS_fault = msg.EPS_fault;
    global_data.EPB_fault = msg.EPB_fault;

    // ft2
    global_data.truck_fault_level = msg.truck_fault_level;
    global_data.engine_fault_code = msg.engine_fault_code;
    global_data.gear_fault_code = msg.gear_fault_code;

    // ft3
    global_data.EPS_fault_code = msg.EPS_fault_code;
    global_data.EBS_fault_code = msg.EBS_fault_code;
    global_data.electric_fault_code = msg.electric_fault_code;
}

void DataDisplay::ProcTyre(const tli65_can_msgs::RxTyre &msg) {
    // test front left pressure
    global_data.tyre_pressure_leftfront = msg.front_left_pressure;
    global_data.tyre_pressure_rightfront = msg.front_right_pressure;
    global_data.front_left_temperature = msg.front_left_temperature;
    global_data.front_right_temperature = msg.front_right_temperature;
}

void DataDisplay::ProcWaypoints(const planner_msgs::WayPoints &msg) {
    global_data.target_x = msg.points[0].x;
    global_data.target_y = msg.points[0].y;
}

void DataDisplay::ProcControlHighspeed(
    const control_msgs::HighspeedControl &msg) {
    global_data.control_throttle_percentage = msg.throttle_precentage;
    global_data.current_steer = msg.steer;
    global_data.control_xbr = msg.XBR;
}

void DataDisplay::ProcControlLowspeed(
    const control_msgs::LowspeedControl &msg) {
    global_data.control_EPB = msg.EPB;
    switch (msg.gear) {
    case 0x44:
        global_data.current_gear = "Drive";
        break;
    case 0x52:
        global_data.current_gear = "Return";
        break;
    case 0x4e:
        global_data.current_gear = "Null";
        break;
    default:
        break;
    }

    switch (msg.hang) {
    case 0x00:
        global_data.control_hang = "DOWN";
        break;
    case 0x01:
        global_data.control_hang = "UP";
        break;
    case 0x11:
        global_data.control_hang = "STAY";
        break;
    default:
        break;
    }
    global_data.left = msg.left;
    global_data.right = msg.right;
    global_data.near = msg.near;
    global_data.far = msg.far;
    global_data.top_warn = msg.top_warn;
    global_data.control_air_beep = msg.air_beep;
    global_data.front_fog = msg.front_fog;
    global_data.front_work = msg.front_work;
    global_data.side = msg.side;
    global_data.position = msg.position;
    global_data.emergency = msg.emergency;
    global_data.brake = msg.brake;
    global_data.reverse = msg.reverse;
    global_data.back_work = msg.back_work;

}

void DataDisplay::ProcControlFsm(const control_msgs::ControlFSM &msg) {
    global_data.control_fsm_state = msg.control_fsm;
}

void DataDisplay::ProcPose(const localization_msgs::Pose &msg) {
    global_data.rtk_state = msg.rtk_state;
    global_data.lat = msg.lat;
    global_data.lng = msg.lng;
    global_data.alt = msg.alt;
    global_data.xy_std_enu = msg.xy_std_enu;
    global_data.x_enu = msg.x_enu;
    global_data.y_enu = msg.y_enu;
    global_data.z_enu = msg.z_enu;
    global_data.xy_std_enu = msg.xy_std_enu;
    global_data.headingangle = msg.yaw;
}

void DataDisplay::TimerCallback(const ros::TimerEvent &event) {
    pub_data_display_.publish(global_data);
}

} // namespace zone3

int main(int argc, char **argv) {
    ros::init(argc, argv, "data_display");
    ros::NodeHandle node;
    ros::NodeHandle priv_nh("~");

    zone3::DataDisplay n(node, priv_nh);

    ros::spin();

    return 0;
}
