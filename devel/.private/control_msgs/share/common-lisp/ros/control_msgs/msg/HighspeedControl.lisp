; Auto-generated. Do not edit!


(cl:in-package control_msgs-msg)


;//! \htmlinclude HighspeedControl.msg.html

(cl:defclass <HighspeedControl> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
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
  "fac4952cee492c2dbb8a7e1036809584")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HighspeedControl)))
  "Returns md5sum for a message object of type 'HighspeedControl"
  "fac4952cee492c2dbb8a7e1036809584")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HighspeedControl>)))
  "Returns full string definition for message of type '<HighspeedControl>"
  (cl:format cl:nil "Header header~%~%uint8 ignition ~%uint8 throttle_active~%uint8 throttle_precentage~%uint8 XBR_active~%float64 XBR~%# for Tli65~%uint8 steer_active~%float64 steer~%float64 steer_angle_rate~%# for Tli90~%#uint8 steer_active~%#uint8 steer_mode~%#float64 steer~%#float64 steer1~%#uint8 steer_mode1~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HighspeedControl)))
  "Returns full string definition for message of type 'HighspeedControl"
  (cl:format cl:nil "Header header~%~%uint8 ignition ~%uint8 throttle_active~%uint8 throttle_precentage~%uint8 XBR_active~%float64 XBR~%# for Tli65~%uint8 steer_active~%float64 steer~%float64 steer_angle_rate~%# for Tli90~%#uint8 steer_active~%#uint8 steer_mode~%#float64 steer~%#float64 steer1~%#uint8 steer_mode1~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HighspeedControl>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
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
    (cl:cons ':ignition (ignition msg))
    (cl:cons ':throttle_active (throttle_active msg))
    (cl:cons ':throttle_precentage (throttle_precentage msg))
    (cl:cons ':XBR_active (XBR_active msg))
    (cl:cons ':XBR (XBR msg))
    (cl:cons ':steer_active (steer_active msg))
    (cl:cons ':steer (steer msg))
    (cl:cons ':steer_angle_rate (steer_angle_rate msg))
))
