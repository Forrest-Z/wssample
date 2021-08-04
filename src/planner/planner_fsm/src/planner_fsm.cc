#include <eigen3/Eigen/Dense>
#include <ros/ros.h>

#include "PlannerFsm.hpp"
#include "PlannerStruct.h"
#include "localization_msgs/Pose.h"
#include "planner_msgs/PlannerFSM.h"
#include "planner_msgs/PlannerFSMTrigger.h"
#include "planner_msgs/WayPoint.h"
#include "planner_msgs/WayPoints.h"
#include "tli65_can_msgs/RxStHighspeed.h"

using namespace std;

namespace zone3 {
namespace planner {

extern map<int, string> global_planner_fsm_map;

ros::Publisher pub_planner_fsm;
planner_msgs::PlannerFSM planner_fsm_msg;
planner_msgs::WayPoint waypoint;
int gear;
PlannerFsm planner_fsm1;
bool rtk_ok;
bool flag_lockdown_in_map1;
int now_fsm_state = 999;
int last_fsm_state;

void ProcPose(const localization_msgs::Pose &msg) {
    if (msg.rtk_state == 2) {
        rtk_ok = true;
    } else {
        rtk_ok = false;
    }
}

// planner fsm use current gear as fsm state
// different fsm state, different method to find waypoint
void ProcStHighspeed(const tli65_can_msgs::RxStHighspeed &msg) {
    gear = msg.gear;
    planner_fsm_msg.gear = gear;
}

// from follow_tracks module
// get waypoints
void ProcWaypoint(const planner_msgs::WayPoints &msg) {
    waypoint = msg.points[0];
}

void ProcFSMTrigger(const planner_msgs::PlannerFSMTrigger &msg) {
    flag_lockdown_in_map1 = msg.flag_lockdown_in_map;
}

// state transition method
void TimerCallback(const ros::TimerEvent &event) {
    // rtk not ok
    if (!rtk_ok || !flag_lockdown_in_map1) {
        planner_fsm1.process_event(OutOfMap());
    }

    // lockdown in map
    if (flag_lockdown_in_map1) {
        planner_fsm1.process_event(LockDowninMap());
    }
    if (gear == 0) {
        planner_fsm1.process_event(ToNNavi());
    }
    if (gear > 0 && waypoint.x > 0) {
        planner_fsm1.process_event(ToDNavi());
    }
    if (gear < 0 && waypoint.x < 0) {
        planner_fsm1.process_event(ToRNavi());
    }
    if (gear * waypoint.x < 0) {
        planner_fsm1.process_event(ToNaviExceed());
    }

    // save fsm state, "in map" or "out of map", N D R exceed state
    if (now_fsm_state != global_planner_fsm_state) {
        ROS_INFO_STREAM("[planner] current planner fsm state : "
                        << global_planner_fsm_map[global_planner_fsm_state]);
        last_fsm_state = now_fsm_state;
        now_fsm_state = global_planner_fsm_state;
    }

    planner_fsm_msg.planner_fsm = now_fsm_state;
    planner_fsm_msg.last_planner_fsm = last_fsm_state;
    pub_planner_fsm.publish(planner_fsm_msg);
}

} // namespace planner
} // namespace zone3

int main(int argc, char **argv) {
    ros::init(argc, argv, "planner_fsm");
    ros::NodeHandle node;
    ros::NodeHandle priv_nh("~");

    string pose_topic;
    string st_topic;
    string waypoint_topic;
    string fsm_trigger_topic;
    string pub_fsm_topic;

    // get topic
    priv_nh.param<string>("pose_topic", pose_topic, "");
    priv_nh.param<string>("state_highspeed_topic", st_topic, "");
    priv_nh.param<string>("waypoint_topic", waypoint_topic, "");
    priv_nh.param<string>("fsm_trigger_topic", fsm_trigger_topic, "");
    priv_nh.param<string>("pub_fsm_topic", pub_fsm_topic, "");

    // sub
    ros::Subscriber sub_pose =
        node.subscribe(pose_topic, 10, &zone3::planner::ProcPose);
    ros::Subscriber sub_st_highspeed =
        node.subscribe(st_topic, 10, &zone3::planner::ProcStHighspeed);
    ros::Subscriber sub_waypoint =
        node.subscribe(waypoint_topic, 10, &zone3::planner::ProcWaypoint);
    ros::Subscriber sub_fsm_trigger =
        node.subscribe(fsm_trigger_topic, 10, &zone3::planner::ProcFSMTrigger);

    // pub
    zone3::planner::pub_planner_fsm =
        node.advertise<planner_msgs::PlannerFSM>(pub_fsm_topic, 1);

    // timer
    ros::Timer planner_fsm_timer_ =
        node.createTimer(ros::Duration(0.05), &zone3::planner::TimerCallback);

    zone3::planner::planner_fsm1.start();

    ros::spin();

    return 0;
}