; Auto-generated. Do not edit!


(cl:in-package control_msgs-msg)


;//! \htmlinclude ControlFSM.msg.html

(cl:defclass <ControlFSM> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (control_fsm
    :reader control_fsm
    :initarg :control_fsm
    :type cl:integer
    :initform 0)
   (last_control_fsm
    :reader last_control_fsm
    :initarg :last_control_fsm
    :type cl:integer
    :initform 0)
   (flag_follow_tracks_plannerON
    :reader flag_follow_tracks_plannerON
    :initarg :flag_follow_tracks_plannerON
    :type cl:boolean
    :initform cl:nil)
   (gear
    :reader gear
    :initarg :gear
    :type cl:integer
    :initform 0))
)

(cl:defclass ControlFSM (<ControlFSM>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ControlFSM>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ControlFSM)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name control_msgs-msg:<ControlFSM> is deprecated: use control_msgs-msg:ControlFSM instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ControlFSM>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:header-val is deprecated.  Use control_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'control_fsm-val :lambda-list '(m))
(cl:defmethod control_fsm-val ((m <ControlFSM>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:control_fsm-val is deprecated.  Use control_msgs-msg:control_fsm instead.")
  (control_fsm m))

(cl:ensure-generic-function 'last_control_fsm-val :lambda-list '(m))
(cl:defmethod last_control_fsm-val ((m <ControlFSM>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:last_control_fsm-val is deprecated.  Use control_msgs-msg:last_control_fsm instead.")
  (last_control_fsm m))

(cl:ensure-generic-function 'flag_follow_tracks_plannerON-val :lambda-list '(m))
(cl:defmethod flag_follow_tracks_plannerON-val ((m <ControlFSM>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:flag_follow_tracks_plannerON-val is deprecated.  Use control_msgs-msg:flag_follow_tracks_plannerON instead.")
  (flag_follow_tracks_plannerON m))

(cl:ensure-generic-function 'gear-val :lambda-list '(m))
(cl:defmethod gear-val ((m <ControlFSM>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:gear-val is deprecated.  Use control_msgs-msg:gear instead.")
  (gear m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ControlFSM>) ostream)
  "Serializes a message object of type '<ControlFSM>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'control_fsm)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'last_control_fsm)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'flag_follow_tracks_plannerON) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'gear)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ControlFSM>) istream)
  "Deserializes a message object of type '<ControlFSM>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'control_fsm) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'last_control_fsm) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'flag_follow_tracks_plannerON) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gear) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ControlFSM>)))
  "Returns string type for a message object of type '<ControlFSM>"
  "control_msgs/ControlFSM")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ControlFSM)))
  "Returns string type for a message object of type 'ControlFSM"
  "control_msgs/ControlFSM")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ControlFSM>)))
  "Returns md5sum for a message object of type '<ControlFSM>"
  "4353b0fdc9925690d7828bb3cf2071c5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ControlFSM)))
  "Returns md5sum for a message object of type 'ControlFSM"
  "4353b0fdc9925690d7828bb3cf2071c5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ControlFSM>)))
  "Returns full string definition for message of type '<ControlFSM>"
  (cl:format cl:nil "Header header~%~%int32 control_fsm~%int32 last_control_fsm~%bool flag_follow_tracks_plannerON~%int32 gear~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ControlFSM)))
  "Returns full string definition for message of type 'ControlFSM"
  (cl:format cl:nil "Header header~%~%int32 control_fsm~%int32 last_control_fsm~%bool flag_follow_tracks_plannerON~%int32 gear~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ControlFSM>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ControlFSM>))
  "Converts a ROS message object to a list"
  (cl:list 'ControlFSM
    (cl:cons ':header (header msg))
    (cl:cons ':control_fsm (control_fsm msg))
    (cl:cons ':last_control_fsm (last_control_fsm msg))
    (cl:cons ':flag_follow_tracks_plannerON (flag_follow_tracks_plannerON msg))
    (cl:cons ':gear (gear msg))
))
