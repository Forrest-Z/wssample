; Auto-generated. Do not edit!


(cl:in-package tli65_can_msgs-msg)


;//! \htmlinclude RxSt2.msg.html

(cl:defclass <RxSt2> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (throttle_pedal_pos
    :reader throttle_pedal_pos
    :initarg :throttle_pedal_pos
    :type cl:float
    :initform 0.0)
   (engine_torque_percentage
    :reader engine_torque_percentage
    :initarg :engine_torque_percentage
    :type cl:float
    :initform 0.0)
   (engine_speed
    :reader engine_speed
    :initarg :engine_speed
    :type cl:float
    :initform 0.0)
   (actual_throttle_pedal_pos
    :reader actual_throttle_pedal_pos
    :initarg :actual_throttle_pedal_pos
    :type cl:float
    :initform 0.0)
   (check_sum
    :reader check_sum
    :initarg :check_sum
    :type cl:fixnum
    :initform 0)
   (msg_count
    :reader msg_count
    :initarg :msg_count
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RxSt2 (<RxSt2>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RxSt2>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RxSt2)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tli65_can_msgs-msg:<RxSt2> is deprecated: use tli65_can_msgs-msg:RxSt2 instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RxSt2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:header-val is deprecated.  Use tli65_can_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'throttle_pedal_pos-val :lambda-list '(m))
(cl:defmethod throttle_pedal_pos-val ((m <RxSt2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:throttle_pedal_pos-val is deprecated.  Use tli65_can_msgs-msg:throttle_pedal_pos instead.")
  (throttle_pedal_pos m))

(cl:ensure-generic-function 'engine_torque_percentage-val :lambda-list '(m))
(cl:defmethod engine_torque_percentage-val ((m <RxSt2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:engine_torque_percentage-val is deprecated.  Use tli65_can_msgs-msg:engine_torque_percentage instead.")
  (engine_torque_percentage m))

(cl:ensure-generic-function 'engine_speed-val :lambda-list '(m))
(cl:defmethod engine_speed-val ((m <RxSt2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:engine_speed-val is deprecated.  Use tli65_can_msgs-msg:engine_speed instead.")
  (engine_speed m))

(cl:ensure-generic-function 'actual_throttle_pedal_pos-val :lambda-list '(m))
(cl:defmethod actual_throttle_pedal_pos-val ((m <RxSt2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:actual_throttle_pedal_pos-val is deprecated.  Use tli65_can_msgs-msg:actual_throttle_pedal_pos instead.")
  (actual_throttle_pedal_pos m))

(cl:ensure-generic-function 'check_sum-val :lambda-list '(m))
(cl:defmethod check_sum-val ((m <RxSt2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:check_sum-val is deprecated.  Use tli65_can_msgs-msg:check_sum instead.")
  (check_sum m))

(cl:ensure-generic-function 'msg_count-val :lambda-list '(m))
(cl:defmethod msg_count-val ((m <RxSt2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:msg_count-val is deprecated.  Use tli65_can_msgs-msg:msg_count instead.")
  (msg_count m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RxSt2>) ostream)
  "Serializes a message object of type '<RxSt2>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'throttle_pedal_pos))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'engine_torque_percentage))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'engine_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'actual_throttle_pedal_pos))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'check_sum)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'msg_count)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RxSt2>) istream)
  "Deserializes a message object of type '<RxSt2>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'throttle_pedal_pos) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'engine_torque_percentage) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'engine_speed) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'actual_throttle_pedal_pos) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'check_sum)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'msg_count)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RxSt2>)))
  "Returns string type for a message object of type '<RxSt2>"
  "tli65_can_msgs/RxSt2")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RxSt2)))
  "Returns string type for a message object of type 'RxSt2"
  "tli65_can_msgs/RxSt2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RxSt2>)))
  "Returns md5sum for a message object of type '<RxSt2>"
  "938cd4fdf7b654ca0e40be74922e1cc4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RxSt2)))
  "Returns md5sum for a message object of type 'RxSt2"
  "938cd4fdf7b654ca0e40be74922e1cc4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RxSt2>)))
  "Returns full string definition for message of type '<RxSt2>"
  (cl:format cl:nil "Header header~%~%float64 throttle_pedal_pos~%float64 engine_torque_percentage~%float64 engine_speed~%float64 actual_throttle_pedal_pos~%uint8 check_sum~%uint8 msg_count~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RxSt2)))
  "Returns full string definition for message of type 'RxSt2"
  (cl:format cl:nil "Header header~%~%float64 throttle_pedal_pos~%float64 engine_torque_percentage~%float64 engine_speed~%float64 actual_throttle_pedal_pos~%uint8 check_sum~%uint8 msg_count~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RxSt2>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     8
     8
     8
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RxSt2>))
  "Converts a ROS message object to a list"
  (cl:list 'RxSt2
    (cl:cons ':header (header msg))
    (cl:cons ':throttle_pedal_pos (throttle_pedal_pos msg))
    (cl:cons ':engine_torque_percentage (engine_torque_percentage msg))
    (cl:cons ':engine_speed (engine_speed msg))
    (cl:cons ':actual_throttle_pedal_pos (actual_throttle_pedal_pos msg))
    (cl:cons ':check_sum (check_sum msg))
    (cl:cons ':msg_count (msg_count msg))
))
