## the planner fsm node

this is a planner fsm node
planner fsm maintain a planner fsm, to decide which planner should be used.
right now, the follow_track planner is used, and in future this planner will mixed with A* and spline.

**Input Data**

1. pose
2. rx highspeed (gear)
3. waypoint

**Input Topics**

1. /zone3/localization/pose
2. /zone3/chassis/rx/state_highspeed
3. /zone3/planner/follow_tracks/way_points

**Output Data**

1. planner fsm

## topics:

1. /zone3/planner/planner_fsm