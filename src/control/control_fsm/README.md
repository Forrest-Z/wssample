## the control_fsm node

maintain control fsm, according to current truck status, planner, teledrive, pose.

**Input Data**

1. stop or go command
2. planner fsm state
3. waypoints
4. teledrive
5. kalman kinematics
6. container angle
7. current brake padel
8. current gear
9. auto mode
10. air pressure
11. chassis fault
12. pose

**Input Topics**

1. /zone3/planner/follow_tracks/stop_go_command
2. /zone3/planner/planner_fsm
3. /zone3/planner/follow_tracks/way_points
4. /zone3/teledrive/teledrive_command
5. /zone3/kalman_filter/kalman_kinematics
6. /zone3/chassis/rx/container_calib
7. /zone3/chassis/rx/state_highspeed
8. /zone3/chassis/rx/state_lowspeed
9. /zone3/chassis/rx/fault
10. /zone3/localization/pose

**Output Data**

1. control fsm

**Output Topics**

1. /zone3/control/control_fsm