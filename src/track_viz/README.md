## the track rviz node

use rviz to show pose and tracks, in enu coordinate

**Input Data**

1. pose
2. way point
3. track file

**Input Topic**

1. /zone3/localization/pose
2. /zone3/planner/follow_tracks/way_points

**Output Data**

points in rviz with different colors

**Output Topic**

1. /zone3/track_viz/track_markers
2. /zone3/track_viz/pose_marker
3. /zone3/track_viz/heading_marker
4. /zone3/track_viz/waypoints_marker
