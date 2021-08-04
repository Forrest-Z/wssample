#pragma once

#include <ros/ros.h>

#include "ControlStruct.h"
#include "control_msgs/HighspeedControl.h"
#include "control_msgs/LowspeedControl.h"

namespace zone3 {
namespace control {

class SafeLogic {
  public:
    SafeLogic(){};
    ~SafeLogic(){};
    bool Function(const TruckState &st,
                  control_msgs::HighspeedControl &highspeed_msg,
                  control_msgs::LowspeedControl &lowspeed_msg);

  private:
    bool IgnitionProtect(const TruckState &st,
                         control_msgs::HighspeedControl &highspeed_msg,
                         control_msgs::LowspeedControl &lowspeed_msg);
    bool ReverseGear(const TruckState &st,
                     control_msgs::LowspeedControl &lowspeed_msg);
    bool BrakePriority(control_msgs::HighspeedControl &highspeed_msg);
    bool HangProtect(const TruckState &st,
                     control_msgs::LowspeedControl &lowspeed_msg);
};

} // namespace control
} // namespace zone3