; Auto-generated. Do not edit!


(cl:in-package tli65_can_msgs-msg)


;//! \htmlinclude RxMaintain.msg.html

(cl:defclass <RxMaintain> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (emergency_input_backup
    :reader emergency_input_backup
    :initarg :emergency_input_backup
    :type cl:fixnum
    :initform 0)
   (air_filter_warning
    :reader air_filter_warning
    :initarg :air_filter_warning
    :type cl:fixnum
    :initform 0)
   (steer_oil_filter_warning
    :reader steer_oil_filter_warning
    :initarg :steer_oil_filter_warning
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RxMaintain (<RxMaintain>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RxMaintain>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RxMaintain)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tli65_can_msgs-msg:<RxMaintain> is deprecated: use tli65_can_msgs-msg:RxMaintain instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RxMaintain>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:header-val is deprecated.  Use tli65_can_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'emergency_input_backup-val :lambda-list '(m))
(cl:defmethod emergency_input_backup-val ((m <RxMaintain>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:emergency_input_backup-val is deprecated.  Use tli65_can_msgs-msg:emergency_input_backup instead.")
  (emergency_input_backup m))

(cl:ensure-generic-function 'air_filter_warning-val :lambda-list '(m))
(cl:defmethod air_filter_warning-val ((m <RxMaintain>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:air_filter_warning-val is deprecated.  Use tli65_can_msgs-msg:air_filter_warning instead.")
  (air_filter_warning m))

(cl:ensure-generic-function 'steer_oil_filter_warning-val :lambda-list '(m))
(cl:defmethod steer_oil_filter_warning-val ((m <RxMaintain>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:steer_oil_filter_warning-val is deprecated.  Use tli65_can_msgs-msg:steer_oil_filter_warning instead.")
  (steer_oil_filter_warning m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RxMaintain>) ostream)
  "Serializes a message object of type '<RxMaintain>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'emergency_input_backup)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'air_filter_warning)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'steer_oil_filter_warning)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RxMaintain>) istream)
  "Deserializes a message object of type '<RxMaintain>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'emergency_input_backup)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'air_filter_warning)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'steer_oil_filter_warning)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RxMaintain>)))
  "Returns string type for a message object of type '<RxMaintain>"
  "tli65_can_msgs/RxMaintain")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RxMaintain)))
  "Returns string type for a message object of type 'RxMaintain"
  "tli65_can_msgs/RxMaintain")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RxMaintain>)))
  "Returns md5sum for a message object of type '<RxMaintain>"
  "0e06a3f2866bea393708628f10277bb0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RxMaintain)))
  "Returns md5sum for a message object of type 'RxMaintain"
  "0e06a3f2866bea393708628f10277bb0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RxMaintain>)))
  "Returns full string definition for message of type '<RxMaintain>"
  (cl:format cl:nil "Header header~%~%uint8 emergency_input_backup~%uint8 air_filter_warning~%uint8 steer_oil_filter_warning~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RxMaintain)))
  "Returns full string definition for message of type 'RxMaintain"
  (cl:format cl:nil "Header header~%~%uint8 emergency_input_backup~%uint8 air_filter_warning~%uint8 steer_oil_filter_warning~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RxMaintain>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RxMaintain>))
  "Converts a ROS message object to a list"
  (cl:list 'RxMaintain
    (cl:cons ':header (header msg))
    (cl:cons ':emergency_input_backup (emergency_input_backup msg))
    (cl:cons ':air_filter_warning (air_filter_warning msg))
    (cl:cons ':steer_oil_filter_warning (steer_oil_filter_warning msg))
))
