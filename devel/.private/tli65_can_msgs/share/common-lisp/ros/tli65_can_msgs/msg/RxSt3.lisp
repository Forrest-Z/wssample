; Auto-generated. Do not edit!


(cl:in-package tli65_can_msgs-msg)


;//! \htmlinclude RxSt3.msg.html

(cl:defclass <RxSt3> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (brake_pedal_pos
    :reader brake_pedal_pos
    :initarg :brake_pedal_pos
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

(cl:defclass RxSt3 (<RxSt3>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RxSt3>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RxSt3)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tli65_can_msgs-msg:<RxSt3> is deprecated: use tli65_can_msgs-msg:RxSt3 instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RxSt3>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:header-val is deprecated.  Use tli65_can_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'brake_pedal_pos-val :lambda-list '(m))
(cl:defmethod brake_pedal_pos-val ((m <RxSt3>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:brake_pedal_pos-val is deprecated.  Use tli65_can_msgs-msg:brake_pedal_pos instead.")
  (brake_pedal_pos m))

(cl:ensure-generic-function 'check_sum-val :lambda-list '(m))
(cl:defmethod check_sum-val ((m <RxSt3>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:check_sum-val is deprecated.  Use tli65_can_msgs-msg:check_sum instead.")
  (check_sum m))

(cl:ensure-generic-function 'msg_count-val :lambda-list '(m))
(cl:defmethod msg_count-val ((m <RxSt3>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:msg_count-val is deprecated.  Use tli65_can_msgs-msg:msg_count instead.")
  (msg_count m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RxSt3>) ostream)
  "Serializes a message object of type '<RxSt3>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'brake_pedal_pos))))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RxSt3>) istream)
  "Deserializes a message object of type '<RxSt3>"
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
    (cl:setf (cl:slot-value msg 'brake_pedal_pos) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'check_sum)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'msg_count)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RxSt3>)))
  "Returns string type for a message object of type '<RxSt3>"
  "tli65_can_msgs/RxSt3")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RxSt3)))
  "Returns string type for a message object of type 'RxSt3"
  "tli65_can_msgs/RxSt3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RxSt3>)))
  "Returns md5sum for a message object of type '<RxSt3>"
  "212d091e04d72844ef8a23023c5cba15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RxSt3)))
  "Returns md5sum for a message object of type 'RxSt3"
  "212d091e04d72844ef8a23023c5cba15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RxSt3>)))
  "Returns full string definition for message of type '<RxSt3>"
  (cl:format cl:nil "Header header~%~%float64 brake_pedal_pos~%uint8 check_sum~%uint8 msg_count~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RxSt3)))
  "Returns full string definition for message of type 'RxSt3"
  (cl:format cl:nil "Header header~%~%float64 brake_pedal_pos~%uint8 check_sum~%uint8 msg_count~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RxSt3>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RxSt3>))
  "Converts a ROS message object to a list"
  (cl:list 'RxSt3
    (cl:cons ':header (header msg))
    (cl:cons ':brake_pedal_pos (brake_pedal_pos msg))
    (cl:cons ':check_sum (check_sum msg))
    (cl:cons ':msg_count (msg_count msg))
))
