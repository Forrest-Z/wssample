; Auto-generated. Do not edit!


(cl:in-package perception_msgs-msg)


;//! \htmlinclude Objs.msg.html

(cl:defclass <Objs> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (objs
    :reader objs
    :initarg :objs
    :type (cl:vector perception_msgs-msg:Obj)
   :initform (cl:make-array 0 :element-type 'perception_msgs-msg:Obj :initial-element (cl:make-instance 'perception_msgs-msg:Obj))))
)

(cl:defclass Objs (<Objs>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Objs>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Objs)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_msgs-msg:<Objs> is deprecated: use perception_msgs-msg:Objs instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Objs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:header-val is deprecated.  Use perception_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'objs-val :lambda-list '(m))
(cl:defmethod objs-val ((m <Objs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:objs-val is deprecated.  Use perception_msgs-msg:objs instead.")
  (objs m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Objs>) ostream)
  "Serializes a message object of type '<Objs>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'objs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'objs))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Objs>) istream)
  "Deserializes a message object of type '<Objs>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'objs) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'objs)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'perception_msgs-msg:Obj))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Objs>)))
  "Returns string type for a message object of type '<Objs>"
  "perception_msgs/Objs")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Objs)))
  "Returns string type for a message object of type 'Objs"
  "perception_msgs/Objs")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Objs>)))
  "Returns md5sum for a message object of type '<Objs>"
  "d41aae8b6289d3d5c6019e425ce539df")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Objs)))
  "Returns md5sum for a message object of type 'Objs"
  "d41aae8b6289d3d5c6019e425ce539df")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Objs>)))
  "Returns full string definition for message of type '<Objs>"
  (cl:format cl:nil "Header header~%~%Obj[] objs~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: perception_msgs/Obj~%int32 id~%~%float32 confidence~%int32 age~%int32 left_time~%~%geometry_msgs/Point32 left_bottom~%geometry_msgs/Point32 right_bottom~%geometry_msgs/Point32 left_top~%geometry_msgs/Point32 right_top~%~%# v north, east, to ground~%float32 v_north~%float32 v_east~%float32 v_ground~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Objs)))
  "Returns full string definition for message of type 'Objs"
  (cl:format cl:nil "Header header~%~%Obj[] objs~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: perception_msgs/Obj~%int32 id~%~%float32 confidence~%int32 age~%int32 left_time~%~%geometry_msgs/Point32 left_bottom~%geometry_msgs/Point32 right_bottom~%geometry_msgs/Point32 left_top~%geometry_msgs/Point32 right_top~%~%# v north, east, to ground~%float32 v_north~%float32 v_east~%float32 v_ground~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Objs>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'objs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Objs>))
  "Converts a ROS message object to a list"
  (cl:list 'Objs
    (cl:cons ':header (header msg))
    (cl:cons ':objs (objs msg))
))
