; Auto-generated. Do not edit!


(cl:in-package g29_force_feedback-msg)


;//! \htmlinclude ForceFeedback.msg.html

(cl:defclass <ForceFeedback> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (angle
    :reader angle
    :initarg :angle
    :type cl:float
    :initform 0.0)
   (force
    :reader force
    :initarg :force
    :type cl:float
    :initform 0.0)
   (pid_mode
    :reader pid_mode
    :initarg :pid_mode
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ForceFeedback (<ForceFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ForceFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ForceFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name g29_force_feedback-msg:<ForceFeedback> is deprecated: use g29_force_feedback-msg:ForceFeedback instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ForceFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader g29_force_feedback-msg:header-val is deprecated.  Use g29_force_feedback-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'angle-val :lambda-list '(m))
(cl:defmethod angle-val ((m <ForceFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader g29_force_feedback-msg:angle-val is deprecated.  Use g29_force_feedback-msg:angle instead.")
  (angle m))

(cl:ensure-generic-function 'force-val :lambda-list '(m))
(cl:defmethod force-val ((m <ForceFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader g29_force_feedback-msg:force-val is deprecated.  Use g29_force_feedback-msg:force instead.")
  (force m))

(cl:ensure-generic-function 'pid_mode-val :lambda-list '(m))
(cl:defmethod pid_mode-val ((m <ForceFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader g29_force_feedback-msg:pid_mode-val is deprecated.  Use g29_force_feedback-msg:pid_mode instead.")
  (pid_mode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ForceFeedback>) ostream)
  "Serializes a message object of type '<ForceFeedback>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'force))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'pid_mode) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ForceFeedback>) istream)
  "Deserializes a message object of type '<ForceFeedback>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'force) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'pid_mode) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ForceFeedback>)))
  "Returns string type for a message object of type '<ForceFeedback>"
  "g29_force_feedback/ForceFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ForceFeedback)))
  "Returns string type for a message object of type 'ForceFeedback"
  "g29_force_feedback/ForceFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ForceFeedback>)))
  "Returns md5sum for a message object of type '<ForceFeedback>"
  "fb014a30f774bc7e39f4d28ab88f6b28")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ForceFeedback)))
  "Returns md5sum for a message object of type 'ForceFeedback"
  "fb014a30f774bc7e39f4d28ab88f6b28")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ForceFeedback>)))
  "Returns full string definition for message of type '<ForceFeedback>"
  (cl:format cl:nil "std_msgs/Header header~%float32 angle~%float32 force~%bool pid_mode~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ForceFeedback)))
  "Returns full string definition for message of type 'ForceFeedback"
  (cl:format cl:nil "std_msgs/Header header~%float32 angle~%float32 force~%bool pid_mode~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ForceFeedback>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ForceFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'ForceFeedback
    (cl:cons ':header (header msg))
    (cl:cons ':angle (angle msg))
    (cl:cons ':force (force msg))
    (cl:cons ':pid_mode (pid_mode msg))
))
