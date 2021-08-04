## the container_angle_calibration node

Receive Pose pitch, and container container_angle , Process the absolute value of the current container_angel into a relative value relative to the chassis


**Input Data**

1. Pose msg
2. RxContainer msg

**Input Topics**

1. /zone3/localization/pose
2. /zone3/chassis/rx/container

**Ouput Data**

1. relative_container_angle, in deg

**Output Topics**

1. /zone3/chassis/rx/container_calib
