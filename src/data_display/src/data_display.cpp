#include <ros/ros.h>
#include <string>

#include "control_msgs/ControlFSM.h"
#include "control_msgs/HighspeedControl.h"
#include "control_msgs/LowspeedControl.h"
#include "displaydata_msgs/DisplayData.h"
#include "kalman_msgs/Kinematics.h"
#include "localization_msgs/Pose.h"
#include "planner_msgs/PlannerFSM.h"
#include "planner_msgs/WayPoints.h"
#include "tli65_can_msgs/ContainerCalib.h"
#include "tli65_can_msgs/RxEPB.h"
#include "tli65_can_msgs/RxFt.h"
#include "tli65_can_msgs/RxFuel.h"
#include "tli65_can_msgs/RxStHighspeed.h"
#include "tli65_can_msgs/RxStLowspeed.h"
#include "tli65_can_msgs/RxTyre.h"

using namespace std;

namespace zone3 {

ros::Publisher pub_data_display;
displaydata_msgs::DisplayData global_data;

void ProcPose(const localization_msgs::Pose &msg) {
    global_data.rtk_state = msg.rtk_state;
    global_data.lat = msg.lat;
    global_data.lng = msg.lng;
    global_data.alt = msg.alt;
    global_data.x_enu = msg.x_enu;
    global_data.y_enu = msg.y_enu;
    global_data.z_enu = msg.z_enu;
    global_data.xy_std_enu = msg.xy_std_enu;
    global_data.heading_angle = msg.yaw * 180 / M_PI;
}

void ProcKalman(const kalman_msgs::Kinematics &msg) {
    global_data.vx = msg.k_vx;
}

void ProcStHighspeed(const tli65_can_msgs::RxStHighspeed &msg) {
    global_data.current_steer = msg.steer_angle;
    global_data.current_throttle_percentage = msg.throttle_pedal_pos;
    global_data.current_brake_pedal_pos = msg.brake_pedal_pos;
    global_data.current_retarder_torque_percentage =
        msg.retarder_torque_percentage;
    global_data.current_gear = msg.gear;
}

void ProcStLowspeed(const tli65_can_msgs::RxStLowspeed &msg) {
    global_data.auto_mode = msg.auto_mode;

    global_data.air_pressure1 = msg.air_pressure1;
    global_data.air_pressure2 = msg.air_pressure2;

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

void ProcContainer(const tli65_can_msgs::ContainerCalib &msg) {
    global_data.current_hang_angle = msg.relative_container_angle;
}

void ProcEPB(const tli65_can_msgs::RxEPB &msg) {
    global_data.current_EPB = msg.EPB_state;
}

void ProcFault(const tli65_can_msgs::RxFt &msg) {
    // ft1
    global_data.engine_fault = msg.engine_fault;
    global_data.gear_fault = msg.gear_fault;
    global_data.EBS_fault = msg.EBS_fault;
    global_data.EPS_fault = msg.EPS_fault;
    global_data.EPB_fault = msg.EPB_fault;
}

void ProcTyre(const tli65_can_msgs::RxTyre &msg) {
    global_data.tyre_pressure_leftfront = msg.front_left_pressure;
    global_data.tyre_pressure_rightfront = msg.front_right_pressure;
    global_data.front_left_temperature = msg.front_left_temperature;
    global_data.front_right_temperature = msg.front_right_temperature;
}

void ProcHMIWaypoints(const planner_msgs::WayPoints &msg) {
    global_data.pt_index.clear();
    global_data.wpt_x.clear();
    global_data.wpt_y.clear();
    int wpts_count = msg.points.size();
    if (wpts_count > 0) {
        global_data.lock_down_index = msg.points[0].lock_down_index;
        for (int i = 0; i < wpts_count; i++) {
            global_data.pt_index.push_back(msg.points[i].pt_index);
            global_data.wpt_x.push_back(msg.points[i].x);
            global_data.wpt_y.push_back(msg.points[i].y);
        }
    }
}

void ProcPlannerFsm(const planner_msgs::PlannerFSM &msg) {
    global_data.planner_fsm_state = msg.planner_fsm_string;
}

void ProcControlFsm(const control_msgs::ControlFSM &msg) {
    global_data.control_fsm_state = msg.control_fsm_string;
}

void ProcControlHighspeed(const control_msgs::HighspeedControl &msg) {
    global_data.control_throttle_percentage = msg.throttle_precentage;
    global_data.control_steer = msg.steer;
    global_data.control_xbr = msg.XBR;
}

void ProcControlLowspeed(const control_msgs::LowspeedControl &msg) {
    global_data.control_EPB = msg.EPB;
    switch (msg.gear) {
    case 0x44:
        global_data.control_gear = "D";
        break;
    case 0x52:
        global_data.control_gear = "R";
        break;
    case 0x4e:
        global_data.control_gear = "N";
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
}

void TimerCallback(const ros::TimerEvent &event) {
    pub_data_display.publish(global_data);
}

} // namespace zone3

int main(int argc, char **argv) {
    ros::init(argc, argv, "data_display_node");
    ros::NodeHandle node;
    ros::NodeHandle priv_nh("~");

    string pose_topic;
    string kalman_topic;
    string state_highspeed_topic;
    string state_lowspeed_topic;
    string container_topic;
    string EPB_topic;
    string Ft_topic;
    string tyre_topic;
    string fuel_topic_;
    string hmi_waypoints_topic;
    string planner_fsm_topic;
    string control_fsm_topic;
    string control_highspeed_topic;
    string control_lowspeed_topic;
    string display_topic;

    // get params
    priv_nh.param<string>("pose_topic", pose_topic, "");
    priv_nh.param<string>("kalman_topic", kalman_topic, "");
    priv_nh.param<string>("state_highspeed_topic", state_highspeed_topic, "");
    priv_nh.param<string>("state_lowspeed_topic", state_lowspeed_topic, "");
    priv_nh.param<string>("container_topic", container_topic, "");
    priv_nh.param<string>("EPB_topic", EPB_topic, "");
    priv_nh.param<string>("Ft_topic", Ft_topic, "");
    priv_nh.param<string>("tyre_topic", tyre_topic, "");
    priv_nh.param<string>("hmi_waypoints_topic", hmi_waypoints_topic, "");
    priv_nh.param<string>("planner_fsm_topic", planner_fsm_topic, "");
    priv_nh.param<string>("control_fsm_topic", control_fsm_topic, "");
    priv_nh.param<string>("control_highspeed_topic", control_highspeed_topic,
                          "");
    priv_nh.param<string>("control_lowspeed_topic", control_lowspeed_topic, "");
    priv_nh.param<string>("display_topic", display_topic, "");

    // sub
    ros::Subscriber sub_pose = node.subscribe(pose_topic, 1, &zone3::ProcPose);
    ros::Subscriber sub_kalman =
        node.subscribe(kalman_topic, 1, &zone3::ProcKalman);
    ros::Subscriber sub_sthighspeed =
        node.subscribe(state_highspeed_topic, 1, &zone3::ProcStHighspeed);
    ros::Subscriber sub_stlowspeed =
        node.subscribe(state_lowspeed_topic, 1, &zone3::ProcStLowspeed);
    ros::Subscriber sub_container =
        node.subscribe(container_topic, 1, &zone3::ProcContainer);
    ros::Subscriber sub_epb = node.subscribe(EPB_topic, 1, &zone3::ProcEPB);
    ros::Subscriber sub_fault_ = node.subscribe(Ft_topic, 1, &zone3::ProcFault);
    ros::Subscriber sub_tyre = node.subscribe(tyre_topic, 1, &zone3::ProcTyre);
    ros::Subscriber sub_data_fuel =
        node.subscribe(fuel_topic, 1, &zone3::ProcFuel);
    ros::Subscriber sub_waypoints =
        node.subscribe(hmi_waypoints_topic, 1, &zone3::ProcHMIWaypoints);
    ros::Subscriber sub_planner_fsm =
        node.subscribe(planner_fsm_topic, 1, &zone3::ProcPlannerFsm);
    ros::Subscriber sub_control_fsm =
        node.subscribe(control_fsm_topic, 1, &zone3::ProcControlFsm);
    ros::Subscriber sub_control_highspeed = node.subscribe(
        control_highspeed_topic, 1, &zone3::ProcControlHighspeed);
    ros::Subscriber sub_control_lowspeed =
        node.subscribe(control_lowspeed_topic, 1, &zone3::ProcControlLowspeed);

    // pub
    zone3::pub_data_display =
        node.advertise<displaydata_msgs::DisplayData>(display_topic, 1);

    // Timer
    ros::Timer data_timer =
        node.createTimer(ros::Duration(0.2), &zone3::TimerCallback);

    ros::spin();

    return 0;
}
