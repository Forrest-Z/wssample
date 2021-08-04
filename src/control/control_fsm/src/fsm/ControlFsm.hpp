#pragma once

#include <boost/msm/back/state_machine.hpp>
#include <boost/msm/front/functor_row.hpp>
#include <boost/msm/front/state_machine_def.hpp>
#include <iostream>

#include "ControlStruct.h"

namespace zone3 {
namespace control {

namespace msm = boost::msm;
namespace msmf = boost::msm::front;
namespace msmb = boost::msm::back;
namespace mpl = boost::mpl;

// ----- Events
struct Manual2Auto {};
struct Auto2Manual {};
struct SysFault {};

struct ToParkReady {};
struct ToForward {};
struct ToBackward {};
struct ToTeledrive {};
struct ToOffload {};
struct ToPark {};

struct ToDrag {};
struct ToDragStop {};
struct ToLowDown {};
struct OffloadToPark {};

struct InitEvent {};

// 100 : manual
// 200 : auto park brake
// 210 : auto park ready
// 220 : auto forward
// 230 : auto backward
// 240 : teledrive
// 211 : off load hang up
// 212 : off load drag
// 213 : off load drag stop
// 214 : off load low down
// 300 : emergency brake
static int global_control_fsm_state = FSM_STATEMANUAL;

struct ControlFsm_ : msmf::state_machine_def<ControlFsm_> {
    typedef InitEvent initial_event;

    struct StateManual : msmf::state<> {
        template <class Event, class Fsm>
        void on_entry(Event const &, Fsm &fsm) const {
            global_control_fsm_state = FSM_STATEMANUAL;
        }
    };
    //  Set initial state
    typedef StateManual initial_state;

    struct StateEmergency : msmf::state<> {
        template <class Event, class Fsm>
        void on_entry(Event const &, Fsm &fsm) const {
            global_control_fsm_state = FSM_STATEEMERGENCY;
        }
    };

    struct AutoFsm_ : msmf::state_machine_def<AutoFsm_> {

        struct StateAutoParkBrake : msmf::state<> {
            template <class Event, class Fsm>
            void on_entry(Event const &, Fsm &fsm) const {
                global_control_fsm_state = FSM_STATEAUTOPARKBRAKE;
                // ROS_ERROR_STREAM("ok1");
            }
        };
        //  Set initial state
        typedef mpl::vector<StateAutoParkBrake> initial_state;

        struct StateParkReady : msmf::state<> {
            template <class Event, class Fsm>
            void on_entry(Event const &, Fsm &fsm) const {
                global_control_fsm_state = FSM_STATEPARKREADY;
            }
        };

        struct StateAutoForward : msmf::state<> {
            template <class Event, class Fsm>
            void on_entry(Event const &, Fsm &fsm) const {
                global_control_fsm_state = FSM_STATEAUTOFORWARD;
            }
        };

        struct StateAutoBackward : msmf::state<> {
            template <class Event, class Fsm>
            void on_entry(Event const &, Fsm &fsm) const {
                global_control_fsm_state = FSM_STATEAUTOBACKWARD;
                // ROS_ERROR_STREAM("ok2");
            }
        };

        struct StateTeledrive : msmf::state<> {
            template <class Event, class Fsm>
            void on_entry(Event const &, Fsm &fsm) const {
                global_control_fsm_state = FSM_STATETELEDRIVE;
            }
        };

        struct OffLoadFsm_ : msmf::state_machine_def<OffLoadFsm_> {

            struct StateHangUp : msmf::state<> {
                template <class Event, class Fsm>
                void on_entry(Event const &, Fsm &fsm) const {
                    global_control_fsm_state = FSM_STATEHANGUP;
                    // ROS_ERROR_STREAM("ok1");
                }
            };
            //  Set initial state
            typedef mpl::vector<StateHangUp> initial_state;

            struct StateHangUpDrag : msmf::state<> {
                template <class Event, class Fsm>
                void on_entry(Event const &, Fsm &fsm) const {
                    global_control_fsm_state = FSM_STATEHANGUPDRAG;
                }
            };

            struct StateHangUpDragStop : msmf::state<> {
                template <class Event, class Fsm>
                void on_entry(Event const &, Fsm &fsm) const {
                    global_control_fsm_state = FSM_STATEHANGUPDRAGSTOP;
                    // ROS_ERROR_STREAM("ok2");
                }
            };

            struct StateLowDown : msmf::state<> {
                template <class Event, class Fsm>
                void on_entry(Event const &, Fsm &fsm) const {
                    global_control_fsm_state = FSM_STATELOWDOWN;
                }
            };

            //  Transition table
            //  Startstate   Event   Nextstate   Action   Guard
            struct transition_table
                : mpl::vector<

                      msmf::Row<StateHangUp, ToDrag, StateHangUpDrag,
                                msmf::none, msmf::none>,
                      msmf::Row<StateHangUpDrag, ToDragStop,
                                StateHangUpDragStop, msmf::none, msmf::none>,
                      msmf::Row<StateHangUpDragStop, ToLowDown, StateLowDown,
                                msmf::none, msmf::none>,
                      msmf::Row<StateLowDown, OffloadToPark, StateAutoParkBrake,
                                msmf::none, msmf::none>> {};

            template <class Event, class Fsm>
            void no_transition(Event const &e, Fsm &fsm, int state) {}
        };
        typedef msmb::state_machine<OffLoadFsm_> OffLoadFsm;

        //  Transition table
        //  Startstate   Event   Nextstate   Action   Guard
        struct transition_table
            : mpl::vector<

                  msmf::Row<StateAutoParkBrake, ToParkReady, StateParkReady,
                            msmf::none, msmf::none>,
                  msmf::Row<StateParkReady, ToForward, StateAutoForward,
                            msmf::none, msmf::none>,
                  msmf::Row<StateAutoForward, ToPark, StateAutoParkBrake,
                            msmf::none, msmf::none>,
                  msmf::Row<StateParkReady, ToBackward, StateAutoBackward,
                            msmf::none, msmf::none>,
                  msmf::Row<StateAutoBackward, ToPark, StateAutoParkBrake,
                            msmf::none, msmf::none>,
                  msmf::Row<StateParkReady, ToTeledrive, StateTeledrive,
                            msmf::none, msmf::none>,
                  msmf::Row<StateTeledrive, ToPark, StateAutoParkBrake,
                            msmf::none, msmf::none>,
                  msmf::Row<StateParkReady, ToOffload, OffLoadFsm, msmf::none,
                            msmf::none>,
                  msmf::Row<OffLoadFsm, ToPark, StateAutoParkBrake, msmf::none,
                            msmf::none>> {};

        template <class Event, class Fsm>
        void no_transition(Event const &e, Fsm &fsm, int state) {}
    };
    typedef msmb::state_machine<AutoFsm_> AutoFsm;

    //  Transition table
    //  Startstate   Event   Nextstate   Action   Guard
    //  vector must less than 20
    struct transition_table : mpl::vector<

                                  msmf::Row<StateManual, Manual2Auto, AutoFsm,
                                            msmf::none, msmf::none>,
                                  msmf::Row<AutoFsm, Auto2Manual, StateManual,
                                            msmf::none, msmf::none>,
                                  msmf::Row<AutoFsm, SysFault, StateEmergency,
                                            msmf::none, msmf::none>> {};

    template <class Event, class Fsm>
    void no_transition(Event const &e, Fsm &fsm, int state) {}
};
typedef msmb::state_machine<ControlFsm_> ControlFsm;

} // namespace control
} // namespace zone3