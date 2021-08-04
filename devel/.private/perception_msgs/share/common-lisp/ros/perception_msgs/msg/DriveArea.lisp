; Auto-generated. Do not edit!


(cl:in-package perception_msgs-msg)


;//! \htmlinclude DriveArea.msg.html

(cl:defclass <DriveArea> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (left_area_avail
    :reader left_area_avail
    :initarg :left_area_avail
    :type cl:boolean
    :initform cl:nil)
   (right_area_avail
    :reader right_area_avail
    :initarg :right_area_avail
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass DriveArea (<DriveArea>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DriveArea>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DriveArea)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_msgs-msg:<DriveArea> is deprecated: use perception_msgs-msg:DriveArea instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <DriveArea>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:header-val is deprecated.  Use perception_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'left_area_avail-val :lambda-list '(m))
(cl:defmethod left_area_avail-val ((m <DriveArea>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:left_area_avail-val is deprecated.  Use perception_msgs-msg:left_area_avail instead.")
  (left_area_avail m))

(cl:ensure-generic-function 'right_area_avail-val :lambda-list '(m))
(cl:defmethod right_area_avail-val ((m <DriveArea>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:right_area_avail-val is deprecated.  Use perception_msgs-msg:right_area_avail instead.")
  (right_area_avail m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DriveArea>) ostream)
  "Serializes a message object of type '<DriveArea>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'left_area_avail) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'right_area_avail) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DriveArea>) istream)
  "Deserializes a message object of type '<DriveArea>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'left_area_avail) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'right_area_avail) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DriveArea>)))
  "Returns string type for a message object of type '<DriveArea>"
  "perception_msgs/DriveArea")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DriveArea)))
  "Returns string type for a message object of type 'DriveArea"
  "perception_msgs/DriveArea")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DriveArea>)))
  "Returns md5sum for a message object of type '<DriveArea>"
  "0d7db88ce8a43d4073cc44d916824e19")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DriveArea)))
  "Returns md5sum for a message object of type 'DriveArea"
  "0d7db88ce8a43d4073cc44d916824e19")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DriveArea>)))
  "Returns full string definition for message of type '<DriveArea>"
  (cl:format cl:nil "Header header~%~%bool left_area_avail~%bool right_area_avail~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DriveArea)))
  "Returns full string definition for message of type 'DriveArea"
  (cl:format cl:nil "Header header~%~%bool left_area_avail~%bool right_area_avail~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DriveArea>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DriveArea>))
  "Converts a ROS message object to a list"
  (cl:list 'DriveArea
    (cl:cons ':header (header msg))
    (cl:cons ':left_area_avail (left_area_avail msg))
    (cl:cons ':right_area_avail (right_area_avail msg))
))
