Header header

# RTK
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

# kalman speed
float64 speed

#GPS HEADING 
float64 headingangle

# Tli65 vehicle parameters can_rx
float64 current_steer
float64 current_brake_pedal_pos
int8 current_throttle_percentage
int8 current_retarder_torque_percentage
uint8 current_EPB
string current_gear
uint8 current_hangangle
uint8 auto_mode
uint8 left_light
uint8 right_light
uint8 near_light
uint8 far_light
uint8 air_beep
uint8 top_warning_light
uint8 front_fog_light
uint8 front_work_light
uint8 side_light
uint8 position_light
uint8 back_left_light
uint8 back_right_light
uint8 back_position_light
uint8 brake_light
uint8 reverse_light
uint8 back_work_light

# Tli65 control parameters control_msgs
float64 control_steer
uint8 control_throttle_percentage
float64 control_xbr
uint8 control_EPB
string control_gear
string control_hang
string control_fsm_state
uint8 left
uint8 right
uint8 near
uint8 far
uint8 top_warn
uint8 control_air_beep
uint8 front_fog
uint8 front_work
uint8 side
uint8 position
uint8 emergency
uint8 brake
uint8 reverse
uint8 back_work

# waypoints planning 
float64 target_x
float64 target_y

# number of satellite
uint8 NumSate

# VEHICLE Fault Information 
# ft1
uint8 engine_fault
uint8 gear_fault
uint8 EBS_fault
uint8 EPS_fault
uint8 EPB_fault

# ft2
uint8 truck_fault_level
uint8 engine_fault_code
uint8 gear_fault_code

# ft3
uint8 EPS_fault_code
uint8 EBS_fault_code
uint8 electric_fault_code

# tyre
uint16 tyre_pressure_leftfront
uint16 tyre_pressure_rightfront
float64 front_left_temperature
float64 front_right_temperature