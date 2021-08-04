#pragma once

#define FSM_STATEMANUAL 100
#define FSM_STATEEMERGENCY 300
#define FSM_STATEAUTOPARKBRAKE 200
#define FSM_STATEPARKREADY 210
#define FSM_STATEAUTOFORWARD 220
#define FSM_STATEAUTOBACKWARD 230
#define FSM_STATETELEDRIVE 240
#define FSM_STATEHANGUP 211
#define FSM_STATEHANGUPDRAG 212
#define FSM_STATEHANGUPDRAGSTOP 213
#define FSM_STATELOWDOWN 214

#define THROTTLE_V_PID 1000
#define THROTTLE_A_PID 1001
#define XBR_V_PID 1002
#define VBR_TURN_PID 1003

#include <ros/ros.h>

using namespace std;

namespace zone3 {
namespace control {

#pragma pack(1)

// used for lat or long control algorithm
struct TruckState {
    double kalman_vx;
    double kalman_speed;
    double gps_acc;
    double gps_speed_time_interval_to_last;
    double kalman_yawrate;
    double current_load;
    double current_lat_error;

    double target_vx;
    double target_x;
    double target_y;
    double target_yaw;
    double target_yawrate;
    double target_steer;
    double target_throttle;
    double target_xbr;
    int target_gear;
    int target_epb;
    int target_hang;
};

#pragma pack()

} // namespace control
} // namespace zone3