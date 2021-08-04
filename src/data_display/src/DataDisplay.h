#pragma once

#include <iostream>
#include <map>
#include <ros/ros.h>
#include <string>

#include "control_msgs/ControlFSM.h"
#include "control_msgs/HighspeedControl.h"
#include "control_msgs/LowspeedControl.h"
#include "displaydata_msgs/DisplayData.h"
#include "kalman_msgs/Kinematics.h"
#include "localization_msgs/Pose.h"
#include "planner_msgs/WayPoints.h"
#include "tli65_can_msgs/ContainerCalib.h"
#include "tli65_can_msgs/RxEPB.h"
#include "tli65_can_msgs/RxFt.h"
#include "tli65_can_msgs/RxStHighspeed.h"
#include "tli65_can_msgs/RxStLowspeed.h"
#include "tli65_can_msgs/RxTyre.h"

namespace zone3 {
using namespace std;

class DataDisplay {
  public:
    DataDisplay(ros::NodeHandle &node, ros::NodeHandle &priv_nh);
    ~DataDisplay();

  private:
    string kalman_topic_;
    string state_highspeed_topic_;
    string state_lowspeed_topic_;
    string container_topic_;
    string EPB_topic_;
    string Ft_topic_;
    string tyre_topic_;
    string waypoints_topic_;
    string control_fsm_topic_;
    string control_highspeed_topic_;
    string control_lowspeed_topic_;
    string pose_topic_;
    string display_topic_;

    // sub
    ros::Subscriber sub_data_kalman_;
    ros::Subscriber sub_data_highspeed_;
    ros::Subscriber sub_data_lowspeed_;
    ros::Subscriber sub_data_container_;
    ros::Subscriber sub_data_epb_;
    ros::Subscriber sub_data_fault_;
    ros::Subscriber sub_data_tyre_;
    ros::Subscriber sub_data_waypoints_;
    ros::Subscriber sub_data_fsm_;
    ros::Subscriber sub_data_control_highspeed_;
    ros::Subscriber sub_data_control_lowspeed_;
    ros::Subscriber sub_data_pose_;

    // pub
    ros::Publisher pub_data_display_;

    // timer
    ros::Timer data_timer_;

    void ProcKalman(const kalman_msgs::Kinematics &msg);
    void ProcStHighspeed(const tli65_can_msgs::RxStHighspeed &msg);
    void ProcStLowspeed(const tli65_can_msgs::RxStLowspeed &msg);
    void ProcContainer(const tli65_can_msgs::ContainerCalib &msg);
    void ProcEPB(const tli65_can_msgs::RxEPB &msg);
    void ProcFault(const tli65_can_msgs::RxFt &msg);
    void ProcTyre(const tli65_can_msgs::RxTyre &msg);
    void ProcWaypoints(const planner_msgs::WayPoints &msg);
    void ProcControlFsm(const control_msgs::ControlFSM &msg);
    void ProcControlHighspeed(const control_msgs::HighspeedControl &msg);
    void ProcControlLowspeed(const control_msgs::LowspeedControl &msg);
    void ProcPose(const localization_msgs::Pose &msg);

    void TimerCallback(const ros::TimerEvent &event);
};

} // namespace zone3
