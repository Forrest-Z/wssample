#include "ControlFsm.hpp"
#include "ControlStruct.h"

using namespace std;
using namespace zone3::control;

namespace zone3 {
namespace control {

extern map<int, string> global_control_fsm_map;

}
} // namespace zone3

int main(int argc, char **argv) {
    ros::init(argc, argv, "tst_fsm");
    ros::NodeHandle node;
    ros::NodeHandle priv_nh("~");

    ROS_ERROR_STREAM("ok control fsm");
    ControlFsm fsm1;
    fsm1.start();

    cout << "0 : " << global_control_fsm_map[global_control_fsm_state] << endl;
    fsm1.process_event(Manual2Auto());
    cout << "1 : " << global_control_fsm_map[global_control_fsm_state] << endl;
    fsm1.process_event(ToForward());
    cout << "2 : " << global_control_fsm_map[global_control_fsm_state] << endl;
    fsm1.process_event(ToParkReady());
    cout << "3 : " << global_control_fsm_map[global_control_fsm_state] << endl;
    fsm1.process_event(ToParkReady());
    cout << "4 : " << global_control_fsm_map[global_control_fsm_state] << endl;
    fsm1.process_event(ToOffload());
    cout << "5 : " << global_control_fsm_map[global_control_fsm_state] << endl;
    fsm1.process_event(ToDrag());
    cout << "6 : " << global_control_fsm_map[global_control_fsm_state] << endl;
    fsm1.process_event(ToPark());
    cout << "7 : " << global_control_fsm_map[global_control_fsm_state] << endl;
    fsm1.process_event(ToParkReady());
    cout << "8 : " << global_control_fsm_map[global_control_fsm_state] << endl;
    fsm1.process_event(ToDragStop());
    cout << "9 : " << global_control_fsm_map[global_control_fsm_state] << endl;
    fsm1.process_event(ToLowDown());
    cout << "10 : " << global_control_fsm_map[global_control_fsm_state] << endl;
    fsm1.process_event(ToForward());
    cout << "11 : " << global_control_fsm_map[global_control_fsm_state] << endl;
    fsm1.process_event(Auto2Manual());
    cout << "12 : " << global_control_fsm_map[global_control_fsm_state] << endl;

    ros::spin();

    return 0;
};
