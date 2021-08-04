; Auto-generated. Do not edit!


(cl:in-package planner_msgs-msg)


;//! \htmlinclude WayPoints.msg.html

(cl:defclass <WayPoints> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (coord_type
    :reader coord_type
    :initarg :coord_type
    :type cl:string
    :initform "")
   (control_type
    :reader control_type
    :initarg :control_type
    :type cl:string
    :initform "")
   (planner_fsm
    :reader planner_fsm
    :initarg :planner_fsm
    :type cl:string
    :initform "")
   (points
    :reader points
    :initarg :points
    :type (cl:vector planner_msgs-msg:WayPoint)
   :initform (cl:make-array 0 :element-type 'planner_msgs-msg:WayPoint :initial-element (cl:make-instance 'planner_msgs-msg:WayPoint))))
)

(cl:defclass WayPoints (<WayPoints>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WayPoints>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WayPoints)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planner_msgs-msg:<WayPoints> is deprecated: use planner_msgs-msg:WayPoints instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <WayPoints>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planner_msgs-msg:header-val is deprecated.  Use planner_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'coord_type-val :lambda-list '(m))
(cl:defmethod coord_type-val ((m <WayPoints>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planner_msgs-msg:coord_type-val is deprecated.  Use planner_msgs-msg:coord_type instead.")
  (coord_type m))

(cl:ensure-generic-function 'control_type-val :lambda-list '(m))
(cl:defmethod control_type-val ((m <WayPoints>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planner_msgs-msg:control_type-val is deprecated.  Use planner_msgs-msg:control_type instead.")
  (control_type m))

(cl:ensure-generic-function 'planner_fsm-val :lambda-list '(m))
(cl:defmethod planner_fsm-val ((m <WayPoints>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planner_msgs-msg:planner_fsm-val is deprecated.  Use planner_msgs-msg:planner_fsm instead.")
  (planner_fsm m))

(cl:ensure-generic-function 'points-val :lambda-list '(m))
(cl:defmethod points-val ((m <WayPoints>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planner_msgs-msg:points-val is deprecated.  Use planner_msgs-msg:points instead.")
  (points m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WayPoints>) ostream)
  "Serializes a message object of type '<WayPoints>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'coord_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'coord_type))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'control_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'control_type))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'planner_fsm))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'planner_fsm))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'points))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WayPoints>) istream)
  "Deserializes a message object of type '<WayPoints>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'coord_type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'coord_type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'control_type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'control_type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'planner_fsm) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'planner_fsm) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'planner_msgs-msg:WayPoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WayPoints>)))
  "Returns string type for a message object of type '<WayPoints>"
  "planner_msgs/WayPoints")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WayPoints)))
  "Returns string type for a message object of type 'WayPoints"
  "planner_msgs/WayPoints")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WayPoints>)))
  "Returns md5sum for a message object of type '<WayPoints>"
  "573e1dc003839203bc6a8d30ca76058b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WayPoints)))
  "Returns md5sum for a message object of type 'WayPoints"
  "573e1dc003839203bc6a8d30ca76058b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WayPoints>)))
  "Returns full string definition for message of type '<WayPoints>"
  (cl:format cl:nil "Header header~%~%# all of the waypoints are in ego coordinate system~%# coord_type = \"ego\"~%# track use enu, and is sended to rviz~%# coord_type = \"enu\"~%string coord_type~%~%# teledrive~%# follow_tracks~%string control_type~%~%string planner_fsm~%~%WayPoint[] points~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: planner_msgs/WayPoint~%# point has no Header~%~%int32 lock_down_index~%int32 aim_pt_index~%~%float64 x~%float64 y ~%float64 z~%~%float64 roll~%float64 pitch~%float64 yaw~%float64 kalman_yawrate~%~%float64 kalman_vx~%float64 acceleration~%~%# teledrive, share gear, xbr~%float64 steer~%float64 throttle_percentage~%float64 xbr~%int8 gear~%~%uint8 left_light~%uint8 right_light~%#uint8 emergency_light~%uint8 air_beep~%~%float64 time_to_last_point~%float64 current_lat_error~%bool flag_lock_down_index_offload~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WayPoints)))
  "Returns full string definition for message of type 'WayPoints"
  (cl:format cl:nil "Header header~%~%# all of the waypoints are in ego coordinate system~%# coord_type = \"ego\"~%# track use enu, and is sended to rviz~%# coord_type = \"enu\"~%string coord_type~%~%# teledrive~%# follow_tracks~%string control_type~%~%string planner_fsm~%~%WayPoint[] points~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: planner_msgs/WayPoint~%# point has no Header~%~%int32 lock_down_index~%int32 aim_pt_index~%~%float64 x~%float64 y ~%float64 z~%~%float64 roll~%float64 pitch~%float64 yaw~%float64 kalman_yawrate~%~%float64 kalman_vx~%float64 acceleration~%~%# teledrive, share gear, xbr~%float64 steer~%float64 throttle_percentage~%float64 xbr~%int8 gear~%~%uint8 left_light~%uint8 right_light~%#uint8 emergency_light~%uint8 air_beep~%~%float64 time_to_last_point~%float64 current_lat_error~%bool flag_lock_down_index_offload~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WayPoints>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'coord_type))
     4 (cl:length (cl:slot-value msg 'control_type))
     4 (cl:length (cl:slot-value msg 'planner_fsm))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WayPoints>))
  "Converts a ROS message object to a list"
  (cl:list 'WayPoints
    (cl:cons ':header (header msg))
    (cl:cons ':coord_type (coord_type msg))
    (cl:cons ':control_type (control_type msg))
    (cl:cons ':planner_fsm (planner_fsm msg))
    (cl:cons ':points (points msg))
))
