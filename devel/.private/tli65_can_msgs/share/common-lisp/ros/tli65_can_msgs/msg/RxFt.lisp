; Auto-generated. Do not edit!


(cl:in-package tli65_can_msgs-msg)


;//! \htmlinclude RxFt.msg.html

(cl:defclass <RxFt> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
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
    :initform 0))
)

(cl:defclass RxFt (<RxFt>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RxFt>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RxFt)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tli65_can_msgs-msg:<RxFt> is deprecated: use tli65_can_msgs-msg:RxFt instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RxFt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:header-val is deprecated.  Use tli65_can_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'engine_fault-val :lambda-list '(m))
(cl:defmethod engine_fault-val ((m <RxFt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:engine_fault-val is deprecated.  Use tli65_can_msgs-msg:engine_fault instead.")
  (engine_fault m))

(cl:ensure-generic-function 'gear_fault-val :lambda-list '(m))
(cl:defmethod gear_fault-val ((m <RxFt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:gear_fault-val is deprecated.  Use tli65_can_msgs-msg:gear_fault instead.")
  (gear_fault m))

(cl:ensure-generic-function 'EBS_fault-val :lambda-list '(m))
(cl:defmethod EBS_fault-val ((m <RxFt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:EBS_fault-val is deprecated.  Use tli65_can_msgs-msg:EBS_fault instead.")
  (EBS_fault m))

(cl:ensure-generic-function 'EPS_fault-val :lambda-list '(m))
(cl:defmethod EPS_fault-val ((m <RxFt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:EPS_fault-val is deprecated.  Use tli65_can_msgs-msg:EPS_fault instead.")
  (EPS_fault m))

(cl:ensure-generic-function 'EPB_fault-val :lambda-list '(m))
(cl:defmethod EPB_fault-val ((m <RxFt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:EPB_fault-val is deprecated.  Use tli65_can_msgs-msg:EPB_fault instead.")
  (EPB_fault m))

(cl:ensure-generic-function 'truck_fault_level-val :lambda-list '(m))
(cl:defmethod truck_fault_level-val ((m <RxFt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:truck_fault_level-val is deprecated.  Use tli65_can_msgs-msg:truck_fault_level instead.")
  (truck_fault_level m))

(cl:ensure-generic-function 'engine_fault_code-val :lambda-list '(m))
(cl:defmethod engine_fault_code-val ((m <RxFt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:engine_fault_code-val is deprecated.  Use tli65_can_msgs-msg:engine_fault_code instead.")
  (engine_fault_code m))

(cl:ensure-generic-function 'gear_fault_code-val :lambda-list '(m))
(cl:defmethod gear_fault_code-val ((m <RxFt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:gear_fault_code-val is deprecated.  Use tli65_can_msgs-msg:gear_fault_code instead.")
  (gear_fault_code m))

(cl:ensure-generic-function 'EPS_fault_code-val :lambda-list '(m))
(cl:defmethod EPS_fault_code-val ((m <RxFt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:EPS_fault_code-val is deprecated.  Use tli65_can_msgs-msg:EPS_fault_code instead.")
  (EPS_fault_code m))

(cl:ensure-generic-function 'EBS_fault_code-val :lambda-list '(m))
(cl:defmethod EBS_fault_code-val ((m <RxFt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:EBS_fault_code-val is deprecated.  Use tli65_can_msgs-msg:EBS_fault_code instead.")
  (EBS_fault_code m))

(cl:ensure-generic-function 'electric_fault_code-val :lambda-list '(m))
(cl:defmethod electric_fault_code-val ((m <RxFt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:electric_fault_code-val is deprecated.  Use tli65_can_msgs-msg:electric_fault_code instead.")
  (electric_fault_code m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RxFt>) ostream)
  "Serializes a message object of type '<RxFt>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
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
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RxFt>) istream)
  "Deserializes a message object of type '<RxFt>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RxFt>)))
  "Returns string type for a message object of type '<RxFt>"
  "tli65_can_msgs/RxFt")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RxFt)))
  "Returns string type for a message object of type 'RxFt"
  "tli65_can_msgs/RxFt")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RxFt>)))
  "Returns md5sum for a message object of type '<RxFt>"
  "cced9dfa61b3727cda06b24391589f3a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RxFt)))
  "Returns md5sum for a message object of type 'RxFt"
  "cced9dfa61b3727cda06b24391589f3a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RxFt>)))
  "Returns full string definition for message of type '<RxFt>"
  (cl:format cl:nil "Header header~%~%# ft1~%uint8 engine_fault~%uint8 gear_fault~%uint8 EBS_fault~%uint8 EPS_fault~%uint8 EPB_fault~%~%# ft2~%uint8 truck_fault_level~%uint8 engine_fault_code~%uint8 gear_fault_code~%~%# ft3~%uint8 EPS_fault_code~%uint8 EBS_fault_code~%uint8 electric_fault_code~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RxFt)))
  "Returns full string definition for message of type 'RxFt"
  (cl:format cl:nil "Header header~%~%# ft1~%uint8 engine_fault~%uint8 gear_fault~%uint8 EBS_fault~%uint8 EPS_fault~%uint8 EPB_fault~%~%# ft2~%uint8 truck_fault_level~%uint8 engine_fault_code~%uint8 gear_fault_code~%~%# ft3~%uint8 EPS_fault_code~%uint8 EBS_fault_code~%uint8 electric_fault_code~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RxFt>))
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
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RxFt>))
  "Converts a ROS message object to a list"
  (cl:list 'RxFt
    (cl:cons ':header (header msg))
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
))
