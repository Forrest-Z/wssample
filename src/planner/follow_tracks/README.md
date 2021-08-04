## the follow_tracks node

this is a planner follow tracks node
use a track in /tracks folder, and then make a truck follow this track.
use fsm to find output waypoint pattern.

**Input Data**

1. recorded track *.trk
2. pose
3. current control fsm state
4. planner fsm state
5. gear

**Input Topics**

1. /zone3/localization/pose
2. /zone3/control/lowspeed_command
3. /zone3/planner/planner_fsm

**Output Data**

1. way point, target kinematics, in ego
2. waypoints for rviz
3. truck stop and go command
4. planner fsm trigger

## topics:

1. /zone3/planner/follow_tracks/way_points
2. /zone3/planner/follow_tracks/way_points_rviz
3. /zone3/planner/follow_tracks/stop_go_command
4. /zone3/planner/fsm_trigger