; Auto-generated. Do not edit!


(cl:in-package tli65_can_msgs-msg)


;//! \htmlinclude ContainerCalib.msg.html

(cl:defclass <ContainerCalib> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (pitch_degree
    :reader pitch_degree
    :initarg :pitch_degree
    :type cl:float
    :initform 0.0)
   (relative_container_angle
    :reader relative_container_angle
    :initarg :relative_container_angle
    :type cl:float
    :initform 0.0)
   (k_before_carr_angle
    :reader k_before_carr_angle
    :initarg :k_before_carr_angle
    :type cl:float
    :initform 0.0))
)

(cl:defclass ContainerCalib (<ContainerCalib>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ContainerCalib>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ContainerCalib)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tli65_can_msgs-msg:<ContainerCalib> is deprecated: use tli65_can_msgs-msg:ContainerCalib instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ContainerCalib>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:header-val is deprecated.  Use tli65_can_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'pitch_degree-val :lambda-list '(m))
(cl:defmethod pitch_degree-val ((m <ContainerCalib>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:pitch_degree-val is deprecated.  Use tli65_can_msgs-msg:pitch_degree instead.")
  (pitch_degree m))

(cl:ensure-generic-function 'relative_container_angle-val :lambda-list '(m))
(cl:defmethod relative_container_angle-val ((m <ContainerCalib>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:relative_container_angle-val is deprecated.  Use tli65_can_msgs-msg:relative_container_angle instead.")
  (relative_container_angle m))

(cl:ensure-generic-function 'k_before_carr_angle-val :lambda-list '(m))
(cl:defmethod k_before_carr_angle-val ((m <ContainerCalib>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:k_before_carr_angle-val is deprecated.  Use tli65_can_msgs-msg:k_before_carr_angle instead.")
  (k_before_carr_angle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ContainerCalib>) ostream)
  "Serializes a message object of type '<ContainerCalib>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'pitch_degree))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'relative_container_angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'k_before_carr_angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ContainerCalib>) istream)
  "Deserializes a message object of type '<ContainerCalib>"
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
    (cl:setf (cl:slot-value msg 'pitch_degree) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'relative_container_angle) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'k_before_carr_angle) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ContainerCalib>)))
  "Returns string type for a message object of type '<ContainerCalib>"
  "tli65_can_msgs/ContainerCalib")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ContainerCalib)))
  "Returns string type for a message object of type 'ContainerCalib"
  "tli65_can_msgs/ContainerCalib")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ContainerCalib>)))
  "Returns md5sum for a message object of type '<ContainerCalib>"
  "a1e2d137e4598c60731ef7b598273d26")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ContainerCalib)))
  "Returns md5sum for a message object of type 'ContainerCalib"
  "a1e2d137e4598c60731ef7b598273d26")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ContainerCalib>)))
  "Returns full string definition for message of type '<ContainerCalib>"
  (cl:format cl:nil "Header header~%~%float64 pitch_degree~%float64 relative_container_angle~%float64 k_before_carr_angle~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ContainerCalib)))
  "Returns full string definition for message of type 'ContainerCalib"
  (cl:format cl:nil "Header header~%~%float64 pitch_degree~%float64 relative_container_angle~%float64 k_before_carr_angle~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ContainerCalib>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ContainerCalib>))
  "Converts a ROS message object to a list"
  (cl:list 'ContainerCalib
    (cl:cons ':header (header msg))
    (cl:cons ':pitch_degree (pitch_degree msg))
    (cl:cons ':relative_container_angle (relative_container_angle msg))
    (cl:cons ':k_before_carr_angle (k_before_carr_angle msg))
))
