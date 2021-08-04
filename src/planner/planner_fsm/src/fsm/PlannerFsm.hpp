#pragma once

#include <boost/msm/back/state_machine.hpp>
#include <boost/msm/front/functor_row.hpp>
#include <boost/msm/front/state_machine_def.hpp>
#include <iostream>

#include "PlannerStruct.h"
#include <ros/ros.h>

namespace zone3 {
namespace planner {

namespace msm = boost::msm;
namespace msmf = boost::msm::front;
namespace msmb = boost::msm::back;
namespace mpl = boost::mpl;

// ----- Events
struct LockDowninMap {};
struct OutOfMap {};
struct ToDNavi {};
struct ToRNavi {};
struct ToNNavi {};
struct ToNaviExceed {};

struct InitEvent {};

// 0   : out of map
// 100 : N navi
// 200 : D navi
// 300 : R navi
// 400 : navi exceed
static int global_planner_fsm_state = FSM_STATEOUTOFMAP;

struct PlannerFsm_ : msmf::state_machine_def<PlannerFsm_> {
    typedef InitEvent initial_event;

    struct StateOutOfMap : msmf::state<> {
        template <class Event, class Fsm>
        void on_entry(Event const &, Fsm &fsm) const {
            global_planner_fsm_state = FSM_STATEOUTOFMAP;
        }
    };
    //  Set initial state
    typedef StateOutOfMap initial_state;

    struct InMapFsm_ : msmf::state_machine_def<InMapFsm_> {

        struct StateNNavi : msmf::state<> {
            template <class Event, class Fsm>
            void on_entry(Event const &, Fsm &fsm) const {
                global_planner_fsm_state = FSM_STATENNAVI;
                // ROS_ERROR_STREAM("ok1");
            }
        };
        //  Set initial state
        typedef mpl::vector<StateNNavi> initial_state;

        struct StateDNavi : msmf::state<> {
            template <class Event, class Fsm>
            void on_entry(Event const &, Fsm &fsm) const {
                global_planner_fsm_state = FSM_STATEDNAVI;
            }
        };

        struct StateRNavi : msmf::state<> {
            template <class Event, class Fsm>
            void on_entry(Event const &, Fsm &fsm) const {
                global_planner_fsm_state = FSM_STATERNAVI;
                // ROS_ERROR_STREAM("ok2");
            }
        };

        struct StateNaviExceed : msmf::state<> {
            template <class Event, class Fsm>
            void on_entry(Event const &, Fsm &fsm) const {
                global_planner_fsm_state = FSM_STATEEXCEED;
            }
        };

        //  Transition table
        //  Startstate   Event   Nextstate   Action   Guard
        struct transition_table
            : mpl::vector<

                  msmf::Row<StateNNavi, ToDNavi, StateDNavi, msmf::none,
                            msmf::none>,
                  msmf::Row<StateDNavi, ToNNavi, StateNNavi, msmf::none,
                            msmf::none>,
                  msmf::Row<StateNNavi, ToRNavi, StateRNavi, msmf::none,
                            msmf::none>,
                  msmf::Row<StateRNavi, ToNNavi, StateNNavi, msmf::none,
                            msmf::none>,
                  msmf::Row<StateDNavi, ToNaviExceed, StateNaviExceed,
                            msmf::none, msmf::none>,
                  msmf::Row<StateNaviExceed, ToRNavi, StateRNavi, msmf::none,
                            msmf::none>,
                  msmf::Row<StateRNavi, ToNaviExceed, StateNaviExceed,
                            msmf::none, msmf::none>,
                  msmf::Row<StateNaviExceed, ToDNavi, StateDNavi, msmf::none,
                            msmf::none>> {};

        template <class Event, class Fsm>
        void no_transition(Event const &e, Fsm &fsm, int state) {}
    };
    typedef msmb::state_machine<InMapFsm_> InMapFsm;

    //  Transition table
    //  Startstate   Event   Nextstate   Action   Guard
    //  vector must less than 20
    struct transition_table : mpl::vector<

                                  msmf::Row<StateOutOfMap, LockDowninMap,
                                            InMapFsm, msmf::none, msmf::none>,
                                  msmf::Row<InMapFsm, OutOfMap, StateOutOfMap,
                                            msmf::none, msmf::none>> {};

    template <class Event, class Fsm>
    void no_transition(Event const &e, Fsm &fsm, int state) {}
};
typedef msmb::state_machine<PlannerFsm_> PlannerFsm;

} // namespace planner
} // namespace zone3