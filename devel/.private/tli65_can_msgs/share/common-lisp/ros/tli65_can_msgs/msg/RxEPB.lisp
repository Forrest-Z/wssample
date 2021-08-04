; Auto-generated. Do not edit!


(cl:in-package tli65_can_msgs-msg)


;//! \htmlinclude RxEPB.msg.html

(cl:defclass <RxEPB> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (EPB_state
    :reader EPB_state
    :initarg :EPB_state
    :type cl:fixnum
    :initform 0)
   (EPB_low_pressure_switch
    :reader EPB_low_pressure_switch
    :initarg :EPB_low_pressure_switch
    :type cl:fixnum
    :initform 0)
   (EPB_mode
    :reader EPB_mode
    :initarg :EPB_mode
    :type cl:fixnum
    :initform 0)
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

(cl:defclass RxEPB (<RxEPB>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RxEPB>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RxEPB)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tli65_can_msgs-msg:<RxEPB> is deprecated: use tli65_can_msgs-msg:RxEPB instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RxEPB>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:header-val is deprecated.  Use tli65_can_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'EPB_state-val :lambda-list '(m))
(cl:defmethod EPB_state-val ((m <RxEPB>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:EPB_state-val is deprecated.  Use tli65_can_msgs-msg:EPB_state instead.")
  (EPB_state m))

(cl:ensure-generic-function 'EPB_low_pressure_switch-val :lambda-list '(m))
(cl:defmethod EPB_low_pressure_switch-val ((m <RxEPB>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:EPB_low_pressure_switch-val is deprecated.  Use tli65_can_msgs-msg:EPB_low_pressure_switch instead.")
  (EPB_low_pressure_switch m))

(cl:ensure-generic-function 'EPB_mode-val :lambda-list '(m))
(cl:defmethod EPB_mode-val ((m <RxEPB>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:EPB_mode-val is deprecated.  Use tli65_can_msgs-msg:EPB_mode instead.")
  (EPB_mode m))

(cl:ensure-generic-function 'check_sum-val :lambda-list '(m))
(cl:defmethod check_sum-val ((m <RxEPB>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:check_sum-val is deprecated.  Use tli65_can_msgs-msg:check_sum instead.")
  (check_sum m))

(cl:ensure-generic-function 'msg_count-val :lambda-list '(m))
(cl:defmethod msg_count-val ((m <RxEPB>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:msg_count-val is deprecated.  Use tli65_can_msgs-msg:msg_count instead.")
  (msg_count m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RxEPB>) ostream)
  "Serializes a message object of type '<RxEPB>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'EPB_state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'EPB_low_pressure_switch)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'EPB_mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'check_sum)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'msg_count)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RxEPB>) istream)
  "Deserializes a message object of type '<RxEPB>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'EPB_state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'EPB_low_pressure_switch)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'EPB_mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'check_sum)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'msg_count)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RxEPB>)))
  "Returns string type for a message object of type '<RxEPB>"
  "tli65_can_msgs/RxEPB")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RxEPB)))
  "Returns string type for a message object of type 'RxEPB"
  "tli65_can_msgs/RxEPB")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RxEPB>)))
  "Returns md5sum for a message object of type '<RxEPB>"
  "025343906ddd3d81613312e1487428e2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RxEPB)))
  "Returns md5sum for a message object of type 'RxEPB"
  "025343906ddd3d81613312e1487428e2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RxEPB>)))
  "Returns full string definition for message of type '<RxEPB>"
  (cl:format cl:nil "Header header~%~%uint8 EPB_state~%uint8 EPB_low_pressure_switch~%uint8 EPB_mode~%uint8 check_sum~%uint8 msg_count~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RxEPB)))
  "Returns full string definition for message of type 'RxEPB"
  (cl:format cl:nil "Header header~%~%uint8 EPB_state~%uint8 EPB_low_pressure_switch~%uint8 EPB_mode~%uint8 check_sum~%uint8 msg_count~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RxEPB>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RxEPB>))
  "Converts a ROS message object to a list"
  (cl:list 'RxEPB
    (cl:cons ':header (header msg))
    (cl:cons ':EPB_state (EPB_state msg))
    (cl:cons ':EPB_low_pressure_switch (EPB_low_pressure_switch msg))
    (cl:cons ':EPB_mode (EPB_mode msg))
    (cl:cons ':check_sum (check_sum msg))
    (cl:cons ':msg_count (msg_count msg))
))
