#pragma once

#include "decider_msgs/Decider.h"
#include "planner_msgs/WayPoints.h"
#include <behaviortree_cpp_v3/action_node.h>
#include <ros/ros.h>

using namespace BT;
using namespace std;

class ActionBackToLastLane : public AsyncActionNode {
  public:
    ActionBackToLastLane(const string &name, const NodeConfiguration &config)
        : AsyncActionNode(name, config) {
        ros::NodeHandle priv_nh("~");
        // get topic
        priv_nh.param<string>("pub_decider_topic", pub_decider_topic_, "");
        // pub
        pub_lat_strategy_ =
            priv_nh.advertise<decider_msgs::Decider>(pub_decider_topic_, 2);
    }

    static PortsList providedPorts() { return {}; }

    virtual NodeStatus tick() override {
        decider_msgs::Decider strategy;
        strategy.lat_strategy = "back_to_last_lane";

        pub_lat_strategy_.publish(strategy);
        ROS_INFO_STREAM("[decider] back to last lane !");
        return NodeStatus::SUCCESS;
    }

  private:
    string pub_decider_topic_;
    ros::Publisher pub_lat_strategy_;
};