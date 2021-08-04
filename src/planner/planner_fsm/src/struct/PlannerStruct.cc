#include <ros/ros.h>

#include "PlannerStruct.h"

using namespace std;

namespace zone3 {
namespace planner {

map<int, string> global_planner_fsm_map = {{FSM_STATEOUTOFMAP, "Out of Map"},
                                           {FSM_STATENNAVI, "N Navi"},
                                           {FSM_STATEDNAVI, "D Navi"},
                                           {FSM_STATERNAVI, "R Navi"},
                                           {FSM_STATEEXCEED, "Navi Exceed"}};

}
} // namespace zone3