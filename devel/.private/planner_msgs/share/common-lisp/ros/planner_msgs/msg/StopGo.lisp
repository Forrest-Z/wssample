; Auto-generated. Do not edit!


(cl:in-package planner_msgs-msg)


;//! \htmlinclude StopGo.msg.html

(cl:defclass <StopGo> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (follow_tracks_ON
    :reader follow_tracks_ON
    :initarg :follow_tracks_ON
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass StopGo (<StopGo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StopGo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StopGo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planner_msgs-msg:<StopGo> is deprecated: use planner_msgs-msg:StopGo instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <StopGo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planner_msgs-msg:header-val is deprecated.  Use planner_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'follow_tracks_ON-val :lambda-list '(m))
(cl:defmethod follow_tracks_ON-val ((m <StopGo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planner_msgs-msg:follow_tracks_ON-val is deprecated.  Use planner_msgs-msg:follow_tracks_ON instead.")
  (follow_tracks_ON m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StopGo>) ostream)
  "Serializes a message object of type '<StopGo>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'follow_tracks_ON) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StopGo>) istream)
  "Deserializes a message object of type '<StopGo>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'follow_tracks_ON) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StopGo>)))
  "Returns string type for a message object of type '<StopGo>"
  "planner_msgs/StopGo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StopGo)))
  "Returns string type for a message object of type 'StopGo"
  "planner_msgs/StopGo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StopGo>)))
  "Returns md5sum for a message object of type '<StopGo>"
  "da3d4a046e4f68c9d40c962a1492bab3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StopGo)))
  "Returns md5sum for a message object of type 'StopGo"
  "da3d4a046e4f68c9d40c962a1492bab3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StopGo>)))
  "Returns full string definition for message of type '<StopGo>"
  (cl:format cl:nil "Header header~%~%# follow tracks planner on/off~%bool follow_tracks_ON~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StopGo)))
  "Returns full string definition for message of type 'StopGo"
  (cl:format cl:nil "Header header~%~%# follow tracks planner on/off~%bool follow_tracks_ON~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StopGo>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StopGo>))
  "Converts a ROS message object to a list"
  (cl:list 'StopGo
    (cl:cons ':header (header msg))
    (cl:cons ':follow_tracks_ON (follow_tracks_ON msg))
))
