#include "PlannerFsm.hpp"

using namespace std;
using namespace zone3::planner;

namespace zone3 {
namespace planner {
extern map<int, string> global_planner_fsm_map;
}
} // namespace zone3

int main(int argc, char **argv) {
    ros::init(argc, argv, "tst_fsm");
    ros::NodeHandle node;
    ros::NodeHandle priv_nh("~");

    ROS_ERROR_STREAM("ok fsm tst");
    PlannerFsm fsm1;
    fsm1.start();

    cout << "0 : " << global_planner_fsm_map[global_planner_fsm_state] << endl;
    fsm1.process_event(LockDowninMap());
    cout << "1 : " << global_planner_fsm_map[global_planner_fsm_state] << endl;
    fsm1.process_event(OutOfMap());
    cout << "2 : " << global_planner_fsm_map[global_planner_fsm_state] << endl;
    fsm1.process_event(LockDowninMap());
    cout << "3 : " << global_planner_fsm_map[global_planner_fsm_state] << endl;
    fsm1.process_event(ToNNavi());
    cout << "4 : " << global_planner_fsm_map[global_planner_fsm_state] << endl;
    fsm1.process_event(ToDNavi());
    cout << "5 : " << global_planner_fsm_map[global_planner_fsm_state] << endl;
    fsm1.process_event(ToNaviExceed());
    cout << "6 : " << global_planner_fsm_map[global_planner_fsm_state] << endl;
    fsm1.process_event(ToNaviExceed());
    cout << "7 : " << global_planner_fsm_map[global_planner_fsm_state] << endl;
    fsm1.process_event(ToNNavi());
    cout << "8 : " << global_planner_fsm_map[global_planner_fsm_state] << endl;
    fsm1.process_event(ToDNavi());
    cout << "9 : " << global_planner_fsm_map[global_planner_fsm_state] << endl;
    fsm1.process_event(OutOfMap());
    cout << "10 : " << global_planner_fsm_map[global_planner_fsm_state] << endl;
    fsm1.process_event(LockDowninMap());
    cout << "11 : " << global_planner_fsm_map[global_planner_fsm_state] << endl;
    fsm1.process_event(ToNNavi());
    cout << "12 : " << global_planner_fsm_map[global_planner_fsm_state] << endl;

    ros::spin();

    return 0;
};
