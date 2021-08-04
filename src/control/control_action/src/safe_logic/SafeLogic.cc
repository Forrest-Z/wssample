#include "SafeLogic.h"

namespace zone3 {
namespace control {

bool SafeLogic::Function(const TruckState &st,
                         control_msgs::HighspeedControl &highspeed_msg,
                         control_msgs::LowspeedControl &lowspeed_msg) {
    return IgnitionProtect(st, highspeed_msg, lowspeed_msg) &&
           ReverseGear(st, lowspeed_msg) && BrakePriority(highspeed_msg) &&
           HangProtect(st, lowspeed_msg);
}

bool SafeLogic::IgnitionProtect(const TruckState &st,
                                control_msgs::HighspeedControl &highspeed_msg,
                                control_msgs::LowspeedControl &lowspeed_msg) {
    if (highspeed_msg.ignition == 1) {
        if (lowspeed_msg.hands.length() == 8) {
            return true;
        }
        return false;
    }
    return true;
};

bool SafeLogic::ReverseGear(const TruckState &st,
                            control_msgs::LowspeedControl &lowspeed_msg) {
    // only N to R
    if (lowspeed_msg.gear == 0x52 && lowspeed_msg.gear_active == 1) {
        if (fabs(st.kalman_vx) < 0.5) {
            return true;
        }
        lowspeed_msg.gear = 0x4e;
        return false;
    }
    return true;
};

bool SafeLogic::BrakePriority(control_msgs::HighspeedControl &highspeed_msg) {
    if (highspeed_msg.throttle_active == 1 && highspeed_msg.XBR_active == 1) {
        highspeed_msg.throttle_active = 0;
        return false;
    }
    return true;
};

bool SafeLogic::HangProtect(const TruckState &st,
                            control_msgs::LowspeedControl &lowspeed_msg) {
    if (lowspeed_msg.hang_active == 1) {
        if (fabs(st.kalman_vx) < 0.5) {
            return true;
        }
        lowspeed_msg.hang_active = 0;
        return false;
    }
    return true;
};

} // namespace control
} // namespace zone3