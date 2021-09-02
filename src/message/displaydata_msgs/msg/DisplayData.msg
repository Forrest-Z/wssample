Header header

# RTK
int32 rtk_state 
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

# kalman speed
float64 speed

#GPS HEADING 
float64 headingangle

# Tli65 vehicle parameters can_rx
float64 current_steer
float64 current_brake_pedal_pos
int32 current_throttle_percentage
int32 current_retarder_torque_percentage
int32 current_EPB
string current_gear
int32 current_hangangle
int32 auto_mode
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

# Tli65 vehicle parameters can_rx
float64 control_steer
int32 control_throttle_percentage
float64 control_xbr
int32 control_EPB
string control_gear
string control_hang
int32 control_fsm_state
int32 vehicle_auto_mode
int32 left
int32 right
int32 near
int32 far
int32 top_warn
int32 control_air_beep
int32 front_fog
int32 front_work
int32 side
int32 position
int32 emergency
int32 brake
int32 reverse
int32 back_work

# waypoints planning 
float64 target_x
float64 target_y
int32 planner_fsm

# number of satellite
int32 NumSate

# VEHICLE Fault Information 
# ft1
int32 engine_fault
int32 gear_fault
int32 EBS_fault
int32 EPS_fault
int32 EPB_fault

# ft2
int32 truck_fault_level
int32 engine_fault_code
int32 gear_fault_code

# ft3
int32 EPS_fault_code
int32 EBS_fault_code
int32 electric_fault_code

# tyre
int32 tyre_pressure_leftfront
int32 tyre_pressure_rightfront
float64 front_left_temperature
float64 front_right_temperature