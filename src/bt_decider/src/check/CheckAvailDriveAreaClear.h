#pragma once

#include "perception_msgs/DriveArea.h"
#include <behaviortree_cpp_v3/action_node.h>
#include <ros/ros.h>

using namespace BT;
using namespace std;

class CheckAvailDriveAreaClear : public SyncActionNode {
  public:
    CheckAvailDriveAreaClear(const string &name,
                             const NodeConfiguration &config)
        : SyncActionNode(name, config) {
        ros::NodeHandle priv_nh("~");
        // get topic
        priv_nh.param<string>("drive_area_topic", drive_area_topic_, "");
        // get params
        getInput<string>("which_lane", which_lane_);
        // sub
        sub_drive_area_ =
            node_.subscribe(drive_area_topic_, 100,
                            &CheckAvailDriveAreaClear::ProcDriveArea, this);
    }

    static PortsList providedPorts() {
        return {InputPort<string>("which_lane")};
    }

    virtual NodeStatus tick() override;

  private:
    ros::NodeHandle node_;
    string which_lane_;
    string drive_area_topic_;

    ros::Subscriber sub_drive_area_;

    bool area_flag_ = false;

    planner_msgs::WayPoints pts_;

    void ProcDriveArea(const perception_msgs::DriveArea &msg);
};

void CheckAvailDriveAreaClear::ProcDriveArea(
    const perception_msgs::DriveArea &msg) {
    if (which_lane_ == "left" && msg.left_area_avail) {
        area_flag_ = true;
        return;
    }
    if (which_lane_ == "right" && msg.right_area_avail) {
        area_flag_ = true;
        return;
    }
    area_flag_ = false;
}

NodeStatus CheckAvailDriveAreaClear::tick() {
    if (!area_flag_) {
        return NodeStatus::FAILURE;
    }
    return NodeStatus::SUCCESS;
}
