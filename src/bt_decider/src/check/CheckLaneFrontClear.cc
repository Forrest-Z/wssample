#include "CheckLaneFrontClear.h"

using namespace std;
using namespace BT;

void CheckLaneFrontClear::ProcObjs(const perception_msgs::Objs &msg) {
    waypoints_flag_ = false;
    objs_flag_ = true;
}

void CheckLaneFrontClear::ProcWayPoints(const planner_msgs::WayPoints &msg) {
    waypoints_flag_ = true;
    //  todo : select pts
    // pts_ = msg;
}

NodeStatus CheckLaneFrontClear::tick() {
    if (!waypoints_flag_) {
        ROS_INFO_STREAM("[decider] check lane front obs !");
        return NodeStatus::FAILURE;
    }
    return NodeStatus::SUCCESS;
    ROS_INFO_STREAM("[decider] check lane front clear !");
}