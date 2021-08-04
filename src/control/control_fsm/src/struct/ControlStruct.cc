#include <ros/ros.h>

#include "ControlStruct.h"

using namespace std;

namespace zone3 {
namespace control {

map<int, string> global_control_fsm_map = {
    {FSM_STATEMANUAL, "Manual"},
    {FSM_STATEEMERGENCY, "Emergency"},
    {FSM_STATEAUTOPARKBRAKE, "Auto Park Brake"},
    {FSM_STATEPARKREADY, "Park Ready"},
    {FSM_STATEAUTOFORWARD, "Auto Forward"},
    {FSM_STATEAUTOBACKWARD, "Auto Backward"},
    {FSM_STATETELEDRIVE, "Teledrive"},
    {FSM_STATEHANGUP, "Hang Up"},
    {FSM_STATEHANGUPDRAG, "Hang Up Drag"},
    {FSM_STATEHANGUPDRAGSTOP, "Drag Stop"},
    {FSM_STATELOWDOWN, "Low Down"}};

}
} // namespace zone3