; Auto-generated. Do not edit!


(cl:in-package tli65_can_msgs-msg)


;//! \htmlinclude RxStLowspeed.msg.html

(cl:defclass <RxStLowspeed> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (auto_mode
    :reader auto_mode
    :initarg :auto_mode
    :type cl:fixnum
    :initform 0)
   (engine_active
    :reader engine_active
    :initarg :engine_active
    :type cl:fixnum
    :initform 0)
   (hand_brake_active
    :reader hand_brake_active
    :initarg :hand_brake_active
    :type cl:fixnum
    :initform 0)
   (EBS_active
    :reader EBS_active
    :initarg :EBS_active
    :type cl:fixnum
    :initform 0)
   (retarder_active
    :reader retarder_active
    :initarg :retarder_active
    :type cl:fixnum
    :initform 0)
   (EPS_active
    :reader EPS_active
    :initarg :EPS_active
    :type cl:fixnum
    :initform 0)
   (hang_active
    :reader hang_active
    :initarg :hang_active
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
   (top_warning_light
    :reader top_warning_light
    :initarg :top_warning_light
    :type cl:fixnum
    :initform 0)
   (air_beep
    :reader air_beep
    :initarg :air_beep
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
   (air_pressure1
    :reader air_pressure1
    :initarg :air_pressure1
    :type cl:float
    :initform 0.0)
   (air_pressure2
    :reader air_pressure2
    :initarg :air_pressure2
    :type cl:float
    :initform 0.0)
   (oil_percentage
    :reader oil_percentage
    :initarg :oil_percentage
    :type cl:float
    :initform 0.0)
   (cooler1
    :reader cooler1
    :initarg :cooler1
    :type cl:fixnum
    :initform 0)
   (cooler2
    :reader cooler2
    :initarg :cooler2
    :type cl:fixnum
    :initform 0)
   (axle_diff_switch
    :reader axle_diff_switch
    :initarg :axle_diff_switch
    :type cl:fixnum
    :initform 0)
   (drier_power
    :reader drier_power
    :initarg :drier_power
    :type cl:fixnum
    :initform 0)
   (inclinometer_power
    :reader inclinometer_power
    :initarg :inclinometer_power
    :type cl:fixnum
    :initform 0)
   (cold_water_treasure_power
    :reader cold_water_treasure_power
    :initarg :cold_water_treasure_power
    :type cl:fixnum
    :initform 0)
   (exhaust_brake_switch
    :reader exhaust_brake_switch
    :initarg :exhaust_brake_switch
    :type cl:fixnum
    :initform 0)
   (sweeper_power
    :reader sweeper_power
    :initarg :sweeper_power
    :type cl:fixnum
    :initform 0)
   (EBS_power
    :reader EBS_power
    :initarg :EBS_power
    :type cl:fixnum
    :initform 0)
   (air_pressure_power
    :reader air_pressure_power
    :initarg :air_pressure_power
    :type cl:fixnum
    :initform 0)
   (hang_up_power
    :reader hang_up_power
    :initarg :hang_up_power
    :type cl:fixnum
    :initform 0)
   (hang_down_power
    :reader hang_down_power
    :initarg :hang_down_power
    :type cl:fixnum
    :initform 0)
   (hang_manual_power
    :reader hang_manual_power
    :initarg :hang_manual_power
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RxStLowspeed (<RxStLowspeed>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RxStLowspeed>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RxStLowspeed)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tli65_can_msgs-msg:<RxStLowspeed> is deprecated: use tli65_can_msgs-msg:RxStLowspeed instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RxStLowspeed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:header-val is deprecated.  Use tli65_can_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'auto_mode-val :lambda-list '(m))
(cl:defmethod auto_mode-val ((m <RxStLowspeed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:auto_mode-val is deprecated.  Use tli65_can_msgs-msg:auto_mode instead.")
  (auto_mode m))

(cl:ensure-generic-function 'engine_active-val :lambda-list '(m))
(cl:defmethod engine_active-val ((m <RxStLowspeed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:engine_active-val is deprecated.  Use tli65_can_msgs-msg:engine_active instead.")
  (engine_active m))

(cl:ensure-generic-function 'hand_brake_active-val :lambda-list '(m))
(cl:defmethod hand_brake_active-val ((m <RxStLowspeed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:hand_brake_active-val is deprecated.  Use tli65_can_msgs-msg:hand_brake_active instead.")
  (hand_brake_active m))

(cl:ensure-generic-function 'EBS_active-val :lambda-list '(m))
(cl:defmethod EBS_active-val ((m <RxStLowspeed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:EBS_active-val is deprecated.  Use tli65_can_msgs-msg:EBS_active instead.")
  (EBS_active m))

(cl:ensure-generic-function 'retarder_active-val :lambda-list '(m))
(cl:defmethod retarder_active-val ((m <RxStLowspeed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:retarder_active-val is deprecated.  Use tli65_can_msgs-msg:retarder_active instead.")
  (retarder_active m))

(cl:ensure-generic-function 'EPS_active-val :lambda-list '(m))
(cl:defmethod EPS_active-val ((m <RxStLowspeed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:EPS_active-val is deprecated.  Use tli65_can_msgs-msg:EPS_active instead.")
  (EPS_active m))

(cl:ensure-generic-function 'hang_active-val :lambda-list '(m))
(cl:defmethod hang_active-val ((m <RxStLowspeed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:hang_active-val is deprecated.  Use tli65_can_msgs-msg:hang_active instead.")
  (hang_active m))

(cl:ensure-generic-function 'left_light-val :lambda-list '(m))
(cl:defmethod left_light-val ((m <RxStLowspeed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:left_light-val is deprecated.  Use tli65_can_msgs-msg:left_light instead.")
  (left_light m))

(cl:ensure-generic-function 'right_light-val :lambda-list '(m))
(cl:defmethod right_light-val ((m <RxStLowspeed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:right_light-val is deprecated.  Use tli65_can_msgs-msg:right_light instead.")
  (right_light m))

(cl:ensure-generic-function 'near_light-val :lambda-list '(m))
(cl:defmethod near_light-val ((m <RxStLowspeed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:near_light-val is deprecated.  Use tli65_can_msgs-msg:near_light instead.")
  (near_light m))

(cl:ensure-generic-function 'far_light-val :lambda-list '(m))
(cl:defmethod far_light-val ((m <RxStLowspeed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:far_light-val is deprecated.  Use tli65_can_msgs-msg:far_light instead.")
  (far_light m))

(cl:ensure-generic-function 'top_warning_light-val :lambda-list '(m))
(cl:defmethod top_warning_light-val ((m <RxStLowspeed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:top_warning_light-val is deprecated.  Use tli65_can_msgs-msg:top_warning_light instead.")
  (top_warning_light m))

(cl:ensure-generic-function 'air_beep-val :lambda-list '(m))
(cl:defmethod air_beep-val ((m <RxStLowspeed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:air_beep-val is deprecated.  Use tli65_can_msgs-msg:air_beep instead.")
  (air_beep m))

(cl:ensure-generic-function 'front_fog_light-val :lambda-list '(m))
(cl:defmethod front_fog_light-val ((m <RxStLowspeed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:front_fog_light-val is deprecated.  Use tli65_can_msgs-msg:front_fog_light instead.")
  (front_fog_light m))

(cl:ensure-generic-function 'front_work_light-val :lambda-list '(m))
(cl:defmethod front_work_light-val ((m <RxStLowspeed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:front_work_light-val is deprecated.  Use tli65_can_msgs-msg:front_work_light instead.")
  (front_work_light m))

(cl:ensure-generic-function 'side_light-val :lambda-list '(m))
(cl:defmethod side_light-val ((m <RxStLowspeed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:side_light-val is deprecated.  Use tli65_can_msgs-msg:side_light instead.")
  (side_light m))

(cl:ensure-generic-function 'position_light-val :lambda-list '(m))
(cl:defmethod position_light-val ((m <RxStLowspeed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:position_light-val is deprecated.  Use tli65_can_msgs-msg:position_light instead.")
  (position_light m))

(cl:ensure-generic-function 'back_left_light-val :lambda-list '(m))
(cl:defmethod back_left_light-val ((m <RxStLowspeed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:back_left_light-val is deprecated.  Use tli65_can_msgs-msg:back_left_light instead.")
  (back_left_light m))

(cl:ensure-generic-function 'back_right_light-val :lambda-list '(m))
(cl:defmethod back_right_light-val ((m <RxStLowspeed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:back_right_light-val is deprecated.  Use tli65_can_msgs-msg:back_right_light instead.")
  (back_right_light m))

(cl:ensure-generic-function 'back_position_light-val :lambda-list '(m))
(cl:defmethod back_position_light-val ((m <RxStLowspeed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:back_position_light-val is deprecated.  Use tli65_can_msgs-msg:back_position_light instead.")
  (back_position_light m))

(cl:ensure-generic-function 'brake_light-val :lambda-list '(m))
(cl:defmethod brake_light-val ((m <RxStLowspeed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:brake_light-val is deprecated.  Use tli65_can_msgs-msg:brake_light instead.")
  (brake_light m))

(cl:ensure-generic-function 'reverse_light-val :lambda-list '(m))
(cl:defmethod reverse_light-val ((m <RxStLowspeed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:reverse_light-val is deprecated.  Use tli65_can_msgs-msg:reverse_light instead.")
  (reverse_light m))

(cl:ensure-generic-function 'back_work_light-val :lambda-list '(m))
(cl:defmethod back_work_light-val ((m <RxStLowspeed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:back_work_light-val is deprecated.  Use tli65_can_msgs-msg:back_work_light instead.")
  (back_work_light m))

(cl:ensure-generic-function 'air_pressure1-val :lambda-list '(m))
(cl:defmethod air_pressure1-val ((m <RxStLowspeed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:air_pressure1-val is deprecated.  Use tli65_can_msgs-msg:air_pressure1 instead.")
  (air_pressure1 m))

(cl:ensure-generic-function 'air_pressure2-val :lambda-list '(m))
(cl:defmethod air_pressure2-val ((m <RxStLowspeed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:air_pressure2-val is deprecated.  Use tli65_can_msgs-msg:air_pressure2 instead.")
  (air_pressure2 m))

(cl:ensure-generic-function 'oil_percentage-val :lambda-list '(m))
(cl:defmethod oil_percentage-val ((m <RxStLowspeed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:oil_percentage-val is deprecated.  Use tli65_can_msgs-msg:oil_percentage instead.")
  (oil_percentage m))

(cl:ensure-generic-function 'cooler1-val :lambda-list '(m))
(cl:defmethod cooler1-val ((m <RxStLowspeed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:cooler1-val is deprecated.  Use tli65_can_msgs-msg:cooler1 instead.")
  (cooler1 m))

(cl:ensure-generic-function 'cooler2-val :lambda-list '(m))
(cl:defmethod cooler2-val ((m <RxStLowspeed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:cooler2-val is deprecated.  Use tli65_can_msgs-msg:cooler2 instead.")
  (cooler2 m))

(cl:ensure-generic-function 'axle_diff_switch-val :lambda-list '(m))
(cl:defmethod axle_diff_switch-val ((m <RxStLowspeed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:axle_diff_switch-val is deprecated.  Use tli65_can_msgs-msg:axle_diff_switch instead.")
  (axle_diff_switch m))

(cl:ensure-generic-function 'drier_power-val :lambda-list '(m))
(cl:defmethod drier_power-val ((m <RxStLowspeed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:drier_power-val is deprecated.  Use tli65_can_msgs-msg:drier_power instead.")
  (drier_power m))

(cl:ensure-generic-function 'inclinometer_power-val :lambda-list '(m))
(cl:defmethod inclinometer_power-val ((m <RxStLowspeed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:inclinometer_power-val is deprecated.  Use tli65_can_msgs-msg:inclinometer_power instead.")
  (inclinometer_power m))

(cl:ensure-generic-function 'cold_water_treasure_power-val :lambda-list '(m))
(cl:defmethod cold_water_treasure_power-val ((m <RxStLowspeed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:cold_water_treasure_power-val is deprecated.  Use tli65_can_msgs-msg:cold_water_treasure_power instead.")
  (cold_water_treasure_power m))

(cl:ensure-generic-function 'exhaust_brake_switch-val :lambda-list '(m))
(cl:defmethod exhaust_brake_switch-val ((m <RxStLowspeed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:exhaust_brake_switch-val is deprecated.  Use tli65_can_msgs-msg:exhaust_brake_switch instead.")
  (exhaust_brake_switch m))

(cl:ensure-generic-function 'sweeper_power-val :lambda-list '(m))
(cl:defmethod sweeper_power-val ((m <RxStLowspeed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:sweeper_power-val is deprecated.  Use tli65_can_msgs-msg:sweeper_power instead.")
  (sweeper_power m))

(cl:ensure-generic-function 'EBS_power-val :lambda-list '(m))
(cl:defmethod EBS_power-val ((m <RxStLowspeed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:EBS_power-val is deprecated.  Use tli65_can_msgs-msg:EBS_power instead.")
  (EBS_power m))

(cl:ensure-generic-function 'air_pressure_power-val :lambda-list '(m))
(cl:defmethod air_pressure_power-val ((m <RxStLowspeed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:air_pressure_power-val is deprecated.  Use tli65_can_msgs-msg:air_pressure_power instead.")
  (air_pressure_power m))

(cl:ensure-generic-function 'hang_up_power-val :lambda-list '(m))
(cl:defmethod hang_up_power-val ((m <RxStLowspeed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:hang_up_power-val is deprecated.  Use tli65_can_msgs-msg:hang_up_power instead.")
  (hang_up_power m))

(cl:ensure-generic-function 'hang_down_power-val :lambda-list '(m))
(cl:defmethod hang_down_power-val ((m <RxStLowspeed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:hang_down_power-val is deprecated.  Use tli65_can_msgs-msg:hang_down_power instead.")
  (hang_down_power m))

(cl:ensure-generic-function 'hang_manual_power-val :lambda-list '(m))
(cl:defmethod hang_manual_power-val ((m <RxStLowspeed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:hang_manual_power-val is deprecated.  Use tli65_can_msgs-msg:hang_manual_power instead.")
  (hang_manual_power m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RxStLowspeed>) ostream)
  "Serializes a message object of type '<RxStLowspeed>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'auto_mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'engine_active)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'hand_brake_active)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'EBS_active)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'retarder_active)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'EPS_active)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'hang_active)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'left_light)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'right_light)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'near_light)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'far_light)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'top_warning_light)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'air_beep)) ostream)
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
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'air_pressure1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'air_pressure2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'oil_percentage))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cooler1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cooler2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'axle_diff_switch)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'drier_power)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'inclinometer_power)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cold_water_treasure_power)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'exhaust_brake_switch)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sweeper_power)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'EBS_power)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'air_pressure_power)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'hang_up_power)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'hang_down_power)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'hang_manual_power)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RxStLowspeed>) istream)
  "Deserializes a message object of type '<RxStLowspeed>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'auto_mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'engine_active)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'hand_brake_active)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'EBS_active)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'retarder_active)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'EPS_active)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'hang_active)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'left_light)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'right_light)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'near_light)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'far_light)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'top_warning_light)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'air_beep)) (cl:read-byte istream))
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
    (cl:setf (cl:slot-value msg 'air_pressure1) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'air_pressure2) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'oil_percentage) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cooler1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cooler2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'axle_diff_switch)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'drier_power)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'inclinometer_power)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cold_water_treasure_power)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'exhaust_brake_switch)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sweeper_power)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'EBS_power)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'air_pressure_power)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'hang_up_power)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'hang_down_power)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'hang_manual_power)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RxStLowspeed>)))
  "Returns string type for a message object of type '<RxStLowspeed>"
  "tli65_can_msgs/RxStLowspeed")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RxStLowspeed)))
  "Returns string type for a message object of type 'RxStLowspeed"
  "tli65_can_msgs/RxStLowspeed")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RxStLowspeed>)))
  "Returns md5sum for a message object of type '<RxStLowspeed>"
  "c2e3c35f27ca2535b83cdc42bd76a652")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RxStLowspeed)))
  "Returns md5sum for a message object of type 'RxStLowspeed"
  "c2e3c35f27ca2535b83cdc42bd76a652")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RxStLowspeed>)))
  "Returns full string definition for message of type '<RxStLowspeed>"
  (cl:format cl:nil "Header header~%~%uint8 auto_mode~%uint8 engine_active~%uint8 hand_brake_active~%uint8 EBS_active~%uint8 retarder_active~%uint8 EPS_active~%uint8 hang_active~%~%uint8 left_light~%uint8 right_light~%uint8 near_light~%uint8 far_light~%uint8 top_warning_light~%uint8 air_beep~%uint8 front_fog_light~%uint8 front_work_light~%uint8 side_light~%uint8 position_light~%uint8 back_left_light~%uint8 back_right_light~%uint8 back_position_light~%uint8 brake_light~%uint8 reverse_light~%uint8 back_work_light~%~%float64 air_pressure1~%float64 air_pressure2~%float64 oil_percentage~%~%uint8 cooler1~%uint8 cooler2~%uint8 axle_diff_switch~%uint8 drier_power~%uint8 inclinometer_power~%uint8 cold_water_treasure_power~%uint8 exhaust_brake_switch~%uint8 sweeper_power~%uint8 EBS_power~%uint8 air_pressure_power~%uint8 hang_up_power~%uint8 hang_down_power~%uint8 hang_manual_power~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RxStLowspeed)))
  "Returns full string definition for message of type 'RxStLowspeed"
  (cl:format cl:nil "Header header~%~%uint8 auto_mode~%uint8 engine_active~%uint8 hand_brake_active~%uint8 EBS_active~%uint8 retarder_active~%uint8 EPS_active~%uint8 hang_active~%~%uint8 left_light~%uint8 right_light~%uint8 near_light~%uint8 far_light~%uint8 top_warning_light~%uint8 air_beep~%uint8 front_fog_light~%uint8 front_work_light~%uint8 side_light~%uint8 position_light~%uint8 back_left_light~%uint8 back_right_light~%uint8 back_position_light~%uint8 brake_light~%uint8 reverse_light~%uint8 back_work_light~%~%float64 air_pressure1~%float64 air_pressure2~%float64 oil_percentage~%~%uint8 cooler1~%uint8 cooler2~%uint8 axle_diff_switch~%uint8 drier_power~%uint8 inclinometer_power~%uint8 cold_water_treasure_power~%uint8 exhaust_brake_switch~%uint8 sweeper_power~%uint8 EBS_power~%uint8 air_pressure_power~%uint8 hang_up_power~%uint8 hang_down_power~%uint8 hang_manual_power~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RxStLowspeed>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
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
     1
     1
     1
     1
     1
     8
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
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RxStLowspeed>))
  "Converts a ROS message object to a list"
  (cl:list 'RxStLowspeed
    (cl:cons ':header (header msg))
    (cl:cons ':auto_mode (auto_mode msg))
    (cl:cons ':engine_active (engine_active msg))
    (cl:cons ':hand_brake_active (hand_brake_active msg))
    (cl:cons ':EBS_active (EBS_active msg))
    (cl:cons ':retarder_active (retarder_active msg))
    (cl:cons ':EPS_active (EPS_active msg))
    (cl:cons ':hang_active (hang_active msg))
    (cl:cons ':left_light (left_light msg))
    (cl:cons ':right_light (right_light msg))
    (cl:cons ':near_light (near_light msg))
    (cl:cons ':far_light (far_light msg))
    (cl:cons ':top_warning_light (top_warning_light msg))
    (cl:cons ':air_beep (air_beep msg))
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
    (cl:cons ':air_pressure1 (air_pressure1 msg))
    (cl:cons ':air_pressure2 (air_pressure2 msg))
    (cl:cons ':oil_percentage (oil_percentage msg))
    (cl:cons ':cooler1 (cooler1 msg))
    (cl:cons ':cooler2 (cooler2 msg))
    (cl:cons ':axle_diff_switch (axle_diff_switch msg))
    (cl:cons ':drier_power (drier_power msg))
    (cl:cons ':inclinometer_power (inclinometer_power msg))
    (cl:cons ':cold_water_treasure_power (cold_water_treasure_power msg))
    (cl:cons ':exhaust_brake_switch (exhaust_brake_switch msg))
    (cl:cons ':sweeper_power (sweeper_power msg))
    (cl:cons ':EBS_power (EBS_power msg))
    (cl:cons ':air_pressure_power (air_pressure_power msg))
    (cl:cons ':hang_up_power (hang_up_power msg))
    (cl:cons ':hang_down_power (hang_down_power msg))
    (cl:cons ':hang_manual_power (hang_manual_power msg))
))
