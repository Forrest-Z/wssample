## the gnss node

receive gps driver msg, then change to Pose msg.

IMU pose is calibrated to truck body.

pose is set at rear axle center, not the IMU center.

**Input Data**

1. NavSatFix msg
2. Imu msg

**Input Topics**

1. /zone3/drivers/gps/NavSatFix
2. /zone3/drivers/gps/Imu
3. /zone3/drivers/gps/Twist
4. /zone3/drivers/gps/SystemStatus
5. /zone3/drivers/gps/FilterStatus

**Ouput Data**

1. truck body pose
2. rtk antenna position

**Output Topics**

1. /zone3/localization/pose
