Header header

int8 rtk_state 
# -1 : no gnss
# 0 : 2D or 3D gnss fix
# 1 : SBAS or Starfire gnss fix
# 2 : Diff or rtk fix

# wgs84
float64 lat
float64 lng
float64 alt
float64 latlng_std

# enu coord
float64 x_enu
float64 y_enu
float64 z_enu
float64 xy_std_enu

# v north, east, to ground
float64 vx_ego
float64 vy_ego
float64 vz_ego
float64 speed
float64 ax_ego
float64 ay_ego
float64 az_ego

# ego coord, in rad
float64 roll
float64 pitch
float64 yaw
float64 yaw_rate
geometry_msgs/Quaternion orientation