## the steer_speed_yawrate node

receive Pose speed, and steer angle(deg), and interpolation of steer_wheel_angle, to calculate yawrate. 

**Input Data**

1. Pose msg
2. Chassis Highspeed msg
3. interpolation of steer_wheel_angle

**Input Topics**

1. /zone3/localization/pose
2. /zone3/chassis/rx/state_highspeed

**Ouput Data**

1. steer-speed-yawrate

**Output Topics**

1. /zone3/localization/steer_speed_yawrate
