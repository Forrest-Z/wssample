; Auto-generated. Do not edit!


(cl:in-package tli65_can_msgs-msg)


;//! \htmlinclude RxSt1.msg.html

(cl:defclass <RxSt1> (roslisp-msg-protocol:ros-message)
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
   (gear_active
    :reader gear_active
    :initarg :gear_active
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
    :initform 0))
)

(cl:defclass RxSt1 (<RxSt1>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RxSt1>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RxSt1)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tli65_can_msgs-msg:<RxSt1> is deprecated: use tli65_can_msgs-msg:RxSt1 instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RxSt1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:header-val is deprecated.  Use tli65_can_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'auto_mode-val :lambda-list '(m))
(cl:defmethod auto_mode-val ((m <RxSt1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:auto_mode-val is deprecated.  Use tli65_can_msgs-msg:auto_mode instead.")
  (auto_mode m))

(cl:ensure-generic-function 'engine_active-val :lambda-list '(m))
(cl:defmethod engine_active-val ((m <RxSt1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:engine_active-val is deprecated.  Use tli65_can_msgs-msg:engine_active instead.")
  (engine_active m))

(cl:ensure-generic-function 'hand_brake_active-val :lambda-list '(m))
(cl:defmethod hand_brake_active-val ((m <RxSt1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:hand_brake_active-val is deprecated.  Use tli65_can_msgs-msg:hand_brake_active instead.")
  (hand_brake_active m))

(cl:ensure-generic-function 'EBS_active-val :lambda-list '(m))
(cl:defmethod EBS_active-val ((m <RxSt1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:EBS_active-val is deprecated.  Use tli65_can_msgs-msg:EBS_active instead.")
  (EBS_active m))

(cl:ensure-generic-function 'retarder_active-val :lambda-list '(m))
(cl:defmethod retarder_active-val ((m <RxSt1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:retarder_active-val is deprecated.  Use tli65_can_msgs-msg:retarder_active instead.")
  (retarder_active m))

(cl:ensure-generic-function 'gear_active-val :lambda-list '(m))
(cl:defmethod gear_active-val ((m <RxSt1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:gear_active-val is deprecated.  Use tli65_can_msgs-msg:gear_active instead.")
  (gear_active m))

(cl:ensure-generic-function 'EPS_active-val :lambda-list '(m))
(cl:defmethod EPS_active-val ((m <RxSt1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:EPS_active-val is deprecated.  Use tli65_can_msgs-msg:EPS_active instead.")
  (EPS_active m))

(cl:ensure-generic-function 'hang_active-val :lambda-list '(m))
(cl:defmethod hang_active-val ((m <RxSt1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:hang_active-val is deprecated.  Use tli65_can_msgs-msg:hang_active instead.")
  (hang_active m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RxSt1>) ostream)
  "Serializes a message object of type '<RxSt1>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'auto_mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'engine_active)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'hand_brake_active)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'EBS_active)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'retarder_active)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gear_active)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'EPS_active)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'hang_active)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RxSt1>) istream)
  "Deserializes a message object of type '<RxSt1>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'auto_mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'engine_active)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'hand_brake_active)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'EBS_active)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'retarder_active)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gear_active)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'EPS_active)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'hang_active)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RxSt1>)))
  "Returns string type for a message object of type '<RxSt1>"
  "tli65_can_msgs/RxSt1")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RxSt1)))
  "Returns string type for a message object of type 'RxSt1"
  "tli65_can_msgs/RxSt1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RxSt1>)))
  "Returns md5sum for a message object of type '<RxSt1>"
  "f067e802a0fe3c15d96a577607d1f535")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RxSt1)))
  "Returns md5sum for a message object of type 'RxSt1"
  "f067e802a0fe3c15d96a577607d1f535")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RxSt1>)))
  "Returns full string definition for message of type '<RxSt1>"
  (cl:format cl:nil "Header header~%~%uint8 auto_mode~%uint8 engine_active~%uint8 hand_brake_active~%uint8 EBS_active~%uint8 retarder_active~%uint8 gear_active~%uint8 EPS_active~%uint8 hang_active~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RxSt1)))
  "Returns full string definition for message of type 'RxSt1"
  (cl:format cl:nil "Header header~%~%uint8 auto_mode~%uint8 engine_active~%uint8 hand_brake_active~%uint8 EBS_active~%uint8 retarder_active~%uint8 gear_active~%uint8 EPS_active~%uint8 hang_active~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RxSt1>))
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
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RxSt1>))
  "Converts a ROS message object to a list"
  (cl:list 'RxSt1
    (cl:cons ':header (header msg))
    (cl:cons ':auto_mode (auto_mode msg))
    (cl:cons ':engine_active (engine_active msg))
    (cl:cons ':hand_brake_active (hand_brake_active msg))
    (cl:cons ':EBS_active (EBS_active msg))
    (cl:cons ':retarder_active (retarder_active msg))
    (cl:cons ':gear_active (gear_active msg))
    (cl:cons ':EPS_active (EPS_active msg))
    (cl:cons ':hang_active (hang_active msg))
))
