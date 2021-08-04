#include <ros/ros.h>

#include "ControlFsm.hpp"
#include "ControlStruct.h"
#include "PlannerStruct.h"
#include "control_msgs/ControlFSM.h"
#include "kalman_msgs/Kinematics.h"
#include "localization_msgs/Pose.h"
#include "planner_msgs/PlannerFSM.h"
#include "planner_msgs/StopGo.h"
#include "planner_msgs/WayPoints.h"
#include "teledrive_msgs/Tli65Teledrive.h"
#include "tli65_can_msgs/ContainerCalib.h"
#include "tli65_can_msgs/RxFt.h"
#include "tli65_can_msgs/RxStHighspeed.h"
#include "tli65_can_msgs/RxStLowspeed.h"

using namespace std;

namespace zone3 {
namespace control {

extern map<int, string> global_control_fsm_map;

ros::Publisher pub_control_fsm;
control_msgs::ControlFSM control_fsm_msg;
ControlFsm control_fsm1;
int timeout_count = 0;
int current_brake_pedal_pos;
bool flag_auto_mode;
bool flag_air_pressure_ok;
bool flag_plannerON;
bool flag_teledriveON;
int planner_fsm;
bool flag_rtkOK;
int control_fsm_state = 999;
int last_control_fsm_state;
bool flag_ready_to_off_load;
bool flag_park_ready;
double current_container_angle;
double kalman_speed;
bool flag_teledrive_timeout;
bool flag_teledrive_or_planner_interrupt;
int gear;
double hangup_threshold;

void ProcPlannerStopGo(const planner_msgs::StopGo &msg) {
    if (msg.stop_or_go == "go") {
        flag_plannerON = true;
        flag_teledriveON = false;
    } else {
        flag_plannerON = false;
    }
}

void ProcPlannerFSM(const planner_msgs::PlannerFSM &msg) {
    planner_fsm = msg.planner_fsm;
}

double YawDiff(double yaw1, double yaw2) {
    double tmp = fabs(yaw1 - yaw2);
    if (tmp > M_PI_2) {
        return 2 * M_PI - tmp;
    }
    return tmp;
}

void ProcWaypoints(const planner_msgs::WayPoints &msg) {
    if (msg.control_type == "follow_tracks") {
        // offload
        // yaw diff large, not offload
        double current_load = 100;
        if (current_load > 20 && msg.points[0].flag_lock_down_index_offload) {
            flag_ready_to_off_load = true;
        } else {
            flag_ready_to_off_load = false;
        }
    }
}

void ProcTeledrive(const teledrive_msgs::Tli65Teledrive &msg) {
    if (msg.control_type == "teledrive") {
        flag_teledriveON = true;
        flag_plannerON = false;
        timeout_count = 0;
    }
}

void ProcKalmanKinematics(const kalman_msgs::Kinematics &msg) {
    kalman_speed = fabs(msg.k_vx);
}

void ProcContainer(const tli65_can_msgs::ContainerCalib &msg) {
    current_container_angle = msg.relative_container_angle;
}

void ProcStHighspeed(const tli65_can_msgs::RxStHighspeed &msg) {
    current_brake_pedal_pos = msg.brake_pedal_pos;
    gear = msg.gear;
    control_fsm_msg.gear = gear;
}

void ProcStLowspeed(const tli65_can_msgs::RxStLowspeed &msg) {
    flag_auto_mode = msg.auto_mode;
    // air pressure ok
    if (msg.air_pressure1 > 600) {
        flag_air_pressure_ok = true;
    } else {
        flag_air_pressure_ok = false;
    }
}

void ProcFault(const tli65_can_msgs::RxFt &msg) {}

void ProcPose(const localization_msgs::Pose &msg) {
    if (msg.rtk_state == 2) {
        flag_rtkOK = true;
    } else {
        flag_rtkOK = false;
    }
}

// todo : use socket heart beat to monitor
void TeledriveTimerCallback(const ros::TimerEvent &event) {
    timeout_count++;
    // timeout 300ms
    if (timeout_count >= 6) {
        flag_teledriveON = false;
        flag_teledrive_timeout = true;
    } else {
        flag_teledrive_timeout = false;
    }

    // never oversize
    if (timeout_count > 10000) {
        timeout_count = 10;
    }

    if ((flag_teledriveON || !flag_plannerON) &&
        (control_fsm_state == FSM_STATEAUTOFORWARD ||
         control_fsm_state == FSM_STATEAUTOBACKWARD ||
         control_fsm_state == FSM_STATEHANGUP ||
         control_fsm_state == FSM_STATEHANGUPDRAG ||
         control_fsm_state == FSM_STATEHANGUPDRAGSTOP ||
         control_fsm_state == FSM_STATELOWDOWN)) {
        flag_teledrive_or_planner_interrupt = true;
    } else {
        flag_teledrive_or_planner_interrupt = false;
    }
}

void FSMTimerCallback(const ros::TimerEvent &event) {
    // switch between auto and manual
    if (!flag_auto_mode || current_brake_pedal_pos > 15) {
        control_fsm1.process_event(Auto2Manual());
    }
    if (flag_auto_mode && flag_air_pressure_ok) {
        control_fsm1.process_event(Manual2Auto());
    }

    // to park, prior 1
    // low air pressure
    if (!flag_air_pressure_ok) {
        control_fsm1.process_event(ToPark());
    }
    if (flag_plannerON && (planner_fsm == FSM_STATEOUTOFMAP ||
                           planner_fsm == FSM_STATEEXCEED || !flag_rtkOK)) {
        control_fsm1.process_event(ToPark());
    }
    // teledrive command timeout, exit teledrive fsm
    if (flag_teledrive_timeout && control_fsm_state == FSM_STATETELEDRIVE) {
        control_fsm1.process_event(ToPark());
    }
    // teledrive interrupt forward and backward fsm
    // planner off, fsm back to parkbrake
    if (flag_teledrive_or_planner_interrupt) {
        control_fsm1.process_event(ToPark());
    }

    // park brake ready
    if (kalman_speed < 0.2 && current_container_angle < 1) {
        control_fsm1.process_event(ToParkReady());
    }

    // when finished, truck is far away from hang up position
    if (flag_plannerON && flag_ready_to_off_load) {
        control_fsm1.process_event(ToOffload());
    }
    if (current_container_angle > hangup_threshold) {
        control_fsm1.process_event(ToDrag());
    }
    if (kalman_speed > 2) {
        control_fsm1.process_event(ToDragStop());
    }
    if (kalman_speed < 0.2) {
        control_fsm1.process_event(ToLowDown());
    }
    if (current_container_angle < 1) {
        control_fsm1.process_event(OffloadToPark());
    }

    // prior 2, teledrive
    // fsm into teledrive state
    if (flag_teledriveON) {
        control_fsm1.process_event(ToTeledrive());
    }

    // prior 3
    // hang angle, in degree
    if (flag_plannerON && gear > 0) {
        control_fsm1.process_event(ToForward());
    }
    if (flag_plannerON && gear < 0) {
        control_fsm1.process_event(ToBackward());
    }
    // ROS_ERROR_STREAM("5 :" << global_st.current_gear << ", "
    //                        << global_st.kalman_vx << ", "
    //                        << park_brake_ready_);

    // todo : sys fault_code
    // if (global_st.fault_code != 0) {
    //     control_fsm1.process_event(SysFault());
    // }

    // pub fsm, save last fsm state
    if (control_fsm_state != global_control_fsm_state) {
        ROS_INFO_STREAM("[control] current control fsm state : "
                        << global_control_fsm_map[global_control_fsm_state]);
        last_control_fsm_state = control_fsm_state;
        control_fsm_state = global_control_fsm_state;
        control_fsm_msg.control_fsm = control_fsm_state;
        control_fsm_msg.last_control_fsm = last_control_fsm_state;
    }
    control_fsm_msg.flag_follow_tracks_plannerON = flag_plannerON;
    pub_control_fsm.publish(control_fsm_msg);
}

} // namespace control
} // namespace zone3

int main(int argc, char **argv) {
    ros::init(argc, argv, "control_fsm");
    ros::NodeHandle node;
    ros::NodeHandle priv_nh("~");

    string command_topic;
    string planner_fsm_topic;
    string waypoints_topic;
    string teledrive_topic;
    string kalman_kinematics_topic;
    string container_topic;
    string state_highspeed_topic;
    string state_lowspeed_topic;
    string fault_topic;
    string pose_topic;
    string control_fsm_topic;

    // get topic names
    priv_nh.param<string>("command_topic", command_topic, "");
    priv_nh.param<string>("planner_fsm_topic", planner_fsm_topic, "");
    priv_nh.param<string>("waypoints_topic", waypoints_topic, "");
    priv_nh.param<string>("teledrive_topic", teledrive_topic, "");
    priv_nh.param<string>("kalman_kinematics_topic", kalman_kinematics_topic,
                          "");
    priv_nh.param<string>("container_topic", container_topic, "");
    priv_nh.param<string>("state_highspeed_topic", state_highspeed_topic, "");
    priv_nh.param<string>("state_lowspeed_topic", state_lowspeed_topic, "");
    priv_nh.param<string>("fault_topic", fault_topic, "");
    priv_nh.param<string>("pose_topic", pose_topic, "");
    priv_nh.param<string>("control_fsm_topic", control_fsm_topic, "");

    // get params
    node.param<double>("/control/hangup_threshold",
                       zone3::control::hangup_threshold, 20);

    // sub
    ros::Subscriber sub_stop_go =
        node.subscribe(command_topic, 1, &zone3::control::ProcPlannerStopGo);
    ros::Subscriber sub_planner_fsm =
        node.subscribe(planner_fsm_topic, 1, &zone3::control::ProcPlannerFSM);
    ros::Subscriber sub_waypoints =
        node.subscribe(waypoints_topic, 1, &zone3::control::ProcWaypoints);
    ros::Subscriber sub_teledrive =
        node.subscribe(teledrive_topic, 1, &zone3::control::ProcTeledrive);
    ros::Subscriber sub_kalman = node.subscribe(
        kalman_kinematics_topic, 1, &zone3::control::ProcKalmanKinematics);
    ros::Subscriber sub_container =
        node.subscribe(container_topic, 1, &zone3::control::ProcContainer);
    ros::Subscriber sub_state_highspeed = node.subscribe(
        state_highspeed_topic, 1, &zone3::control::ProcStHighspeed);
    ros::Subscriber sub_state_lowspeed = node.subscribe(
        state_lowspeed_topic, 1, &zone3::control::ProcStLowspeed);
    ros::Subscriber sub_fault =
        node.subscribe(fault_topic, 1, &zone3::control::ProcFault);
    ros::Subscriber sub_pose =
        node.subscribe(pose_topic, 1, &zone3::control::ProcPose);

    // pub
    zone3::control::pub_control_fsm =
        node.advertise<control_msgs::ControlFSM>(control_fsm_topic, 1);

    // timer
    // 50ms
    ros::Timer teledrive_timer = node.createTimer(
        ros::Duration(0.05), &zone3::control::TeledriveTimerCallback);
    ros::Timer control_fsm_timer_ = node.createTimer(
        ros::Duration(0.05), &zone3::control::FSMTimerCallback);

    // fsm
    zone3::control::control_fsm1.start();

    ros::spin();

    return 0;
};