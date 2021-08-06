#include <ros/ros.h>

#include "ControlStruct.h"
#include "LatController1.h"
#include "LngController1.h"
#include "PlannerStruct.h"
#include "control_msgs/ControlFSM.h"
#include "control_msgs/HighspeedControl.h"
#include "control_msgs/LowspeedControl.h"
#include "kalman_msgs/Kinematics.h"
#include "planner_msgs/WayPoints.h"
#include "teledrive_msgs/Tli65Teledrive.h"

using namespace std;

namespace zone3 {
namespace control {

TruckState global_st;
ros::Publisher pub_highspeed;
ros::Publisher pub_lowspeed;
control_msgs::HighspeedControl highspeed_msg;
control_msgs::LowspeedControl lowspeed_msg;
double lat_value;
double *lng_value;
LatController1 *p_lat;
LngController1 *p_lng;
int control_fsm_state;
int last_control_fsm_state;
bool flag_follow_tracks_plannerON;
int gear;

void ProcControlFSM(const control_msgs::ControlFSM &msg) {
    control_fsm_state = msg.control_fsm;
    last_control_fsm_state = msg.last_control_fsm;
    flag_follow_tracks_plannerON = msg.flag_follow_tracks_plannerON;
    gear = msg.gear;

    // control strategy
    switch (control_fsm_state) {
    // state manual
    case FSM_STATEMANUAL:
        // pub steer
        highspeed_msg.steer_active = 0;

        // pub throttle
        highspeed_msg.ignition = 0x11;
        highspeed_msg.throttle_active = 0;

        // pub xbr
        highspeed_msg.XBR_active = 0;

        // pub gear
        lowspeed_msg.gear_active = 0;

        // pub epb
        lowspeed_msg.EPB_active = 0;

        // pub hang
        lowspeed_msg.hang_active = 0;

        break;

    // state auto park brake
    case FSM_STATEAUTOPARKBRAKE:
        // pub steer
        highspeed_msg.steer_active = 1;
        if (last_control_fsm_state == FSM_STATEMANUAL) {
            highspeed_msg.steer = 0;
        } else {
            highspeed_msg.steer = lat_value;
        }

        // pub throttle
        highspeed_msg.ignition = 0x11;
        highspeed_msg.throttle_active = 0;

        // pub xbr
        highspeed_msg.XBR_active = 1;
        highspeed_msg.XBR = -3;

        // pub epb
        lowspeed_msg.EPB_active = 1;
        lowspeed_msg.EPB = 1;

        // pub hang
        // only stop can hang container
        if (global_st.kalman_speed < 0.2) {
            lowspeed_msg.hang_active = 1;
            lowspeed_msg.hang = 0;
        } else {
            lowspeed_msg.hang_active = 0;
        }

        break;

    // state auto park ready
    case FSM_STATEPARKREADY:
        // pub steer
        highspeed_msg.steer_active = 0;

        // pub throttle
        highspeed_msg.ignition = 0x11;
        highspeed_msg.throttle_active = 0;

        // pub xbr
        if (flag_follow_tracks_plannerON) {
            highspeed_msg.XBR_active = 1;
            highspeed_msg.XBR = -3;
        } else {
            highspeed_msg.XBR_active = 0;
        }

        // pub gear
        // only stop can change gear
        lowspeed_msg.gear_active = 1;
        if (flag_follow_tracks_plannerON) {
            if (global_st.target_gear > 0) {
                // ROS_ERROR_STREAM("forward");
                // D

                lowspeed_msg.gear = 0x44;
            } else if (global_st.target_gear < 0) {
                // R
                lowspeed_msg.gear = 0x52;
            }
            // else do nothing
        } else {
            // N
            lowspeed_msg.gear = 0x4e;
        }

        // pub epb
        lowspeed_msg.EPB_active = 1;
        if (flag_follow_tracks_plannerON) {
            lowspeed_msg.EPB = 1;
        } else {
            lowspeed_msg.EPB = 0;
        }

        // pub hang
        lowspeed_msg.hang_active = 0;

        break;

    // state auto forward
    case FSM_STATEAUTOFORWARD:
        // pub steer
        highspeed_msg.steer_active = 1;
        highspeed_msg.steer = lat_value;

        // pub throttle xbr
        highspeed_msg.ignition = 0x11;
        // ROS_ERROR_STREAM("thr xbr : " << setprecision(2) <<
        // global_st.kalman_vx
        //                               << ", " << global_st.target_speed
        //                               << ", " lng_value[0] << ", "
        //                               << lng_value[1]);
        if (lng_value[1] < -1) {
            highspeed_msg.throttle_active = 0;
            highspeed_msg.XBR_active = 1;
            highspeed_msg.XBR = lng_value[1];
        } else {
            highspeed_msg.throttle_active = 1;
            highspeed_msg.throttle_precentage = lng_value[0];
            highspeed_msg.XBR_active = 0;
        }

        // pub gear

        // pub epb
        lowspeed_msg.EPB_active = 1;
        lowspeed_msg.EPB = 1;

        // pub hang
        lowspeed_msg.hang_active = 0;

        break;

    // state auto backward
    case FSM_STATEAUTOBACKWARD:
        // ROS_ERROR_STREAM("back!!");
        // pub steer
        highspeed_msg.steer_active = 1;
        highspeed_msg.steer = lat_value;

        // pub throttle xbr
        highspeed_msg.ignition = 0x11;
        // ROS_ERROR_STREAM("thr xbr : " << setprecision(2) <<
        // global_st.kalman_vx
        //                               << ", " << global_st.target_speed
        //                               << ", " lng_value[0] << ", "
        //                               << lng_value[1]);
        if (lng_value[1] < -0.5) {
            highspeed_msg.throttle_active = 0;
            highspeed_msg.XBR_active = 1;
            highspeed_msg.XBR = lng_value[1];
        } else {
            highspeed_msg.throttle_active = 1;
            highspeed_msg.throttle_precentage = lng_value[0];
            highspeed_msg.XBR_active = 0;
        }

        // pub epb
        lowspeed_msg.EPB_active = 1;
        lowspeed_msg.EPB = 1;

        // pub hang
        lowspeed_msg.hang_active = 0;

        break;

    // state teledrive
    case FSM_STATETELEDRIVE:
        // pub steer
        highspeed_msg.steer_active = 1;
        highspeed_msg.steer = global_st.target_steer;

        // pub throttle
        highspeed_msg.ignition = 0x11;
        highspeed_msg.throttle_active = 1;
        highspeed_msg.throttle_precentage = global_st.target_throttle;

        // pub xbr
        highspeed_msg.XBR_active = 1;
        highspeed_msg.XBR = global_st.target_xbr;

        // pub gear
        lowspeed_msg.gear_active = 1;
        lowspeed_msg.gear = global_st.target_gear;

        // pub epb
        lowspeed_msg.EPB_active = 1;
        lowspeed_msg.EPB = global_st.target_epb;

        // pub hang
        if (global_st.target_hang == 0x11) {
            lowspeed_msg.hang_active = 0;
        } else {
            lowspeed_msg.hang_active = 1;
            lowspeed_msg.hang = global_st.target_hang;
        }

            break;

    // state off load
    case FSM_STATEHANGUP:
        // pub steer

        // pub throttle

        // pub xbr

        // pub gear
        lowspeed_msg.gear_active = 1;
        // N
        lowspeed_msg.gear = 0x4e;

        // pub epb

        // pub hang
        if (global_st.kalman_speed < 0.2) {
            lowspeed_msg.hang_active = 1;
            lowspeed_msg.hang = 1;
        } else {
            lowspeed_msg.hang_active = 0;
        }

        break;

    // state hang up drag
    case FSM_STATEHANGUPDRAG:
        // pub steer
        highspeed_msg.steer_active = 1;
        highspeed_msg.steer = lat_value;

        // pub throttle
        highspeed_msg.ignition = 0x11;
        // long control needs filter
        highspeed_msg.throttle_active = 1;
        if (gear > 0) {
            highspeed_msg.throttle_precentage = 70;
        } else {
            highspeed_msg.throttle_precentage = 0;
        }

        // pub xbr
        if (gear > 0) {
            highspeed_msg.XBR_active = 0;
        } else {
            highspeed_msg.XBR_active = 1;
            highspeed_msg.XBR = -3;
        }

        // pub gear
        lowspeed_msg.gear_active = 1;
        lowspeed_msg.gear = 0x44;

        // pub epb
        if (gear > 0) {
            lowspeed_msg.EPB_active = 1;
            lowspeed_msg.EPB = 1;
        }

        // pub hang
        lowspeed_msg.hang_active = 0;

        break;

    // state hang up drag stop
    case FSM_STATEHANGUPDRAGSTOP:
        // pub steer

        // pub throttle
        highspeed_msg.ignition = 0x11;
        highspeed_msg.throttle_active = 0;

        // pub xbr
        highspeed_msg.XBR_active = 1;
        highspeed_msg.XBR = -3;

        // pub gear
        lowspeed_msg.gear_active = 1;
        lowspeed_msg.gear = 0x4e;

        // pub epb
        lowspeed_msg.EPB_active = 1;
        lowspeed_msg.EPB = 1;

        // pub hang
        lowspeed_msg.hang_active = 0;

        break;

    // state low down
    case FSM_STATELOWDOWN:
        // pub steer

        // pub throttle

        // pub xbr

        // pub gear

        // pub epb

        // pub hang
        lowspeed_msg.hang_active = 1;
        lowspeed_msg.hang = 0;

        break;

    // state emergency
    case FSM_STATEEMERGENCY:
        ROS_ERROR_STREAM("brake ! ");

        // pub steer
        highspeed_msg.steer_active = 1;
        highspeed_msg.steer = 0;

        // pub throttle
        highspeed_msg.ignition = 0x11;
        highspeed_msg.throttle_active = 0;

        // pub xbr
        highspeed_msg.XBR_active = 1;
        highspeed_msg.XBR = -4;

        // pub gear
        lowspeed_msg.gear_active = 1;
        lowspeed_msg.gear = 0x4e;

        // pub epb
        lowspeed_msg.EPB_active = 0;

        // pub hang
        lowspeed_msg.hang_active = 0;

        break;

    default:
        break;
    }

    // todo : safe logic protect
    // if (!safe_filter_ptr_->Function(global_st, highspeed_msg,
    // lowspeed_msg))
    // {
    //     ROS_WARN_STREAM("[control] safe logic warning !");
    // }
    // set steer angle rate
    if ((fabs(global_st.target_x) < 1 ||
         control_fsm_state == FSM_STATEAUTOPARKBRAKE ||
         control_fsm_state == FSM_STATEPARKREADY ||
         control_fsm_state == FSM_STATEEMERGENCY) &&
        control_fsm_state != FSM_STATETELEDRIVE) {
        highspeed_msg.steer_angle_rate = 50;
    } else {
        // Tli65 max 360
        highspeed_msg.steer_angle_rate = 360;
    }
    lowspeed_msg.max_forward_gear = 6;

    // pub
    pub_highspeed.publish(highspeed_msg);
    pub_lowspeed.publish(lowspeed_msg);
}

void ProcWaypoints(const planner_msgs::WayPoints &msg) {
    if (msg.control_type == "follow_tracks") {
        global_st.target_x = msg.points[0].x;
        global_st.target_y = msg.points[0].y;
        global_st.target_yaw = msg.points[0].yaw;
        global_st.current_lat_error = msg.points[0].current_lat_error;
        global_st.target_yawrate = msg.points[0].kalman_yawrate;
        global_st.target_vx = msg.points[0].kalman_vx;
        global_st.target_steer = msg.points[0].steer;
        global_st.target_throttle = msg.points[0].throttle_percentage;
        global_st.target_xbr = msg.points[0].xbr;
        global_st.target_gear = msg.points[0].gear;

        // lat control
        lat_value = p_lat->Function(global_st);
        // long control needs filter
        lng_value = p_lng->Function(global_st);

        // pub light
        lowspeed_msg.left = msg.points[0].left_light;
        lowspeed_msg.right = msg.points[0].right_light;
        // lowspeed_msg.emergency = msg.points[0].emergency_light;
        lowspeed_msg.air_beep = msg.points[0].air_beep;
    }
}

void ProcTeledrive(const teledrive_msgs::Tli65Teledrive &msg) {
    if (msg.control_type == "teledrive") {
        global_st.target_steer = msg.steer;
        global_st.target_throttle = msg.throttle_pedal;
        global_st.target_xbr = msg.xbr;
        global_st.target_gear = msg.gear;
        global_st.target_hang = msg.hang;
        global_st.target_epb = msg.epb;
        //pub lights & air_beep
        lowspeed_msg.air_beep = msg.air_beep;
        lowspeed_msg.left = msg.left_light;
        lowspeed_msg.right = msg.right_light;
        lowspeed_msg.near = msg.near_light;
        lowspeed_msg.far = msg.far_light;
        lowspeed_msg.top_warn = msg.top_warning_light;
        lowspeed_msg.front_fog = msg.front_fog_light;
        lowspeed_msg.front_work = msg.front_work_light;
        lowspeed_msg.back_work = msg.back_work_light;
        lowspeed_msg.side = msg.side_light;
        lowspeed_msg.position = msg.position_light;
        lowspeed_msg.emergency = msg.emergency_light;
        lowspeed_msg.brake = msg.brake_light;
        lowspeed_msg.reverse = msg.reverse_light;
    }
}

void ProcKalmanKinematics(const kalman_msgs::Kinematics &msg) {
    global_st.kalman_vx = msg.k_vx;
    global_st.kalman_speed = fabs(msg.k_vx);
    global_st.kalman_yawrate = msg.k_yawrate;
}

} // namespace control
} // namespace zone3

int main(int argc, char **argv) {
    if (ros::console::set_logger_level(ROSCONSOLE_DEFAULT_NAME,
                                       ros::console::levels::Debug)) {
        ros::console::notifyLoggerLevelsChanged();
    }

    ros::init(argc, argv, "control_action");
    ros::NodeHandle node;
    ros::NodeHandle priv_nh("~");

    zone3::control::LngController1 long_controller;
    zone3::control::LatController1 lat_controller;
    zone3::control::p_lat = &lat_controller;
    zone3::control::p_lng = &long_controller;
    string control_fsm_topic;
    string waypoints_topic;
    string teledrive_topic;
    string kalman_kinematics_topic;
    string container_topic;
    string pub_highspeed_topic;
    string pub_lowspeed_topic;

    // get topic names
    priv_nh.param<string>("control_fsm_topic", control_fsm_topic, "");
    priv_nh.param<string>("waypoints_topic", waypoints_topic, "");
    priv_nh.param<string>("teledrive_topic", teledrive_topic, "");
    priv_nh.param<string>("kalman_kinematics_topic", kalman_kinematics_topic,
                          "");
    priv_nh.param<string>("container_topic", container_topic, "");
    priv_nh.param<string>("pub_highspeed_topic", pub_highspeed_topic, "");
    priv_nh.param<string>("pub_lowspeed_topic", pub_lowspeed_topic, "");

    // sub
    ros::Subscriber sub_control_fsm =
        node.subscribe(control_fsm_topic, 1, &zone3::control::ProcControlFSM);
    ros::Subscriber sub_waypoints =
        node.subscribe(waypoints_topic, 1, &zone3::control::ProcWaypoints);
    ros::Subscriber sub_teledrive =
        node.subscribe(teledrive_topic, 1, &zone3::control::ProcTeledrive);
    ros::Subscriber sub_kalman = node.subscribe(
        kalman_kinematics_topic, 1, &zone3::control::ProcKalmanKinematics);

    // pub
    zone3::control::pub_highspeed =
        node.advertise<control_msgs::HighspeedControl>(pub_highspeed_topic, 1);
    zone3::control::pub_lowspeed =
        node.advertise<control_msgs::LowspeedControl>(pub_lowspeed_topic, 1);

    // lng controller params
    long_controller.SetThrottleVK(30, 0.2, 0);
    long_controller.SetThrottleAK(0, 0, 0);
    long_controller.SetXbrVK(2, 0, 0);
    long_controller.SetXbrTurnK(0, 0, 0);

    vector<vector<double>> data1;
    vector<double> sub_data;
    sub_data.push_back(0);
    sub_data.push_back(1);
    data1.push_back(sub_data);
    sub_data.clear();
    sub_data.push_back(100);
    sub_data.push_back(1);
    data1.push_back(sub_data);
    long_controller.SetSpeedThrottleCurve(data1);
    long_controller.SetSpeedXbrCurve(data1);
    data1.clear();
    sub_data.clear();
    sub_data.push_back(0);
    sub_data.push_back(0);
    data1.push_back(sub_data);
    sub_data.clear();
    sub_data.push_back(100);
    sub_data.push_back(0);
    data1.push_back(sub_data);
    long_controller.SetPedalXbrCurve(data1);

    // lat controller params
    lat_controller.SetYawRateK(1000, 0, 0);
    data1.clear();
    sub_data.clear();
    sub_data.push_back(0);
    sub_data.push_back(1);
    data1.push_back(sub_data);
    sub_data.clear();
    sub_data.push_back(100);
    sub_data.push_back(1);
    data1.push_back(sub_data);
    lat_controller.SetSpeedSteerCurve(data1);

    ros::spin();

    return 0;
};