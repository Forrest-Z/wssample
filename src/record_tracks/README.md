## the track recorder node

create a map using pose and chassis can data, and two sources are synchonized in 30ms. the tracking points are stored in a protobuf file in /tracks folder.

**Input Data**

1. localization pose, Quaternion should be truck body's(not imu), and position should be rtk antenna's.
2. steer wheel angle feedback
3. wheel speed feedback
4. throttle percentage feedback
5. xbr value feedback

**Input Topics**

1. /zone3/localization/pose
2. /zone3/chassis/rx/state_highspeed
3. /zone3/chassis/rx/state_lowspeed
4. /zone3/chassis/rx/speed

**Output File**

protobuf coded track stored in /tracks
