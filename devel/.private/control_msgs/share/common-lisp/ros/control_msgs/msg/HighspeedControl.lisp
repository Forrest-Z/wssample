; Auto-generated. Do not edit!


(cl:in-package control_msgs-msg)


;//! \htmlinclude HighspeedControl.msg.html

(cl:defclass <HighspeedControl> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (control_type
    :reader control_type
    :initarg :control_type
    :type cl:string
    :initform "")
   (control_fsm
    :reader control_fsm
    :initarg :control_fsm
    :type cl:string
    :initform "")
   (lat_error
    :reader lat_error
    :initarg :lat_error
    :type cl:float
    :initform 0.0)
   (ignition
    :reader ignition
    :initarg :ignition
    :type cl:fixnum
    :initform 0)
   (throttle_active
    :reader throttle_active
    :initarg :throttle_active
    :type cl:fixnum
    :initform 0)
   (throttle_precentage
    :reader throttle_precentage
    :initarg :throttle_precentage
    :type cl:fixnum
    :initform 0)
   (XBR_active
    :reader XBR_active
    :initarg :XBR_active
    :type cl:fixnum
    :initform 0)
   (XBR
    :reader XBR
    :initarg :XBR
    :type cl:float
    :initform 0.0)
   (steer_active
    :reader steer_active
    :initarg :steer_active
    :type cl:fixnum
    :initform 0)
   (steer
    :reader steer
    :initarg :steer
    :type cl:float
    :initform 0.0)
   (steer_angle_rate
    :reader steer_angle_rate
    :initarg :steer_angle_rate
    :type cl:float
    :initform 0.0))
)

(cl:defclass HighspeedControl (<HighspeedControl>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HighspeedControl>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HighspeedControl)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name control_msgs-msg:<HighspeedControl> is deprecated: use control_msgs-msg:HighspeedControl instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <HighspeedControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:header-val is deprecated.  Use control_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'control_type-val :lambda-list '(m))
(cl:defmethod control_type-val ((m <HighspeedControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:control_type-val is deprecated.  Use control_msgs-msg:control_type instead.")
  (control_type m))

(cl:ensure-generic-function 'control_fsm-val :lambda-list '(m))
(cl:defmethod control_fsm-val ((m <HighspeedControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:control_fsm-val is deprecated.  Use control_msgs-msg:control_fsm instead.")
  (control_fsm m))

(cl:ensure-generic-function 'lat_error-val :lambda-list '(m))
(cl:defmethod lat_error-val ((m <HighspeedControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:lat_error-val is deprecated.  Use control_msgs-msg:lat_error instead.")
  (lat_error m))

(cl:ensure-generic-function 'ignition-val :lambda-list '(m))
(cl:defmethod ignition-val ((m <HighspeedControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:ignition-val is deprecated.  Use control_msgs-msg:ignition instead.")
  (ignition m))

(cl:ensure-generic-function 'throttle_active-val :lambda-list '(m))
(cl:defmethod throttle_active-val ((m <HighspeedControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:throttle_active-val is deprecated.  Use control_msgs-msg:throttle_active instead.")
  (throttle_active m))

(cl:ensure-generic-function 'throttle_precentage-val :lambda-list '(m))
(cl:defmethod throttle_precentage-val ((m <HighspeedControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:throttle_precentage-val is deprecated.  Use control_msgs-msg:throttle_precentage instead.")
  (throttle_precentage m))

(cl:ensure-generic-function 'XBR_active-val :lambda-list '(m))
(cl:defmethod XBR_active-val ((m <HighspeedControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:XBR_active-val is deprecated.  Use control_msgs-msg:XBR_active instead.")
  (XBR_active m))

(cl:ensure-generic-function 'XBR-val :lambda-list '(m))
(cl:defmethod XBR-val ((m <HighspeedControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:XBR-val is deprecated.  Use control_msgs-msg:XBR instead.")
  (XBR m))

(cl:ensure-generic-function 'steer_active-val :lambda-list '(m))
(cl:defmethod steer_active-val ((m <HighspeedControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:steer_active-val is deprecated.  Use control_msgs-msg:steer_active instead.")
  (steer_active m))

(cl:ensure-generic-function 'steer-val :lambda-list '(m))
(cl:defmethod steer-val ((m <HighspeedControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:steer-val is deprecated.  Use control_msgs-msg:steer instead.")
  (steer m))

(cl:ensure-generic-function 'steer_angle_rate-val :lambda-list '(m))
(cl:defmethod steer_angle_rate-val ((m <HighspeedControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:steer_angle_rate-val is deprecated.  Use control_msgs-msg:steer_angle_rate instead.")
  (steer_angle_rate m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HighspeedControl>) ostream)
  "Serializes a message object of type '<HighspeedControl>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'control_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'control_type))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'control_fsm))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'control_fsm))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'lat_error))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ignition)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'throttle_active)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'throttle_precentage)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'XBR_active)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'XBR))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'steer_active)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'steer))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'steer_angle_rate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HighspeedControl>) istream)
  "Deserializes a message object of type '<HighspeedControl>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'control_type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'control_type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'control_fsm) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'control_fsm) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lat_error) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ignition)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'throttle_active)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'throttle_precentage)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'XBR_active)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'XBR) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'steer_active)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'steer) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'steer_angle_rate) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HighspeedControl>)))
  "Returns string type for a message object of type '<HighspeedControl>"
  "control_msgs/HighspeedControl")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HighspeedControl)))
  "Returns string type for a message object of type 'HighspeedControl"
  "control_msgs/HighspeedControl")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HighspeedControl>)))
  "Returns md5sum for a message object of type '<HighspeedControl>"
  "091494fefb0d9d1769b9b0a619a55e53")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HighspeedControl)))
  "Returns md5sum for a message object of type 'HighspeedControl"
  "091494fefb0d9d1769b9b0a619a55e53")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HighspeedControl>)))
  "Returns full string definition for message of type '<HighspeedControl>"
  (cl:format cl:nil "Header header~%~%string control_type~%string control_fsm~%float64 lat_error~%~%uint8 ignition ~%uint8 throttle_active~%uint8 throttle_precentage~%uint8 XBR_active~%float64 XBR~%# for Tli65~%uint8 steer_active~%float64 steer~%float64 steer_angle_rate~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HighspeedControl)))
  "Returns full string definition for message of type 'HighspeedControl"
  (cl:format cl:nil "Header header~%~%string control_type~%string control_fsm~%float64 lat_error~%~%uint8 ignition ~%uint8 throttle_active~%uint8 throttle_precentage~%uint8 XBR_active~%float64 XBR~%# for Tli65~%uint8 steer_active~%float64 steer~%float64 steer_angle_rate~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HighspeedControl>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'control_type))
     4 (cl:length (cl:slot-value msg 'control_fsm))
     8
     1
     1
     1
     1
     8
     1
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HighspeedControl>))
  "Converts a ROS message object to a list"
  (cl:list 'HighspeedControl
    (cl:cons ':header (header msg))
    (cl:cons ':control_type (control_type msg))
    (cl:cons ':control_fsm (control_fsm msg))
    (cl:cons ':lat_error (lat_error msg))
    (cl:cons ':ignition (ignition msg))
    (cl:cons ':throttle_active (throttle_active msg))
    (cl:cons ':throttle_precentage (throttle_precentage msg))
    (cl:cons ':XBR_active (XBR_active msg))
    (cl:cons ':XBR (XBR msg))
    (cl:cons ':steer_active (steer_active msg))
    (cl:cons ':steer (steer msg))
    (cl:cons ':steer_angle_rate (steer_angle_rate msg))
))
