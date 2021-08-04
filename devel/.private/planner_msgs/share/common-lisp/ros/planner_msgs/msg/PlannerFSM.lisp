; Auto-generated. Do not edit!


(cl:in-package planner_msgs-msg)


;//! \htmlinclude PlannerFSM.msg.html

(cl:defclass <PlannerFSM> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (gear
    :reader gear
    :initarg :gear
    :type cl:integer
    :initform 0)
   (planner_fsm
    :reader planner_fsm
    :initarg :planner_fsm
    :type cl:integer
    :initform 0)
   (last_planner_fsm
    :reader last_planner_fsm
    :initarg :last_planner_fsm
    :type cl:integer
    :initform 0))
)

(cl:defclass PlannerFSM (<PlannerFSM>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlannerFSM>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlannerFSM)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planner_msgs-msg:<PlannerFSM> is deprecated: use planner_msgs-msg:PlannerFSM instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PlannerFSM>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planner_msgs-msg:header-val is deprecated.  Use planner_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'gear-val :lambda-list '(m))
(cl:defmethod gear-val ((m <PlannerFSM>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planner_msgs-msg:gear-val is deprecated.  Use planner_msgs-msg:gear instead.")
  (gear m))

(cl:ensure-generic-function 'planner_fsm-val :lambda-list '(m))
(cl:defmethod planner_fsm-val ((m <PlannerFSM>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planner_msgs-msg:planner_fsm-val is deprecated.  Use planner_msgs-msg:planner_fsm instead.")
  (planner_fsm m))

(cl:ensure-generic-function 'last_planner_fsm-val :lambda-list '(m))
(cl:defmethod last_planner_fsm-val ((m <PlannerFSM>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planner_msgs-msg:last_planner_fsm-val is deprecated.  Use planner_msgs-msg:last_planner_fsm instead.")
  (last_planner_fsm m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlannerFSM>) ostream)
  "Serializes a message object of type '<PlannerFSM>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'gear)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'planner_fsm)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'last_planner_fsm)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlannerFSM>) istream)
  "Deserializes a message object of type '<PlannerFSM>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gear) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'planner_fsm) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'last_planner_fsm) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlannerFSM>)))
  "Returns string type for a message object of type '<PlannerFSM>"
  "planner_msgs/PlannerFSM")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlannerFSM)))
  "Returns string type for a message object of type 'PlannerFSM"
  "planner_msgs/PlannerFSM")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlannerFSM>)))
  "Returns md5sum for a message object of type '<PlannerFSM>"
  "6df5be79c813c24a6414911b5ba25621")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlannerFSM)))
  "Returns md5sum for a message object of type 'PlannerFSM"
  "6df5be79c813c24a6414911b5ba25621")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlannerFSM>)))
  "Returns full string definition for message of type '<PlannerFSM>"
  (cl:format cl:nil "Header header~%~%int32 gear~%int32 planner_fsm~%int32 last_planner_fsm~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlannerFSM)))
  "Returns full string definition for message of type 'PlannerFSM"
  (cl:format cl:nil "Header header~%~%int32 gear~%int32 planner_fsm~%int32 last_planner_fsm~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlannerFSM>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlannerFSM>))
  "Converts a ROS message object to a list"
  (cl:list 'PlannerFSM
    (cl:cons ':header (header msg))
    (cl:cons ':gear (gear msg))
    (cl:cons ':planner_fsm (planner_fsm msg))
    (cl:cons ':last_planner_fsm (last_planner_fsm msg))
))
