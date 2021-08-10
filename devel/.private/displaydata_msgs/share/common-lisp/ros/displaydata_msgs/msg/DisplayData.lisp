; Auto-generated. Do not edit!


(cl:in-package displaydata_msgs-msg)


;//! \htmlinclude DisplayData.msg.html

(cl:defclass <DisplayData> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (rtk_state
    :reader rtk_state
    :initarg :rtk_state
    :type cl:fixnum
    :initform 0)
   (lat
    :reader lat
    :initarg :lat
    :type cl:float
    :initform 0.0)
   (lng
    :reader lng
    :initarg :lng
    :type cl:float
    :initform 0.0)
   (alt
    :reader alt
    :initarg :alt
    :type cl:float
    :initform 0.0)
   (latlng_std
    :reader latlng_std
    :initarg :latlng_std
    :type cl:float
    :initform 0.0)
   (x_enu
    :reader x_enu
    :initarg :x_enu
    :type cl:float
    :initform 0.0)
   (y_enu
    :reader y_enu
    :initarg :y_enu
    :type cl:float
    :initform 0.0)
   (z_enu
    :reader z_enu
    :initarg :z_enu
    :type cl:float
    :initform 0.0)
   (xy_std_enu
    :reader xy_std_enu
    :initarg :xy_std_enu
    :type cl:float
    :initform 0.0)
   (speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0)
   (headingangle
    :reader headingangle
    :initarg :headingangle
    :type cl:float
    :initform 0.0)
   (current_steer
    :reader current_steer
    :initarg :current_steer
    :type cl:float
    :initform 0.0)
   (current_brake_pedal_pos
    :reader current_brake_pedal_pos
    :initarg :current_brake_pedal_pos
    :type cl:float
    :initform 0.0)
   (current_throttle_percentage
    :reader current_throttle_percentage
    :initarg :current_throttle_percentage
    :type cl:fixnum
    :initform 0)
   (current_retarder_torque_percentage
    :reader current_retarder_torque_percentage
    :initarg :current_retarder_torque_percentage
    :type cl:fixnum
    :initform 0)
   (current_EPB
    :reader current_EPB
    :initarg :current_EPB
    :type cl:fixnum
    :initform 0)
   (current_gear
    :reader current_gear
    :initarg :current_gear
    :type cl:string
    :initform "")
   (current_hangangle
    :reader current_hangangle
    :initarg :current_hangangle
    :type cl:fixnum
    :initform 0)
   (auto_mode
    :reader auto_mode
    :initarg :auto_mode
    :type cl:fixnum
    :initform 0)
   (left_light
    :reader left_light
    :initarg :left_light
    :type cl:fixnum
    :initform 0)
   (right_light
    :reader right_light
    :initarg :right_light
    :type cl:fixnum
    :initform 0)
   (near_light
    :reader near_light
    :initarg :near_light
    :type cl:fixnum
    :initform 0)
   (far_light
    :reader far_light
    :initarg :far_light
    :type cl:fixnum
    :initform 0)
   (air_beep
    :reader air_beep
    :initarg :air_beep
    :type cl:fixnum
    :initform 0)
   (top_warning_light
    :reader top_warning_light
    :initarg :top_warning_light
    :type cl:fixnum
    :initform 0)
   (front_fog_light
    :reader front_fog_light
    :initarg :front_fog_light
    :type cl:fixnum
    :initform 0)
   (front_work_light
    :reader front_work_light
    :initarg :front_work_light
    :type cl:fixnum
    :initform 0)
   (side_light
    :reader side_light
    :initarg :side_light
    :type cl:fixnum
    :initform 0)
   (position_light
    :reader position_light
    :initarg :position_light
    :type cl:fixnum
    :initform 0)
   (back_left_light
    :reader back_left_light
    :initarg :back_left_light
    :type cl:fixnum
    :initform 0)
   (back_right_light
    :reader back_right_light
    :initarg :back_right_light
    :type cl:fixnum
    :initform 0)
   (back_position_light
    :reader back_position_light
    :initarg :back_position_light
    :type cl:fixnum
    :initform 0)
   (brake_light
    :reader brake_light
    :initarg :brake_light
    :type cl:fixnum
    :initform 0)
   (reverse_light
    :reader reverse_light
    :initarg :reverse_light
    :type cl:fixnum
    :initform 0)
   (back_work_light
    :reader back_work_light
    :initarg :back_work_light
    :type cl:fixnum
    :initform 0)
   (control_steer
    :reader control_steer
    :initarg :control_steer
    :type cl:float
    :initform 0.0)
   (control_throttle_percentage
    :reader control_throttle_percentage
    :initarg :control_throttle_percentage
    :type cl:fixnum
    :initform 0)
   (control_xbr
    :reader control_xbr
    :initarg :control_xbr
    :type cl:float
    :initform 0.0)
   (control_EPB
    :reader control_EPB
    :initarg :control_EPB
    :type cl:fixnum
    :initform 0)
   (control_gear
    :reader control_gear
    :initarg :control_gear
    :type cl:string
    :initform "")
   (control_hang
    :reader control_hang
    :initarg :control_hang
    :type cl:string
    :initform "")
   (control_fsm_state
    :reader control_fsm_state
    :initarg :control_fsm_state
    :type cl:integer
    :initform 0)
   (left
    :reader left
    :initarg :left
    :type cl:fixnum
    :initform 0)
   (right
    :reader right
    :initarg :right
    :type cl:fixnum
    :initform 0)
   (near
    :reader near
    :initarg :near
    :type cl:fixnum
    :initform 0)
   (far
    :reader far
    :initarg :far
    :type cl:fixnum
    :initform 0)
   (top_warn
    :reader top_warn
    :initarg :top_warn
    :type cl:fixnum
    :initform 0)
   (control_air_beep
    :reader control_air_beep
    :initarg :control_air_beep
    :type cl:fixnum
    :initform 0)
   (front_fog
    :reader front_fog
    :initarg :front_fog
    :type cl:fixnum
    :initform 0)
   (front_work
    :reader front_work
    :initarg :front_work
    :type cl:fixnum
    :initform 0)
   (side
    :reader side
    :initarg :side
    :type cl:fixnum
    :initform 0)
   (position
    :reader position
    :initarg :position
    :type cl:fixnum
    :initform 0)
   (emergency
    :reader emergency
    :initarg :emergency
    :type cl:fixnum
    :initform 0)
   (brake
    :reader brake
    :initarg :brake
    :type cl:fixnum
    :initform 0)
   (reverse
    :reader reverse
    :initarg :reverse
    :type cl:fixnum
    :initform 0)
   (back_work
    :reader back_work
    :initarg :back_work
    :type cl:fixnum
    :initform 0)
   (target_x
    :reader target_x
    :initarg :target_x
    :type cl:float
    :initform 0.0)
   (target_y
    :reader target_y
    :initarg :target_y
    :type cl:float
    :initform 0.0)
   (NumSate
    :reader NumSate
    :initarg :NumSate
    :type cl:fixnum
    :initform 0)
   (engine_fault
    :reader engine_fault
    :initarg :engine_fault
    :type cl:fixnum
    :initform 0)
   (gear_fault
    :reader gear_fault
    :initarg :gear_fault
    :type cl:fixnum
    :initform 0)
   (EBS_fault
    :reader EBS_fault
    :initarg :EBS_fault
    :type cl:fixnum
    :initform 0)
   (EPS_fault
    :reader EPS_fault
    :initarg :EPS_fault
    :type cl:fixnum
    :initform 0)
   (EPB_fault
    :reader EPB_fault
    :initarg :EPB_fault
    :type cl:fixnum
    :initform 0)
   (truck_fault_level
    :reader truck_fault_level
    :initarg :truck_fault_level
    :type cl:fixnum
    :initform 0)
   (engine_fault_code
    :reader engine_fault_code
    :initarg :engine_fault_code
    :type cl:fixnum
    :initform 0)
   (gear_fault_code
    :reader gear_fault_code
    :initarg :gear_fault_code
    :type cl:fixnum
    :initform 0)
   (EPS_fault_code
    :reader EPS_fault_code
    :initarg :EPS_fault_code
    :type cl:fixnum
    :initform 0)
   (EBS_fault_code
    :reader EBS_fault_code
    :initarg :EBS_fault_code
    :type cl:fixnum
    :initform 0)
   (electric_fault_code
    :reader electric_fault_code
    :initarg :electric_fault_code
    :type cl:fixnum
    :initform 0)
   (tyre_pressure_leftfront
    :reader tyre_pressure_leftfront
    :initarg :tyre_pressure_leftfront
    :type cl:fixnum
    :initform 0)
   (tyre_pressure_rightfront
    :reader tyre_pressure_rightfront
    :initarg :tyre_pressure_rightfront
    :type cl:fixnum
    :initform 0)
   (front_left_temperature
    :reader front_left_temperature
    :initarg :front_left_temperature
    :type cl:float
    :initform 0.0)
   (front_right_temperature
    :reader front_right_temperature
    :initarg :front_right_temperature
    :type cl:float
    :initform 0.0))
)

(cl:defclass DisplayData (<DisplayData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DisplayData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DisplayData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name displaydata_msgs-msg:<DisplayData> is deprecated: use displaydata_msgs-msg:DisplayData instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <DisplayData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader displaydata_msgs-msg:header-val is deprecated.  Use displaydata_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'rtk_state-val :lambda-list '(m))
(cl:defmethod rtk_state-val ((m <DisplayData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader displaydata_msgs-msg:rtk_state-val is deprecated.  Use displaydata_msgs-msg:rtk_state instead.")
  (rtk_state m))

(cl:ensure-generic-function 'lat-val :lambda-list '(m))
(cl:defmethod lat-val ((m <DisplayData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader displaydata_msgs-msg:lat-val is deprecated.  Use displaydata_msgs-msg:lat instead.")
  (lat m))

(cl:ensure-generic-function 'lng-val :lambda-list '(m))
(cl:defmethod lng-val ((m <DisplayData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader displaydata_msgs-msg:lng-val is deprecated.  Use displaydata_msgs-msg:lng instead.")
  (lng m))

(cl:ensure-generic-function 'alt-val :lambda-list '(m))
(cl:defmethod alt-val ((m <DisplayData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader displaydata_msgs-msg:alt-val is deprecated.  Use displaydata_msgs-msg:alt instead.")
  (alt m))

(cl:ensure-generic-function 'latlng_std-val :lambda-list '(m))
(cl:defmethod latlng_std-val ((m <DisplayData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader displaydata_msgs-msg:latlng_std-val is deprecated.  Use displaydata_msgs-msg:latlng_std instead.")
  (latlng_std m))

(cl:ensure-generic-function 'x_enu-val :lambda-list '(m))
(cl:defmethod x_enu-val ((m <DisplayData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader displaydata_msgs-msg:x_enu-val is deprecated.  Use displaydata_msgs-msg:x_enu instead.")
  (x_enu m))

(cl:ensure-generic-function 'y_enu-val :lambda-list '(m))
(cl:defmethod y_enu-val ((m <DisplayData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader displaydata_msgs-msg:y_enu-val is deprecated.  Use displaydata_msgs-msg:y_enu instead.")
  (y_enu m))

(cl:ensure-generic-function 'z_enu-val :lambda-list '(m))
(cl:defmethod z_enu-val ((m <DisplayData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader displaydata_msgs-msg:z_enu-val is deprecated.  Use displaydata_msgs-msg:z_enu instead.")
  (z_enu m))

(cl:ensure-generic-function 'xy_std_enu-val :lambda-list '(m))
(cl:defmethod xy_std_enu-val ((m <DisplayData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader displaydata_msgs-msg:xy_std_enu-val is deprecated.  Use displaydata_msgs-msg:xy_std_enu instead.")
  (xy_std_enu m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <DisplayData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader displaydata_msgs-msg:speed-val is deprecated.  Use displaydata_msgs-msg:speed instead.")
  (speed m))

(cl:ensure-generic-function 'headingangle-val :lambda-list '(m))
(cl:defmethod headingangle-val ((m <DisplayData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader displaydata_msgs-msg:headingangle-val is deprecated.  Use displaydata_msgs-msg:headingangle instead.")
  (headingangle m))

(cl:ensure-generic-function 'current_steer-val :lambda-list '(m))
(cl:defmethod current_steer-val ((m <DisplayData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader displaydata_msgs-msg:current_steer-val is deprecated.  Use displaydata_msgs-msg:current_steer instead.")
  (current_steer m))

(cl:ensure-generic-function 'current_brake_pedal_pos-val :lambda-list '(m))
(cl:defmethod current_brake_pedal_pos-val ((m <DisplayData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader displaydata_msgs-msg:current_brake_pedal_pos-val is deprecated.  Use displaydata_msgs-msg:current_brake_pedal_pos instead.")
  (current_brake_pedal_pos m))

(cl:ensure-generic-function 'current_throttle_percentage-val :lambda-list '(m))
(cl:defmethod current_throttle_percentage-val ((m <DisplayData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader displaydata_msgs-msg:current_throttle_percentage-val is deprecated.  Use displaydata_msgs-msg:current_throttle_percentage instead.")
  (current_throttle_percentage m))

(cl:ensure-generic-function 'current_retarder_torque_percentage-val :lambda-list '(m))
(cl:defmethod current_retarder_torque_percentage-val ((m <DisplayData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader displaydata_msgs-msg:current_retarder_torque_percentage-val is deprecated.  Use displaydata_msgs-msg:current_retarder_torque_percentage instead.")
  (current_retarder_torque_percentage m))

(cl:ensure-generic-function 'current_EPB-val :lambda-list '(m))
(cl:defmethod current_EPB-val ((m <DisplayData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader displaydata_msgs-msg:current_EPB-val is deprecated.  Use displaydata_msgs-msg:current_EPB instead.")
  (current_EPB m))

(cl:ensure-generic-function 'current_gear-val :lambda-list '(m))
(cl:defmethod current_gear-val ((m <DisplayData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader displaydata_msgs-msg:current_gear-val is deprecated.  Use displaydata_msgs-msg:current_gear instead.")
  (current_gear m))

(cl:ensure-generic-function 'current_hangangle-val :lambda-list '(m))
(cl:defmethod current_hangangle-val ((m <DisplayData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader displaydata_msgs-msg:current_hangangle-val is deprecated.  Use displaydata_msgs-msg:current_hangangle instead.")
  (current_hangangle m))

(cl:ensure-generic-function 'auto_mode-val :lambda-list '(m))
(cl:defmethod auto_mode-val ((m <DisplayData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader displaydata_msgs-msg:auto_mode-val is deprecated.  Use displaydata_msgs-msg:auto_mode instead.")
  (auto_mode m))

(cl:ensure-generic-function 'left_light-val :lambda-list '(m))
(cl:defmethod left_light-val ((m <DisplayData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader displaydata_msgs-msg:left_light-val is deprecated.  Use displaydata_msgs-msg:left_light instead.")
  (left_light m))

(cl:ensure-generic-function 'right_light-val :lambda-list '(m))
(cl:defmethod right_light-val ((m <DisplayData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader displaydata_msgs-msg:right_light-val is deprecated.  Use displaydata_msgs-msg:right_light instead.")
  (right_light m))

(cl:ensure-generic-function 'near_light-val :lambda-list '(m))
(cl:defmethod near_light-val ((m <DisplayData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader displaydata_msgs-msg:near_light-val is deprecated.  Use displaydata_msgs-msg:near_light instead.")
  (near_light m))

(cl:ensure-generic-function 'far_light-val :lambda-list '(m))
(cl:defmethod far_light-val ((m <DisplayData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader displaydata_msgs-msg:far_light-val is deprecated.  Use displaydata_msgs-msg:far_light instead.")
  (far_light m))

(cl:ensure-generic-function 'air_beep-val :lambda-list '(m))
(cl:defmethod air_beep-val ((m <DisplayData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader displaydata_msgs-msg:air_beep-val is deprecated.  Use displaydata_msgs-msg:air_beep instead.")
  (air_beep m))

(cl:ensure-generic-function 'top_warning_light-val :lambda-list '(m))
(cl:defmethod top_warning_light-val ((m <DisplayData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader displaydata_msgs-msg:top_warning_light-val is deprecated.  Use displaydata_msgs-msg:top_warning_light instead.")
  (top_warning_light m))

(cl:ensure-generic-function 'front_fog_light-val :lambda-list '(m))
(cl:defmethod front_fog_light-val ((m <DisplayData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader displaydata_msgs-msg:front_fog_light-val is deprecated.  Use displaydata_msgs-msg:front_fog_light instead.")
  (front_fog_light m))

(cl:ensure-generic-function 'front_work_light-val :lambda-list '(m))
(cl:defmethod front_work_light-val ((m <DisplayData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader displaydata_msgs-msg:front_work_light-val is deprecated.  Use displaydata_msgs-msg:front_work_light instead.")
  (front_work_light m))

(cl:ensure-generic-function 'side_light-val :lambda-list '(m))
(cl:defmethod side_light-val ((m <DisplayData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader displaydata_msgs-msg:side_light-val is deprecated.  Use displaydata_msgs-msg:side_light instead.")
  (side_light m))

(cl:ensure-generic-function 'position_light-val :lambda-list '(m))
(cl:defmethod position_light-val ((m <DisplayData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader displaydata_msgs-msg:position_light-val is deprecated.  Use displaydata_msgs-msg:position_light instead.")
  (position_light m))

(cl:ensure-generic-function 'back_left_light-val :lambda-list '(m))
(cl:defmethod back_left_light-val ((m <DisplayData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader displaydata_msgs-msg:back_left_light-val is deprecated.  Use displaydata_msgs-msg:back_left_light instead.")
  (back_left_light m))

(cl:ensure-generic-function 'back_right_light-val :lambda-list '(m))
(cl:defmethod back_right_light-val ((m <DisplayData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader displaydata_msgs-msg:back_right_light-val is deprecated.  Use displaydata_msgs-msg:back_right_light instead.")
  (back_right_light m))

(cl:ensure-generic-function 'back_position_light-val :lambda-list '(m))
(cl:defmethod back_position_light-val ((m <DisplayData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader displaydata_msgs-msg:back_position_light-val is deprecated.  Use displaydata_msgs-msg:back_position_light instead.")
  (back_position_light m))

(cl:ensure-generic-function 'brake_light-val :lambda-list '(m))
(cl:defmethod brake_light-val ((m <DisplayData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader displaydata_msgs-msg:brake_light-val is deprecated.  Use displaydata_msgs-msg:brake_light instead.")
  (brake_light m))

(cl:ensure-generic-function 'reverse_light-val :lambda-list '(m))
(cl:defmethod reverse_light-val ((m <DisplayData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader displaydata_msgs-msg:reverse_light-val is deprecated.  Use displaydata_msgs-msg:reverse_light instead.")
  (reverse_light m))

(cl:ensure-generic-function 'back_work_light-val :lambda-list '(m))
(cl:defmethod back_work_light-val ((m <DisplayData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader displaydata_msgs-msg:back_work_light-val is deprecated.  Use displaydata_msgs-msg:back_work_light instead.")
  (back_work_light m))

(cl:ensure-generic-function 'control_steer-val :lambda-list '(m))
(cl:defmethod control_steer-val ((m <DisplayData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader displaydata_msgs-msg:control_steer-val is deprecated.  Use displaydata_msgs-msg:control_steer instead.")
  (control_steer m))

(cl:ensure-generic-function 'control_throttle_percentage-val :lambda-list '(m))
(cl:defmethod control_throttle_percentage-val ((m <DisplayData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader displaydata_msgs-msg:control_throttle_percentage-val is deprecated.  Use displaydata_msgs-msg:control_throttle_percentage instead.")
  (control_throttle_percentage m))

(cl:ensure-generic-function 'control_xbr-val :lambda-list '(m))
(cl:defmethod control_xbr-val ((m <DisplayData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader displaydata_msgs-msg:control_xbr-val is deprecated.  Use displaydata_msgs-msg:control_xbr instead.")
  (control_xbr m))

(cl:ensure-generic-function 'control_EPB-val :lambda-list '(m))
(cl:defmethod control_EPB-val ((m <DisplayData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader displaydata_msgs-msg:control_EPB-val is deprecated.  Use displaydata_msgs-msg:control_EPB instead.")
  (control_EPB m))

(cl:ensure-generic-function 'control_gear-val :lambda-list '(m))
(cl:defmethod control_gear-val ((m <DisplayData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader displaydata_msgs-msg:control_gear-val is deprecated.  Use displaydata_msgs-msg:control_gear instead.")
  (control_gear m))

(cl:ensure-generic-function 'control_hang-val :lambda-list '(m))
(cl:defmethod control_hang-val ((m <DisplayData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader displaydata_msgs-msg:control_hang-val is deprecated.  Use displaydata_msgs-msg:control_hang instead.")
  (control_hang m))

(cl:ensure-generic-function 'control_fsm_state-val :lambda-list '(m))
(cl:defmethod control_fsm_state-val ((m <DisplayData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader displaydata_msgs-msg:control_fsm_state-val is deprecated.  Use displaydata_msgs-msg:control_fsm_state instead.")
  (control_fsm_state m))

(cl:ensure-generic-function 'left-val :lambda-list '(m))
(cl:defmethod left-val ((m <DisplayData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader displaydata_msgs-msg:left-val is deprecated.  Use displaydata_msgs-msg:left instead.")
  (left m))

(cl:ensure-generic-function 'right-val :lambda-list '(m))
(cl:defmethod right-val ((m <DisplayData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader displaydata_msgs-msg:right-val is deprecated.  Use displaydata_msgs-msg:right instead.")
  (right m))

(cl:ensure-generic-function 'near-val :lambda-list '(m))
(cl:defmethod near-val ((m <DisplayData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader displaydata_msgs-msg:near-val is deprecated.  Use displaydata_msgs-msg:near instead.")
  (near m))

(cl:ensure-generic-function 'far-val :lambda-list '(m))
(cl:defmethod far-val ((m <DisplayData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader displaydata_msgs-msg:far-val is deprecated.  Use displaydata_msgs-msg:far instead.")
  (far m))

(cl:ensure-generic-function 'top_warn-val :lambda-list '(m))
(cl:defmethod top_warn-val ((m <DisplayData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader displaydata_msgs-msg:top_warn-val is deprecated.  Use displaydata_msgs-msg:top_warn instead.")
  (top_warn m))

(cl:ensure-generic-function 'control_air_beep-val :lambda-list '(m))
(cl:defmethod control_air_beep-val ((m <DisplayData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader displaydata_msgs-msg:control_air_beep-val is deprecated.  Use displaydata_msgs-msg:control_air_beep instead.")
  (control_air_beep m))

(cl:ensure-generic-function 'front_fog-val :lambda-list '(m))
(cl:defmethod front_fog-val ((m <DisplayData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader displaydata_msgs-msg:front_fog-val is deprecated.  Use displaydata_msgs-msg:front_fog instead.")
  (front_fog m))

(cl:ensure-generic-function 'front_work-val :lambda-list '(m))
(cl:defmethod front_work-val ((m <DisplayData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader displaydata_msgs-msg:front_work-val is deprecated.  Use displaydata_msgs-msg:front_work instead.")
  (front_work m))

(cl:ensure-generic-function 'side-val :lambda-list '(m))
(cl:defmethod side-val ((m <DisplayData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader displaydata_msgs-msg:side-val is deprecated.  Use displaydata_msgs-msg:side instead.")
  (side m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <DisplayData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader displaydata_msgs-msg:position-val is deprecated.  Use displaydata_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'emergency-val :lambda-list '(m))
(cl:defmethod emergency-val ((m <DisplayData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader displaydata_msgs-msg:emergency-val is deprecated.  Use displaydata_msgs-msg:emergency instead.")
  (emergency m))

(cl:ensure-generic-function 'brake-val :lambda-list '(m))
(cl:defmethod brake-val ((m <DisplayData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader displaydata_msgs-msg:brake-val is deprecated.  Use displaydata_msgs-msg:brake instead.")
  (brake m))

(cl:ensure-generic-function 'reverse-val :lambda-list '(m))
(cl:defmethod reverse-val ((m <DisplayData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader displaydata_msgs-msg:reverse-val is deprecated.  Use displaydata_msgs-msg:reverse instead.")
  (reverse m))

(cl:ensure-generic-function 'back_work-val :lambda-list '(m))
(cl:defmethod back_work-val ((m <DisplayData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader displaydata_msgs-msg:back_work-val is deprecated.  Use displaydata_msgs-msg:back_work instead.")
  (back_work m))

(cl:ensure-generic-function 'target_x-val :lambda-list '(m))
(cl:defmethod target_x-val ((m <DisplayData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader displaydata_msgs-msg:target_x-val is deprecated.  Use displaydata_msgs-msg:target_x instead.")
  (target_x m))

(cl:ensure-generic-function 'target_y-val :lambda-list '(m))
(cl:defmethod target_y-val ((m <DisplayData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader displaydata_msgs-msg:target_y-val is deprecated.  Use displaydata_msgs-msg:target_y instead.")
  (target_y m))

(cl:ensure-generic-function 'NumSate-val :lambda-list '(m))
(cl:defmethod NumSate-val ((m <DisplayData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader displaydata_msgs-msg:NumSate-val is deprecated.  Use displaydata_msgs-msg:NumSate instead.")
  (NumSate m))

(cl:ensure-generic-function 'engine_fault-val :lambda-list '(m))
(cl:defmethod engine_fault-val ((m <DisplayData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader displaydata_msgs-msg:engine_fault-val is deprecated.  Use displaydata_msgs-msg:engine_fault instead.")
  (engine_fault m))

(cl:ensure-generic-function 'gear_fault-val :lambda-list '(m))
(cl:defmethod gear_fault-val ((m <DisplayData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader displaydata_msgs-msg:gear_fault-val is deprecated.  Use displaydata_msgs-msg:gear_fault instead.")
  (gear_fault m))

(cl:ensure-generic-function 'EBS_fault-val :lambda-list '(m))
(cl:defmethod EBS_fault-val ((m <DisplayData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader displaydata_msgs-msg:EBS_fault-val is deprecated.  Use displaydata_msgs-msg:EBS_fault instead.")
  (EBS_fault m))

(cl:ensure-generic-function 'EPS_fault-val :lambda-list '(m))
(cl:defmethod EPS_fault-val ((m <DisplayData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader displaydata_msgs-msg:EPS_fault-val is deprecated.  Use displaydata_msgs-msg:EPS_fault instead.")
  (EPS_fault m))

(cl:ensure-generic-function 'EPB_fault-val :lambda-list '(m))
(cl:defmethod EPB_fault-val ((m <DisplayData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader displaydata_msgs-msg:EPB_fault-val is deprecated.  Use displaydata_msgs-msg:EPB_fault instead.")
  (EPB_fault m))

(cl:ensure-generic-function 'truck_fault_level-val :lambda-list '(m))
(cl:defmethod truck_fault_level-val ((m <DisplayData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader displaydata_msgs-msg:truck_fault_level-val is deprecated.  Use displaydata_msgs-msg:truck_fault_level instead.")
  (truck_fault_level m))

(cl:ensure-generic-function 'engine_fault_code-val :lambda-list '(m))
(cl:defmethod engine_fault_code-val ((m <DisplayData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader displaydata_msgs-msg:engine_fault_code-val is deprecated.  Use displaydata_msgs-msg:engine_fault_code instead.")
  (engine_fault_code m))

(cl:ensure-generic-function 'gear_fault_code-val :lambda-list '(m))
(cl:defmethod gear_fault_code-val ((m <DisplayData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader displaydata_msgs-msg:gear_fault_code-val is deprecated.  Use displaydata_msgs-msg:gear_fault_code instead.")
  (gear_fault_code m))

(cl:ensure-generic-function 'EPS_fault_code-val :lambda-list '(m))
(cl:defmethod EPS_fault_code-val ((m <DisplayData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader displaydata_msgs-msg:EPS_fault_code-val is deprecated.  Use displaydata_msgs-msg:EPS_fault_code instead.")
  (EPS_fault_code m))

(cl:ensure-generic-function 'EBS_fault_code-val :lambda-list '(m))
(cl:defmethod EBS_fault_code-val ((m <DisplayData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader displaydata_msgs-msg:EBS_fault_code-val is deprecated.  Use displaydata_msgs-msg:EBS_fault_code instead.")
  (EBS_fault_code m))

(cl:ensure-generic-function 'electric_fault_code-val :lambda-list '(m))
(cl:defmethod electric_fault_code-val ((m <DisplayData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader displaydata_msgs-msg:electric_fault_code-val is deprecated.  Use displaydata_msgs-msg:electric_fault_code instead.")
  (electric_fault_code m))

(cl:ensure-generic-function 'tyre_pressure_leftfront-val :lambda-list '(m))
(cl:defmethod tyre_pressure_leftfront-val ((m <DisplayData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader displaydata_msgs-msg:tyre_pressure_leftfront-val is deprecated.  Use displaydata_msgs-msg:tyre_pressure_leftfront instead.")
  (tyre_pressure_leftfront m))

(cl:ensure-generic-function 'tyre_pressure_rightfront-val :lambda-list '(m))
(cl:defmethod tyre_pressure_rightfront-val ((m <DisplayData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader displaydata_msgs-msg:tyre_pressure_rightfront-val is deprecated.  Use displaydata_msgs-msg:tyre_pressure_rightfront instead.")
  (tyre_pressure_rightfront m))

(cl:ensure-generic-function 'front_left_temperature-val :lambda-list '(m))
(cl:defmethod front_left_temperature-val ((m <DisplayData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader displaydata_msgs-msg:front_left_temperature-val is deprecated.  Use displaydata_msgs-msg:front_left_temperature instead.")
  (front_left_temperature m))

(cl:ensure-generic-function 'front_right_temperature-val :lambda-list '(m))
(cl:defmethod front_right_temperature-val ((m <DisplayData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader displaydata_msgs-msg:front_right_temperature-val is deprecated.  Use displaydata_msgs-msg:front_right_temperature instead.")
  (front_right_temperature m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DisplayData>) ostream)
  "Serializes a message object of type '<DisplayData>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'rtk_state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'lat))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'lng))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'alt))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'latlng_std))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'x_enu))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'y_enu))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'z_enu))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'xy_std_enu))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'headingangle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'current_steer))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'current_brake_pedal_pos))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'current_throttle_percentage)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'current_retarder_torque_percentage)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'current_EPB)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'current_gear))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'current_gear))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'current_hangangle)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'auto_mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'left_light)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'right_light)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'near_light)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'far_light)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'air_beep)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'top_warning_light)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'front_fog_light)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'front_work_light)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'side_light)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'position_light)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'back_left_light)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'back_right_light)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'back_position_light)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'brake_light)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reverse_light)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'back_work_light)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'control_steer))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'control_throttle_percentage)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'control_xbr))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'control_EPB)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'control_gear))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'control_gear))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'control_hang))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'control_hang))
  (cl:let* ((signed (cl:slot-value msg 'control_fsm_state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'left)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'right)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'near)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'far)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'top_warn)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'control_air_beep)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'front_fog)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'front_work)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'side)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'position)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'emergency)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'brake)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reverse)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'back_work)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'target_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'target_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'NumSate)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'engine_fault)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gear_fault)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'EBS_fault)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'EPS_fault)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'EPB_fault)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'truck_fault_level)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'engine_fault_code)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gear_fault_code)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'EPS_fault_code)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'EBS_fault_code)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'electric_fault_code)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tyre_pressure_leftfront)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'tyre_pressure_leftfront)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tyre_pressure_rightfront)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'tyre_pressure_rightfront)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'front_left_temperature))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'front_right_temperature))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DisplayData>) istream)
  "Deserializes a message object of type '<DisplayData>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rtk_state) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lat) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lng) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'alt) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'latlng_std) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x_enu) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y_enu) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'z_enu) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'xy_std_enu) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'headingangle) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'current_steer) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'current_brake_pedal_pos) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'current_throttle_percentage) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'current_retarder_torque_percentage) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'current_EPB)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'current_gear) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'current_gear) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'current_hangangle)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'auto_mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'left_light)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'right_light)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'near_light)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'far_light)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'air_beep)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'top_warning_light)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'front_fog_light)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'front_work_light)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'side_light)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'position_light)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'back_left_light)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'back_right_light)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'back_position_light)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'brake_light)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reverse_light)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'back_work_light)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'control_steer) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'control_throttle_percentage)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'control_xbr) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'control_EPB)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'control_gear) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'control_gear) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'control_hang) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'control_hang) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'control_fsm_state) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'left)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'right)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'near)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'far)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'top_warn)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'control_air_beep)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'front_fog)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'front_work)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'side)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'position)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'emergency)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'brake)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reverse)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'back_work)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'target_x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'target_y) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'NumSate)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'engine_fault)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gear_fault)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'EBS_fault)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'EPS_fault)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'EPB_fault)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'truck_fault_level)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'engine_fault_code)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gear_fault_code)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'EPS_fault_code)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'EBS_fault_code)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'electric_fault_code)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tyre_pressure_leftfront)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'tyre_pressure_leftfront)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tyre_pressure_rightfront)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'tyre_pressure_rightfront)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'front_left_temperature) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'front_right_temperature) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DisplayData>)))
  "Returns string type for a message object of type '<DisplayData>"
  "displaydata_msgs/DisplayData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DisplayData)))
  "Returns string type for a message object of type 'DisplayData"
  "displaydata_msgs/DisplayData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DisplayData>)))
  "Returns md5sum for a message object of type '<DisplayData>"
  "1c2c24deeb8f7c8fd48a595b62f1ae73")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DisplayData)))
  "Returns md5sum for a message object of type 'DisplayData"
  "1c2c24deeb8f7c8fd48a595b62f1ae73")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DisplayData>)))
  "Returns full string definition for message of type '<DisplayData>"
  (cl:format cl:nil "Header header~%~%# RTK~%int8 rtk_state ~%# -1 : no gnss~%# 0 : 2D or 3D gnss fix~%# 1 : SBAS or Starfire gnss fix~%# 2 : Diff or rtk fix~%~%# wgs84~%float64 lat~%float64 lng~%float64 alt~%float64 latlng_std~%~%# enu coord~%float64 x_enu~%float64 y_enu~%float64 z_enu~%float64 xy_std_enu~%~%# kalman speed~%float64 speed~%~%#GPS HEADING ~%float64 headingangle~%~%# Tli65 vehicle parameters can_rx~%float64 current_steer~%float64 current_brake_pedal_pos~%int8 current_throttle_percentage~%int8 current_retarder_torque_percentage~%uint8 current_EPB~%string current_gear~%uint8 current_hangangle~%uint8 auto_mode~%uint8 left_light~%uint8 right_light~%uint8 near_light~%uint8 far_light~%uint8 air_beep~%uint8 top_warning_light~%uint8 front_fog_light~%uint8 front_work_light~%uint8 side_light~%uint8 position_light~%uint8 back_left_light~%uint8 back_right_light~%uint8 back_position_light~%uint8 brake_light~%uint8 reverse_light~%uint8 back_work_light~%~%# Tli65 control parameters control_msgs~%float64 control_steer~%uint8 control_throttle_percentage~%float64 control_xbr~%uint8 control_EPB~%string control_gear~%string control_hang~%int32 control_fsm_state~%uint8 left~%uint8 right~%uint8 near~%uint8 far~%uint8 top_warn~%uint8 control_air_beep~%uint8 front_fog~%uint8 front_work~%uint8 side~%uint8 position~%uint8 emergency~%uint8 brake~%uint8 reverse~%uint8 back_work~%~%# waypoints planning ~%float64 target_x~%float64 target_y~%~%# number of satellite~%uint8 NumSate~%~%# VEHICLE Fault Information ~%# ft1~%uint8 engine_fault~%uint8 gear_fault~%uint8 EBS_fault~%uint8 EPS_fault~%uint8 EPB_fault~%~%# ft2~%uint8 truck_fault_level~%uint8 engine_fault_code~%uint8 gear_fault_code~%~%# ft3~%uint8 EPS_fault_code~%uint8 EBS_fault_code~%uint8 electric_fault_code~%~%# tyre~%uint16 tyre_pressure_leftfront~%uint16 tyre_pressure_rightfront~%float64 front_left_temperature~%float64 front_right_temperature~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DisplayData)))
  "Returns full string definition for message of type 'DisplayData"
  (cl:format cl:nil "Header header~%~%# RTK~%int8 rtk_state ~%# -1 : no gnss~%# 0 : 2D or 3D gnss fix~%# 1 : SBAS or Starfire gnss fix~%# 2 : Diff or rtk fix~%~%# wgs84~%float64 lat~%float64 lng~%float64 alt~%float64 latlng_std~%~%# enu coord~%float64 x_enu~%float64 y_enu~%float64 z_enu~%float64 xy_std_enu~%~%# kalman speed~%float64 speed~%~%#GPS HEADING ~%float64 headingangle~%~%# Tli65 vehicle parameters can_rx~%float64 current_steer~%float64 current_brake_pedal_pos~%int8 current_throttle_percentage~%int8 current_retarder_torque_percentage~%uint8 current_EPB~%string current_gear~%uint8 current_hangangle~%uint8 auto_mode~%uint8 left_light~%uint8 right_light~%uint8 near_light~%uint8 far_light~%uint8 air_beep~%uint8 top_warning_light~%uint8 front_fog_light~%uint8 front_work_light~%uint8 side_light~%uint8 position_light~%uint8 back_left_light~%uint8 back_right_light~%uint8 back_position_light~%uint8 brake_light~%uint8 reverse_light~%uint8 back_work_light~%~%# Tli65 control parameters control_msgs~%float64 control_steer~%uint8 control_throttle_percentage~%float64 control_xbr~%uint8 control_EPB~%string control_gear~%string control_hang~%int32 control_fsm_state~%uint8 left~%uint8 right~%uint8 near~%uint8 far~%uint8 top_warn~%uint8 control_air_beep~%uint8 front_fog~%uint8 front_work~%uint8 side~%uint8 position~%uint8 emergency~%uint8 brake~%uint8 reverse~%uint8 back_work~%~%# waypoints planning ~%float64 target_x~%float64 target_y~%~%# number of satellite~%uint8 NumSate~%~%# VEHICLE Fault Information ~%# ft1~%uint8 engine_fault~%uint8 gear_fault~%uint8 EBS_fault~%uint8 EPS_fault~%uint8 EPB_fault~%~%# ft2~%uint8 truck_fault_level~%uint8 engine_fault_code~%uint8 gear_fault_code~%~%# ft3~%uint8 EPS_fault_code~%uint8 EBS_fault_code~%uint8 electric_fault_code~%~%# tyre~%uint16 tyre_pressure_leftfront~%uint16 tyre_pressure_rightfront~%float64 front_left_temperature~%float64 front_right_temperature~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DisplayData>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     8
     8
     8
     8
     8
     8
     8
     8
     8
     8
     8
     8
     1
     1
     1
     4 (cl:length (cl:slot-value msg 'current_gear))
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     8
     1
     8
     1
     4 (cl:length (cl:slot-value msg 'control_gear))
     4 (cl:length (cl:slot-value msg 'control_hang))
     4
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     8
     8
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     2
     2
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DisplayData>))
  "Converts a ROS message object to a list"
  (cl:list 'DisplayData
    (cl:cons ':header (header msg))
    (cl:cons ':rtk_state (rtk_state msg))
    (cl:cons ':lat (lat msg))
    (cl:cons ':lng (lng msg))
    (cl:cons ':alt (alt msg))
    (cl:cons ':latlng_std (latlng_std msg))
    (cl:cons ':x_enu (x_enu msg))
    (cl:cons ':y_enu (y_enu msg))
    (cl:cons ':z_enu (z_enu msg))
    (cl:cons ':xy_std_enu (xy_std_enu msg))
    (cl:cons ':speed (speed msg))
    (cl:cons ':headingangle (headingangle msg))
    (cl:cons ':current_steer (current_steer msg))
    (cl:cons ':current_brake_pedal_pos (current_brake_pedal_pos msg))
    (cl:cons ':current_throttle_percentage (current_throttle_percentage msg))
    (cl:cons ':current_retarder_torque_percentage (current_retarder_torque_percentage msg))
    (cl:cons ':current_EPB (current_EPB msg))
    (cl:cons ':current_gear (current_gear msg))
    (cl:cons ':current_hangangle (current_hangangle msg))
    (cl:cons ':auto_mode (auto_mode msg))
    (cl:cons ':left_light (left_light msg))
    (cl:cons ':right_light (right_light msg))
    (cl:cons ':near_light (near_light msg))
    (cl:cons ':far_light (far_light msg))
    (cl:cons ':air_beep (air_beep msg))
    (cl:cons ':top_warning_light (top_warning_light msg))
    (cl:cons ':front_fog_light (front_fog_light msg))
    (cl:cons ':front_work_light (front_work_light msg))
    (cl:cons ':side_light (side_light msg))
    (cl:cons ':position_light (position_light msg))
    (cl:cons ':back_left_light (back_left_light msg))
    (cl:cons ':back_right_light (back_right_light msg))
    (cl:cons ':back_position_light (back_position_light msg))
    (cl:cons ':brake_light (brake_light msg))
    (cl:cons ':reverse_light (reverse_light msg))
    (cl:cons ':back_work_light (back_work_light msg))
    (cl:cons ':control_steer (control_steer msg))
    (cl:cons ':control_throttle_percentage (control_throttle_percentage msg))
    (cl:cons ':control_xbr (control_xbr msg))
    (cl:cons ':control_EPB (control_EPB msg))
    (cl:cons ':control_gear (control_gear msg))
    (cl:cons ':control_hang (control_hang msg))
    (cl:cons ':control_fsm_state (control_fsm_state msg))
    (cl:cons ':left (left msg))
    (cl:cons ':right (right msg))
    (cl:cons ':near (near msg))
    (cl:cons ':far (far msg))
    (cl:cons ':top_warn (top_warn msg))
    (cl:cons ':control_air_beep (control_air_beep msg))
    (cl:cons ':front_fog (front_fog msg))
    (cl:cons ':front_work (front_work msg))
    (cl:cons ':side (side msg))
    (cl:cons ':position (position msg))
    (cl:cons ':emergency (emergency msg))
    (cl:cons ':brake (brake msg))
    (cl:cons ':reverse (reverse msg))
    (cl:cons ':back_work (back_work msg))
    (cl:cons ':target_x (target_x msg))
    (cl:cons ':target_y (target_y msg))
    (cl:cons ':NumSate (NumSate msg))
    (cl:cons ':engine_fault (engine_fault msg))
    (cl:cons ':gear_fault (gear_fault msg))
    (cl:cons ':EBS_fault (EBS_fault msg))
    (cl:cons ':EPS_fault (EPS_fault msg))
    (cl:cons ':EPB_fault (EPB_fault msg))
    (cl:cons ':truck_fault_level (truck_fault_level msg))
    (cl:cons ':engine_fault_code (engine_fault_code msg))
    (cl:cons ':gear_fault_code (gear_fault_code msg))
    (cl:cons ':EPS_fault_code (EPS_fault_code msg))
    (cl:cons ':EBS_fault_code (EBS_fault_code msg))
    (cl:cons ':electric_fault_code (electric_fault_code msg))
    (cl:cons ':tyre_pressure_leftfront (tyre_pressure_leftfront msg))
    (cl:cons ':tyre_pressure_rightfront (tyre_pressure_rightfront msg))
    (cl:cons ':front_left_temperature (front_left_temperature msg))
    (cl:cons ':front_right_temperature (front_right_temperature msg))
))
