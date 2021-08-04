; Auto-generated. Do not edit!


(cl:in-package tli65_can_msgs-msg)


;//! \htmlinclude RxSt6.msg.html

(cl:defclass <RxSt6> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (gear
    :reader gear
    :initarg :gear
    :type cl:fixnum
    :initform 0)
   (max_forward_gear
    :reader max_forward_gear
    :initarg :max_forward_gear
    :type cl:fixnum
    :initform 0)
   (speed_from_gear
    :reader speed_from_gear
    :initarg :speed_from_gear
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

(cl:defclass RxSt6 (<RxSt6>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RxSt6>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RxSt6)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tli65_can_msgs-msg:<RxSt6> is deprecated: use tli65_can_msgs-msg:RxSt6 instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RxSt6>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:header-val is deprecated.  Use tli65_can_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'gear-val :lambda-list '(m))
(cl:defmethod gear-val ((m <RxSt6>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:gear-val is deprecated.  Use tli65_can_msgs-msg:gear instead.")
  (gear m))

(cl:ensure-generic-function 'max_forward_gear-val :lambda-list '(m))
(cl:defmethod max_forward_gear-val ((m <RxSt6>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:max_forward_gear-val is deprecated.  Use tli65_can_msgs-msg:max_forward_gear instead.")
  (max_forward_gear m))

(cl:ensure-generic-function 'speed_from_gear-val :lambda-list '(m))
(cl:defmethod speed_from_gear-val ((m <RxSt6>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:speed_from_gear-val is deprecated.  Use tli65_can_msgs-msg:speed_from_gear instead.")
  (speed_from_gear m))

(cl:ensure-generic-function 'check_sum-val :lambda-list '(m))
(cl:defmethod check_sum-val ((m <RxSt6>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:check_sum-val is deprecated.  Use tli65_can_msgs-msg:check_sum instead.")
  (check_sum m))

(cl:ensure-generic-function 'msg_count-val :lambda-list '(m))
(cl:defmethod msg_count-val ((m <RxSt6>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:msg_count-val is deprecated.  Use tli65_can_msgs-msg:msg_count instead.")
  (msg_count m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RxSt6>) ostream)
  "Serializes a message object of type '<RxSt6>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'gear)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'max_forward_gear)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
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
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'check_sum)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'msg_count)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RxSt6>) istream)
  "Deserializes a message object of type '<RxSt6>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gear) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'max_forward_gear) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
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
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'check_sum)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'msg_count)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RxSt6>)))
  "Returns string type for a message object of type '<RxSt6>"
  "tli65_can_msgs/RxSt6")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RxSt6)))
  "Returns string type for a message object of type 'RxSt6"
  "tli65_can_msgs/RxSt6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RxSt6>)))
  "Returns md5sum for a message object of type '<RxSt6>"
  "7e92144d475c554c1ac37c95adff72a8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RxSt6)))
  "Returns md5sum for a message object of type 'RxSt6"
  "7e92144d475c554c1ac37c95adff72a8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RxSt6>)))
  "Returns full string definition for message of type '<RxSt6>"
  (cl:format cl:nil "Header header~%~%int8 gear~%int8 max_forward_gear~%float64 speed_from_gear~%uint8 check_sum~%uint8 msg_count~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RxSt6)))
  "Returns full string definition for message of type 'RxSt6"
  (cl:format cl:nil "Header header~%~%int8 gear~%int8 max_forward_gear~%float64 speed_from_gear~%uint8 check_sum~%uint8 msg_count~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RxSt6>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     8
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RxSt6>))
  "Converts a ROS message object to a list"
  (cl:list 'RxSt6
    (cl:cons ':header (header msg))
    (cl:cons ':gear (gear msg))
    (cl:cons ':max_forward_gear (max_forward_gear msg))
    (cl:cons ':speed_from_gear (speed_from_gear msg))
    (cl:cons ':check_sum (check_sum msg))
    (cl:cons ':msg_count (msg_count msg))
))
