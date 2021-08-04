; Auto-generated. Do not edit!


(cl:in-package tli65_can_msgs-msg)


;//! \htmlinclude RxSt5.msg.html

(cl:defclass <RxSt5> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (steer_angle
    :reader steer_angle
    :initarg :steer_angle
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

(cl:defclass RxSt5 (<RxSt5>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RxSt5>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RxSt5)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tli65_can_msgs-msg:<RxSt5> is deprecated: use tli65_can_msgs-msg:RxSt5 instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RxSt5>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:header-val is deprecated.  Use tli65_can_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'steer_angle-val :lambda-list '(m))
(cl:defmethod steer_angle-val ((m <RxSt5>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:steer_angle-val is deprecated.  Use tli65_can_msgs-msg:steer_angle instead.")
  (steer_angle m))

(cl:ensure-generic-function 'check_sum-val :lambda-list '(m))
(cl:defmethod check_sum-val ((m <RxSt5>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:check_sum-val is deprecated.  Use tli65_can_msgs-msg:check_sum instead.")
  (check_sum m))

(cl:ensure-generic-function 'msg_count-val :lambda-list '(m))
(cl:defmethod msg_count-val ((m <RxSt5>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:msg_count-val is deprecated.  Use tli65_can_msgs-msg:msg_count instead.")
  (msg_count m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RxSt5>) ostream)
  "Serializes a message object of type '<RxSt5>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'steer_angle))))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RxSt5>) istream)
  "Deserializes a message object of type '<RxSt5>"
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
    (cl:setf (cl:slot-value msg 'steer_angle) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'check_sum)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'msg_count)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RxSt5>)))
  "Returns string type for a message object of type '<RxSt5>"
  "tli65_can_msgs/RxSt5")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RxSt5)))
  "Returns string type for a message object of type 'RxSt5"
  "tli65_can_msgs/RxSt5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RxSt5>)))
  "Returns md5sum for a message object of type '<RxSt5>"
  "4bbe325f4a0c660a125bdfcf200e8108")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RxSt5)))
  "Returns md5sum for a message object of type 'RxSt5"
  "4bbe325f4a0c660a125bdfcf200e8108")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RxSt5>)))
  "Returns full string definition for message of type '<RxSt5>"
  (cl:format cl:nil "Header header~%~%float64 steer_angle ~%#for Tli65~%#float64 electric_steer_torque ~%#float64 steer_angle_rate~%uint8 check_sum~%uint8 msg_count~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RxSt5)))
  "Returns full string definition for message of type 'RxSt5"
  (cl:format cl:nil "Header header~%~%float64 steer_angle ~%#for Tli65~%#float64 electric_steer_torque ~%#float64 steer_angle_rate~%uint8 check_sum~%uint8 msg_count~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RxSt5>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RxSt5>))
  "Converts a ROS message object to a list"
  (cl:list 'RxSt5
    (cl:cons ':header (header msg))
    (cl:cons ':steer_angle (steer_angle msg))
    (cl:cons ':check_sum (check_sum msg))
    (cl:cons ':msg_count (msg_count msg))
))
