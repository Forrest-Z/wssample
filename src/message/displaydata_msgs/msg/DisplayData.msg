Header header

# RTK state
# -1 : no gnss
# 0 : 2D or 3D gnss fix
# 1 : SBAS or Starfire gnss fix
# 2 : Diff or rtk fix
int32 rtk_state 

float64 lat
float64 lng
float64 alt

# enu coord
float64 x_enu
float64 y_enu
float64 z_enu
float64 xy_std_enu

#GPS HEADING 
float64 heading_angle

# number of satellite
int32 NumSate

# kalman velocity
float64 vx

# Tli65 vehicle can_rx
int32 auto_mode
float64 current_steer
float64 current_brake_pedal_pos
int32 current_throttle_percentage
int32 current_retarder_torque_percentage
int32 current_EPB
int32 current_gear
int32 current_hang_angle

int32 air_pressure1
int32 air_pressure2

int32 left_light
int32 right_light
int32 near_light
int32 far_light
int32 air_beep
int32 top_warning_light
int32 front_fog_light
int32 front_work_light
int32 side_light
int32 position_light
int32 back_left_light
int32 back_right_light
int32 back_position_light
int32 brake_light
int32 reverse_light
int32 back_work_light
int32 fuel_consumption

# planner waypoints
string planner_fsm_state
int32 lock_down_index
int32[] pt_index
float64[] wpt_x
float64[] wpt_y

# control
string control_fsm_state
float64 control_steer
int32 control_throttle_percentage
float64 control_xbr
int32 control_EPB
string control_gear
string control_hang
 
# ft1
int32 engine_fault
int32 gear_fault
int32 EBS_fault
int32 EPS_fault
int32 EPB_fault

# tyre
int32 tyre_pressure_leftfront
int32 tyre_pressure_rightfront
float64 front_left_temperature
float64 front_right_temperature