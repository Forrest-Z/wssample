#pragma once

#include "perception_msgs/Objs.h"
#include "planner_msgs/WayPoints.h"
#include <behaviortree_cpp_v3/action_node.h>
#include <ros/ros.h>

using namespace BT;
using namespace std;

class CheckLaneBackClear : public SyncActionNode {
  public:
    CheckLaneBackClear(const string &name, const NodeConfiguration &config)
        : SyncActionNode(name, config) {
        ros::NodeHandle priv_nh("~");
        // get topic
        priv_nh.param<string>("lane_topic", lane_topic_, "");
        priv_nh.param<string>("objs_topic", objs_topic_, "");
        // get params
        getInput<string>("which_lane", which_lane_);
        getInput<double>("distance", distance_);
        // sub
        sub_lanes_ = node_.subscribe(lane_topic_, 100,
                                     &CheckLaneBackClear::ProcWayPoints, this);
        sub_objs_ = node_.subscribe(objs_topic_, 100,
                                    &CheckLaneBackClear::ProcObjs, this);
    }

    static PortsList providedPorts() {
        return {InputPort<string>("which_lane"), InputPort<double>("distance")};
    }

    virtual NodeStatus tick() override;

  private:
    ros::NodeHandle node_;
    double distance_;
    string which_lane_;
    string lane_topic_;
    string objs_topic_;

    ros::Subscriber sub_lanes_;
    ros::Subscriber sub_objs_;

    bool waypoints_flag_ = false;
    bool objs_flag_ = true;

    planner_msgs::WayPoints pts_;

    void ProcObjs(const perception_msgs::Objs &msg);
    void ProcWayPoints(const planner_msgs::WayPoints &msg);
};
