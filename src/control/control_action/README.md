## the control base node

receive planner msg, teledrive msg, control fsm and kalman msg, use control algorithm to output steer, throttle, and xbr.

**Input Data**

1. control fsm
2. way point in ego coordinate
3. teledrive command
4. current gear
5. kalman yawrate
6. kalman speed

**Input Topics**

1. /zone3/control/control_fsm
2. /zone3/planner/follow_tracks/way_points
3. /zone3/teledrive/teledrive_command
4. /zone3/kalman_filter/kalman_kinematics

**Output Data**

1. throttle
2. xbr
3. epb
4. retarder
5. steer
6. gear
7. hang
8. light

**Output Topics**

1. /zone3/control/highspeed_command
2. /zone3/control/lowspeed_command