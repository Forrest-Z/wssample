; Auto-generated. Do not edit!


(cl:in-package planner_msgs-msg)


;//! \htmlinclude StopGo.msg.html

(cl:defclass <StopGo> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (stop_or_go
    :reader stop_or_go
    :initarg :stop_or_go
    :type cl:string
    :initform ""))
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

(cl:ensure-generic-function 'stop_or_go-val :lambda-list '(m))
(cl:defmethod stop_or_go-val ((m <StopGo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planner_msgs-msg:stop_or_go-val is deprecated.  Use planner_msgs-msg:stop_or_go instead.")
  (stop_or_go m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StopGo>) ostream)
  "Serializes a message object of type '<StopGo>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'stop_or_go))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'stop_or_go))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StopGo>) istream)
  "Deserializes a message object of type '<StopGo>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stop_or_go) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'stop_or_go) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
  "baf7a56f493b276b6a53976d92a68e99")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StopGo)))
  "Returns md5sum for a message object of type 'StopGo"
  "baf7a56f493b276b6a53976d92a68e99")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StopGo>)))
  "Returns full string definition for message of type '<StopGo>"
  (cl:format cl:nil "Header header~%~%# stop or go~%string stop_or_go~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StopGo)))
  "Returns full string definition for message of type 'StopGo"
  (cl:format cl:nil "Header header~%~%# stop or go~%string stop_or_go~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StopGo>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'stop_or_go))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StopGo>))
  "Converts a ROS message object to a list"
  (cl:list 'StopGo
    (cl:cons ':header (header msg))
    (cl:cons ':stop_or_go (stop_or_go msg))
))
