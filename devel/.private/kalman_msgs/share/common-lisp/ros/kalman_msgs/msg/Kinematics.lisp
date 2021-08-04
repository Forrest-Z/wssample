; Auto-generated. Do not edit!


(cl:in-package kalman_msgs-msg)


;//! \htmlinclude Kinematics.msg.html

(cl:defclass <Kinematics> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (k_vx
    :reader k_vx
    :initarg :k_vx
    :type cl:float
    :initform 0.0)
   (k_yawrate
    :reader k_yawrate
    :initarg :k_yawrate
    :type cl:float
    :initform 0.0))
)

(cl:defclass Kinematics (<Kinematics>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Kinematics>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Kinematics)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kalman_msgs-msg:<Kinematics> is deprecated: use kalman_msgs-msg:Kinematics instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Kinematics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kalman_msgs-msg:header-val is deprecated.  Use kalman_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'k_vx-val :lambda-list '(m))
(cl:defmethod k_vx-val ((m <Kinematics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kalman_msgs-msg:k_vx-val is deprecated.  Use kalman_msgs-msg:k_vx instead.")
  (k_vx m))

(cl:ensure-generic-function 'k_yawrate-val :lambda-list '(m))
(cl:defmethod k_yawrate-val ((m <Kinematics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kalman_msgs-msg:k_yawrate-val is deprecated.  Use kalman_msgs-msg:k_yawrate instead.")
  (k_yawrate m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Kinematics>) ostream)
  "Serializes a message object of type '<Kinematics>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'k_vx))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'k_yawrate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Kinematics>) istream)
  "Deserializes a message object of type '<Kinematics>"
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
    (cl:setf (cl:slot-value msg 'k_vx) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'k_yawrate) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Kinematics>)))
  "Returns string type for a message object of type '<Kinematics>"
  "kalman_msgs/Kinematics")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Kinematics)))
  "Returns string type for a message object of type 'Kinematics"
  "kalman_msgs/Kinematics")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Kinematics>)))
  "Returns md5sum for a message object of type '<Kinematics>"
  "d8265f549b6eafa5bb69f5a95dd77e28")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Kinematics)))
  "Returns md5sum for a message object of type 'Kinematics"
  "d8265f549b6eafa5bb69f5a95dd77e28")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Kinematics>)))
  "Returns full string definition for message of type '<Kinematics>"
  (cl:format cl:nil "Header header~%~%# kalman_vx~%#  >0 for forward, <0 for backward~%float64 k_vx~%~%# kalman_yawrate~%float64 k_yawrate ~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Kinematics)))
  "Returns full string definition for message of type 'Kinematics"
  (cl:format cl:nil "Header header~%~%# kalman_vx~%#  >0 for forward, <0 for backward~%float64 k_vx~%~%# kalman_yawrate~%float64 k_yawrate ~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Kinematics>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Kinematics>))
  "Converts a ROS message object to a list"
  (cl:list 'Kinematics
    (cl:cons ':header (header msg))
    (cl:cons ':k_vx (k_vx msg))
    (cl:cons ':k_yawrate (k_yawrate msg))
))
