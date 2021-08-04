## the kalman_kinematics node

Receive Pose vx_ego, and Chassis/rx/speed front_axle_speed, Use Kalman filter algorithm to do fusion to get the estimated value of vehicle speed. Gear msg is used for direction judgment. A positive speed value means forward, a negative speed value means reverse

Receive Pose yaw_rate, and steer_speed_yawrate yaw_rate , Use Kalman filter algorithm to do fusion to get the estimated value of vehicle yaw_rate.


**Input Data**

1. Pose msg
2. Chassis speed msg
3. Chassis gear msg
4. SteerSpeedYawRate msg

**Input Topics**

1. /zone3/localization/pose
2. /zone3/chassis/rx/speed
3. /zone3/chassis/rx/state_highspeed
4. /zone3/localization/steer_speed_yawrate

**Ouput Data**

1. kalman_vx
2. kalman_yawrate

**Output Topics**

1. /zone3/kalman_filter/kalman_kinematics
