## the decider node

using BehaviorTree.cpp lib, make decider module. from track points and perception results, ego is decided to bypass from the left, bypass from the right, or keep in current lane, or when bypassing, because of obj founded in the front, ego should go back to the last lane.

the decider stategy is stored in BT_lat_decider.xml and BT_long_decider.xml

**Input Data**

1. lane information, center ref points.
2. teledrive command of way rights.
3. perceprtion objs fusion.

**Input Topics**

1. /zone3/track/lanes
2. /zone3/teledrive/commands
3. /zone3/perception/objs
4. /zone3/perception/drive_area

**Output Data**

1. lateral: bypass from the left, keep in lane, bypass from the right, back into last lane.
2. long: accel, decel, stop.

## topics:

1. /zone3/decider/strategy
