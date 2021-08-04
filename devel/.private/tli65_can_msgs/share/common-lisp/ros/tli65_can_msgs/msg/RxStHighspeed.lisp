; Auto-generated. Do not edit!


(cl:in-package tli65_can_msgs-msg)


;//! \htmlinclude RxStHighspeed.msg.html

(cl:defclass <RxStHighspeed> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (throttle_pedal_pos
    :reader throttle_pedal_pos
    :initarg :throttle_pedal_pos
    :type cl:fixnum
    :initform 0)
   (engine_torque_percentage
    :reader engine_torque_percentage
    :initarg :engine_torque_percentage
    :type cl:fixnum
    :initform 0)
   (engine_speed
    :reader engine_speed
    :initarg :engine_speed
    :type cl:integer
    :initform 0)
   (actual_throttle_pedal_pos
    :reader actual_throttle_pedal_pos
    :initarg :actual_throttle_pedal_pos
    :type cl:fixnum
    :initform 0)
   (brake_pedal_pos
    :reader brake_pedal_pos
    :initarg :brake_pedal_pos
    :type cl:fixnum
    :initform 0)
   (retarder_torque_percentage
    :reader retarder_torque_percentage
    :initarg :retarder_torque_percentage
    :type cl:fixnum
    :initform 0)
   (steer_angle
    :reader steer_angle
    :initarg :steer_angle
    :type cl:integer
    :initform 0)
   (electric_steer_torque
    :reader electric_steer_torque
    :initarg :electric_steer_torque
    :type cl:integer
    :initform 0)
   (steer_angle_rate
    :reader steer_angle_rate
    :initarg :steer_angle_rate
    :type cl:integer
    :initform 0)
   (speed_from_gear
    :reader speed_from_gear
    :initarg :speed_from_gear
    :type cl:float
    :initform 0.0)
   (gear_active
    :reader gear_active
    :initarg :gear_active
    :type cl:fixnum
    :initform 0)
   (max_forward_gear
    :reader max_forward_gear
    :initarg :max_forward_gear
    :type cl:fixnum
    :initform 0)
   (gear
    :reader gear
    :initarg :gear
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RxStHighspeed (<RxStHighspeed>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RxStHighspeed>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RxStHighspeed)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tli65_can_msgs-msg:<RxStHighspeed> is deprecated: use tli65_can_msgs-msg:RxStHighspeed instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RxStHighspeed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:header-val is deprecated.  Use tli65_can_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'throttle_pedal_pos-val :lambda-list '(m))
(cl:defmethod throttle_pedal_pos-val ((m <RxStHighspeed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:throttle_pedal_pos-val is deprecated.  Use tli65_can_msgs-msg:throttle_pedal_pos instead.")
  (throttle_pedal_pos m))

(cl:ensure-generic-function 'engine_torque_percentage-val :lambda-list '(m))
(cl:defmethod engine_torque_percentage-val ((m <RxStHighspeed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:engine_torque_percentage-val is deprecated.  Use tli65_can_msgs-msg:engine_torque_percentage instead.")
  (engine_torque_percentage m))

(cl:ensure-generic-function 'engine_speed-val :lambda-list '(m))
(cl:defmethod engine_speed-val ((m <RxStHighspeed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:engine_speed-val is deprecated.  Use tli65_can_msgs-msg:engine_speed instead.")
  (engine_speed m))

(cl:ensure-generic-function 'actual_throttle_pedal_pos-val :lambda-list '(m))
(cl:defmethod actual_throttle_pedal_pos-val ((m <RxStHighspeed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:actual_throttle_pedal_pos-val is deprecated.  Use tli65_can_msgs-msg:actual_throttle_pedal_pos instead.")
  (actual_throttle_pedal_pos m))

(cl:ensure-generic-function 'brake_pedal_pos-val :lambda-list '(m))
(cl:defmethod brake_pedal_pos-val ((m <RxStHighspeed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:brake_pedal_pos-val is deprecated.  Use tli65_can_msgs-msg:brake_pedal_pos instead.")
  (brake_pedal_pos m))

(cl:ensure-generic-function 'retarder_torque_percentage-val :lambda-list '(m))
(cl:defmethod retarder_torque_percentage-val ((m <RxStHighspeed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:retarder_torque_percentage-val is deprecated.  Use tli65_can_msgs-msg:retarder_torque_percentage instead.")
  (retarder_torque_percentage m))

(cl:ensure-generic-function 'steer_angle-val :lambda-list '(m))
(cl:defmethod steer_angle-val ((m <RxStHighspeed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:steer_angle-val is deprecated.  Use tli65_can_msgs-msg:steer_angle instead.")
  (steer_angle m))

(cl:ensure-generic-function 'electric_steer_torque-val :lambda-list '(m))
(cl:defmethod electric_steer_torque-val ((m <RxStHighspeed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:electric_steer_torque-val is deprecated.  Use tli65_can_msgs-msg:electric_steer_torque instead.")
  (electric_steer_torque m))

(cl:ensure-generic-function 'steer_angle_rate-val :lambda-list '(m))
(cl:defmethod steer_angle_rate-val ((m <RxStHighspeed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:steer_angle_rate-val is deprecated.  Use tli65_can_msgs-msg:steer_angle_rate instead.")
  (steer_angle_rate m))

(cl:ensure-generic-function 'speed_from_gear-val :lambda-list '(m))
(cl:defmethod speed_from_gear-val ((m <RxStHighspeed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:speed_from_gear-val is deprecated.  Use tli65_can_msgs-msg:speed_from_gear instead.")
  (speed_from_gear m))

(cl:ensure-generic-function 'gear_active-val :lambda-list '(m))
(cl:defmethod gear_active-val ((m <RxStHighspeed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:gear_active-val is deprecated.  Use tli65_can_msgs-msg:gear_active instead.")
  (gear_active m))

(cl:ensure-generic-function 'max_forward_gear-val :lambda-list '(m))
(cl:defmethod max_forward_gear-val ((m <RxStHighspeed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:max_forward_gear-val is deprecated.  Use tli65_can_msgs-msg:max_forward_gear instead.")
  (max_forward_gear m))

(cl:ensure-generic-function 'gear-val :lambda-list '(m))
(cl:defmethod gear-val ((m <RxStHighspeed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:gear-val is deprecated.  Use tli65_can_msgs-msg:gear instead.")
  (gear m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RxStHighspeed>) ostream)
  "Serializes a message object of type '<RxStHighspeed>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'throttle_pedal_pos)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'engine_torque_percentage)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'engine_speed)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'actual_throttle_pedal_pos)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'brake_pedal_pos)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'retarder_torque_percentage)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'steer_angle)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'electric_steer_torque)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'steer_angle_rate)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'speed_from_gear))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gear_active)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'max_forward_gear)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'gear)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RxStHighspeed>) istream)
  "Deserializes a message object of type '<RxStHighspeed>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'throttle_pedal_pos) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'engine_torque_percentage) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'engine_speed) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'actual_throttle_pedal_pos) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'brake_pedal_pos) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'retarder_torque_percentage) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'steer_angle) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'electric_steer_torque) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'steer_angle_rate) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed_from_gear) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gear_active)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'max_forward_gear) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gear) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RxStHighspeed>)))
  "Returns string type for a message object of type '<RxStHighspeed>"
  "tli65_can_msgs/RxStHighspeed")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RxStHighspeed)))
  "Returns string type for a message object of type 'RxStHighspeed"
  "tli65_can_msgs/RxStHighspeed")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RxStHighspeed>)))
  "Returns md5sum for a message object of type '<RxStHighspeed>"
  "d6667d21888a890c2ee6ca8cc4b0a4e9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RxStHighspeed)))
  "Returns md5sum for a message object of type 'RxStHighspeed"
  "d6667d21888a890c2ee6ca8cc4b0a4e9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RxStHighspeed>)))
  "Returns full string definition for message of type '<RxStHighspeed>"
  (cl:format cl:nil "Header header~%~%int8 throttle_pedal_pos~%int8 engine_torque_percentage~%int32 engine_speed~%int8 actual_throttle_pedal_pos~%int8 brake_pedal_pos~%int8 retarder_torque_percentage~%int32 steer_angle~%int32 electric_steer_torque~%int32 steer_angle_rate~%float64 speed_from_gear~%uint8 gear_active~%int8 max_forward_gear~%int8 gear~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RxStHighspeed)))
  "Returns full string definition for message of type 'RxStHighspeed"
  (cl:format cl:nil "Header header~%~%int8 throttle_pedal_pos~%int8 engine_torque_percentage~%int32 engine_speed~%int8 actual_throttle_pedal_pos~%int8 brake_pedal_pos~%int8 retarder_torque_percentage~%int32 steer_angle~%int32 electric_steer_torque~%int32 steer_angle_rate~%float64 speed_from_gear~%uint8 gear_active~%int8 max_forward_gear~%int8 gear~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RxStHighspeed>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     4
     1
     1
     1
     4
     4
     4
     8
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RxStHighspeed>))
  "Converts a ROS message object to a list"
  (cl:list 'RxStHighspeed
    (cl:cons ':header (header msg))
    (cl:cons ':throttle_pedal_pos (throttle_pedal_pos msg))
    (cl:cons ':engine_torque_percentage (engine_torque_percentage msg))
    (cl:cons ':engine_speed (engine_speed msg))
    (cl:cons ':actual_throttle_pedal_pos (actual_throttle_pedal_pos msg))
    (cl:cons ':brake_pedal_pos (brake_pedal_pos msg))
    (cl:cons ':retarder_torque_percentage (retarder_torque_percentage msg))
    (cl:cons ':steer_angle (steer_angle msg))
    (cl:cons ':electric_steer_torque (electric_steer_torque msg))
    (cl:cons ':steer_angle_rate (steer_angle_rate msg))
    (cl:cons ':speed_from_gear (speed_from_gear msg))
    (cl:cons ':gear_active (gear_active msg))
    (cl:cons ':max_forward_gear (max_forward_gear msg))
    (cl:cons ':gear (gear msg))
))
