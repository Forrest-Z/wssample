## the data display node

collect different node information and pub to frontend display.

**Input Data**

1. current steer
2. current brake pedal pos
3. current throttle percentage
4. current EPB
5. current gear
6. current hang angle
7. control steer
8. control throttle percentage
9. control xbr
10. control EPB
11. control gear
12. control hang
13. auto mode state
14. control fsm state
15. waypoints
16. RTK
17. heading
18. Numstate
19. fault
20. speed
21. tyre


**Input Topics**

1. /zone3/kalman_filter/kalman_kinematics
2. /zone3/chassis/rx/state_highspeed
3. /zone3/chassis/rx/state_lowspeed
4. /zone3/chassis/rx/EPB
5. /zone3/chassis/rx/fault
6. /zone3/chassis/rx/tyre
7. /zone3/follow_tracks/way_points
8. /zone3/chassis/rx/container
9. /zone3/control/fsm
10. /zone3/control/highspeed_command
11. /zone3/control/lowspeed_command
12. /zone3/localization/pose


**Output Data**

1. display data


**Output Topics**

1. /zone3/data_display/data_display