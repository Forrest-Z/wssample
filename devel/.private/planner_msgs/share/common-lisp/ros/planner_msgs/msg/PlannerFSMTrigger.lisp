; Auto-generated. Do not edit!


(cl:in-package planner_msgs-msg)


;//! \htmlinclude PlannerFSMTrigger.msg.html

(cl:defclass <PlannerFSMTrigger> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (flag_lockdown_in_map
    :reader flag_lockdown_in_map
    :initarg :flag_lockdown_in_map
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass PlannerFSMTrigger (<PlannerFSMTrigger>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlannerFSMTrigger>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlannerFSMTrigger)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planner_msgs-msg:<PlannerFSMTrigger> is deprecated: use planner_msgs-msg:PlannerFSMTrigger instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PlannerFSMTrigger>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planner_msgs-msg:header-val is deprecated.  Use planner_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'flag_lockdown_in_map-val :lambda-list '(m))
(cl:defmethod flag_lockdown_in_map-val ((m <PlannerFSMTrigger>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planner_msgs-msg:flag_lockdown_in_map-val is deprecated.  Use planner_msgs-msg:flag_lockdown_in_map instead.")
  (flag_lockdown_in_map m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlannerFSMTrigger>) ostream)
  "Serializes a message object of type '<PlannerFSMTrigger>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'flag_lockdown_in_map) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlannerFSMTrigger>) istream)
  "Deserializes a message object of type '<PlannerFSMTrigger>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'flag_lockdown_in_map) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlannerFSMTrigger>)))
  "Returns string type for a message object of type '<PlannerFSMTrigger>"
  "planner_msgs/PlannerFSMTrigger")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlannerFSMTrigger)))
  "Returns string type for a message object of type 'PlannerFSMTrigger"
  "planner_msgs/PlannerFSMTrigger")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlannerFSMTrigger>)))
  "Returns md5sum for a message object of type '<PlannerFSMTrigger>"
  "7f0540f51906feb54b1e60d14561961f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlannerFSMTrigger)))
  "Returns md5sum for a message object of type 'PlannerFSMTrigger"
  "7f0540f51906feb54b1e60d14561961f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlannerFSMTrigger>)))
  "Returns full string definition for message of type '<PlannerFSMTrigger>"
  (cl:format cl:nil "Header header~%~%bool flag_lockdown_in_map~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlannerFSMTrigger)))
  "Returns full string definition for message of type 'PlannerFSMTrigger"
  (cl:format cl:nil "Header header~%~%bool flag_lockdown_in_map~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlannerFSMTrigger>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlannerFSMTrigger>))
  "Converts a ROS message object to a list"
  (cl:list 'PlannerFSMTrigger
    (cl:cons ':header (header msg))
    (cl:cons ':flag_lockdown_in_map (flag_lockdown_in_map msg))
))
