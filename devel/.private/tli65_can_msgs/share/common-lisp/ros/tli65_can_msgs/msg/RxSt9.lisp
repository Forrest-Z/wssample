; Auto-generated. Do not edit!


(cl:in-package tli65_can_msgs-msg)


;//! \htmlinclude RxSt9.msg.html

(cl:defclass <RxSt9> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (back_left_light
    :reader back_left_light
    :initarg :back_left_light
    :type cl:fixnum
    :initform 0)
   (back_right_light
    :reader back_right_light
    :initarg :back_right_light
    :type cl:fixnum
    :initform 0)
   (back_position_light
    :reader back_position_light
    :initarg :back_position_light
    :type cl:fixnum
    :initform 0)
   (brake_light
    :reader brake_light
    :initarg :brake_light
    :type cl:fixnum
    :initform 0)
   (reverse_light
    :reader reverse_light
    :initarg :reverse_light
    :type cl:fixnum
    :initform 0)
   (back_work_light
    :reader back_work_light
    :initarg :back_work_light
    :type cl:fixnum
    :initform 0)
   (cooler1
    :reader cooler1
    :initarg :cooler1
    :type cl:fixnum
    :initform 0)
   (cooler2
    :reader cooler2
    :initarg :cooler2
    :type cl:fixnum
    :initform 0)
   (axle_diff_switch
    :reader axle_diff_switch
    :initarg :axle_diff_switch
    :type cl:fixnum
    :initform 0)
   (drier_power
    :reader drier_power
    :initarg :drier_power
    :type cl:fixnum
    :initform 0)
   (inclinometer_power
    :reader inclinometer_power
    :initarg :inclinometer_power
    :type cl:fixnum
    :initform 0)
   (cold_water_treasure_power
    :reader cold_water_treasure_power
    :initarg :cold_water_treasure_power
    :type cl:fixnum
    :initform 0)
   (exhaust_brake_switch
    :reader exhaust_brake_switch
    :initarg :exhaust_brake_switch
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RxSt9 (<RxSt9>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RxSt9>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RxSt9)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tli65_can_msgs-msg:<RxSt9> is deprecated: use tli65_can_msgs-msg:RxSt9 instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RxSt9>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:header-val is deprecated.  Use tli65_can_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'back_left_light-val :lambda-list '(m))
(cl:defmethod back_left_light-val ((m <RxSt9>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:back_left_light-val is deprecated.  Use tli65_can_msgs-msg:back_left_light instead.")
  (back_left_light m))

(cl:ensure-generic-function 'back_right_light-val :lambda-list '(m))
(cl:defmethod back_right_light-val ((m <RxSt9>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:back_right_light-val is deprecated.  Use tli65_can_msgs-msg:back_right_light instead.")
  (back_right_light m))

(cl:ensure-generic-function 'back_position_light-val :lambda-list '(m))
(cl:defmethod back_position_light-val ((m <RxSt9>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:back_position_light-val is deprecated.  Use tli65_can_msgs-msg:back_position_light instead.")
  (back_position_light m))

(cl:ensure-generic-function 'brake_light-val :lambda-list '(m))
(cl:defmethod brake_light-val ((m <RxSt9>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:brake_light-val is deprecated.  Use tli65_can_msgs-msg:brake_light instead.")
  (brake_light m))

(cl:ensure-generic-function 'reverse_light-val :lambda-list '(m))
(cl:defmethod reverse_light-val ((m <RxSt9>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:reverse_light-val is deprecated.  Use tli65_can_msgs-msg:reverse_light instead.")
  (reverse_light m))

(cl:ensure-generic-function 'back_work_light-val :lambda-list '(m))
(cl:defmethod back_work_light-val ((m <RxSt9>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:back_work_light-val is deprecated.  Use tli65_can_msgs-msg:back_work_light instead.")
  (back_work_light m))

(cl:ensure-generic-function 'cooler1-val :lambda-list '(m))
(cl:defmethod cooler1-val ((m <RxSt9>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:cooler1-val is deprecated.  Use tli65_can_msgs-msg:cooler1 instead.")
  (cooler1 m))

(cl:ensure-generic-function 'cooler2-val :lambda-list '(m))
(cl:defmethod cooler2-val ((m <RxSt9>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:cooler2-val is deprecated.  Use tli65_can_msgs-msg:cooler2 instead.")
  (cooler2 m))

(cl:ensure-generic-function 'axle_diff_switch-val :lambda-list '(m))
(cl:defmethod axle_diff_switch-val ((m <RxSt9>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:axle_diff_switch-val is deprecated.  Use tli65_can_msgs-msg:axle_diff_switch instead.")
  (axle_diff_switch m))

(cl:ensure-generic-function 'drier_power-val :lambda-list '(m))
(cl:defmethod drier_power-val ((m <RxSt9>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:drier_power-val is deprecated.  Use tli65_can_msgs-msg:drier_power instead.")
  (drier_power m))

(cl:ensure-generic-function 'inclinometer_power-val :lambda-list '(m))
(cl:defmethod inclinometer_power-val ((m <RxSt9>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:inclinometer_power-val is deprecated.  Use tli65_can_msgs-msg:inclinometer_power instead.")
  (inclinometer_power m))

(cl:ensure-generic-function 'cold_water_treasure_power-val :lambda-list '(m))
(cl:defmethod cold_water_treasure_power-val ((m <RxSt9>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:cold_water_treasure_power-val is deprecated.  Use tli65_can_msgs-msg:cold_water_treasure_power instead.")
  (cold_water_treasure_power m))

(cl:ensure-generic-function 'exhaust_brake_switch-val :lambda-list '(m))
(cl:defmethod exhaust_brake_switch-val ((m <RxSt9>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:exhaust_brake_switch-val is deprecated.  Use tli65_can_msgs-msg:exhaust_brake_switch instead.")
  (exhaust_brake_switch m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RxSt9>) ostream)
  "Serializes a message object of type '<RxSt9>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'back_left_light)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'back_right_light)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'back_position_light)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'brake_light)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reverse_light)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'back_work_light)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cooler1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cooler2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'axle_diff_switch)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'drier_power)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'inclinometer_power)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cold_water_treasure_power)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'exhaust_brake_switch)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RxSt9>) istream)
  "Deserializes a message object of type '<RxSt9>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'back_left_light)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'back_right_light)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'back_position_light)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'brake_light)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reverse_light)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'back_work_light)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cooler1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cooler2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'axle_diff_switch)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'drier_power)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'inclinometer_power)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cold_water_treasure_power)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'exhaust_brake_switch)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RxSt9>)))
  "Returns string type for a message object of type '<RxSt9>"
  "tli65_can_msgs/RxSt9")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RxSt9)))
  "Returns string type for a message object of type 'RxSt9"
  "tli65_can_msgs/RxSt9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RxSt9>)))
  "Returns md5sum for a message object of type '<RxSt9>"
  "4d003e66e4be8a30497585d13731cb44")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RxSt9)))
  "Returns md5sum for a message object of type 'RxSt9"
  "4d003e66e4be8a30497585d13731cb44")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RxSt9>)))
  "Returns full string definition for message of type '<RxSt9>"
  (cl:format cl:nil "Header header~%~%uint8 back_left_light~%uint8 back_right_light~%uint8 back_position_light~%uint8 brake_light~%uint8 reverse_light~%uint8 back_work_light~%uint8 cooler1~%uint8 cooler2~%uint8 axle_diff_switch~%uint8 drier_power~%uint8 inclinometer_power~%uint8 cold_water_treasure_power~%uint8 exhaust_brake_switch~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RxSt9)))
  "Returns full string definition for message of type 'RxSt9"
  (cl:format cl:nil "Header header~%~%uint8 back_left_light~%uint8 back_right_light~%uint8 back_position_light~%uint8 brake_light~%uint8 reverse_light~%uint8 back_work_light~%uint8 cooler1~%uint8 cooler2~%uint8 axle_diff_switch~%uint8 drier_power~%uint8 inclinometer_power~%uint8 cold_water_treasure_power~%uint8 exhaust_brake_switch~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RxSt9>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RxSt9>))
  "Converts a ROS message object to a list"
  (cl:list 'RxSt9
    (cl:cons ':header (header msg))
    (cl:cons ':back_left_light (back_left_light msg))
    (cl:cons ':back_right_light (back_right_light msg))
    (cl:cons ':back_position_light (back_position_light msg))
    (cl:cons ':brake_light (brake_light msg))
    (cl:cons ':reverse_light (reverse_light msg))
    (cl:cons ':back_work_light (back_work_light msg))
    (cl:cons ':cooler1 (cooler1 msg))
    (cl:cons ':cooler2 (cooler2 msg))
    (cl:cons ':axle_diff_switch (axle_diff_switch msg))
    (cl:cons ':drier_power (drier_power msg))
    (cl:cons ':inclinometer_power (inclinometer_power msg))
    (cl:cons ':cold_water_treasure_power (cold_water_treasure_power msg))
    (cl:cons ':exhaust_brake_switch (exhaust_brake_switch msg))
))
