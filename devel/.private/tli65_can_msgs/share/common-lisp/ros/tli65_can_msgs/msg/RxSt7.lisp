; Auto-generated. Do not edit!


(cl:in-package tli65_can_msgs-msg)


;//! \htmlinclude RxSt7.msg.html

(cl:defclass <RxSt7> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (left_light
    :reader left_light
    :initarg :left_light
    :type cl:fixnum
    :initform 0)
   (right_light
    :reader right_light
    :initarg :right_light
    :type cl:fixnum
    :initform 0)
   (near_light
    :reader near_light
    :initarg :near_light
    :type cl:fixnum
    :initform 0)
   (far_light
    :reader far_light
    :initarg :far_light
    :type cl:fixnum
    :initform 0)
   (top_warning_light
    :reader top_warning_light
    :initarg :top_warning_light
    :type cl:fixnum
    :initform 0)
   (air_beep
    :reader air_beep
    :initarg :air_beep
    :type cl:fixnum
    :initform 0)
   (front_fog_light
    :reader front_fog_light
    :initarg :front_fog_light
    :type cl:fixnum
    :initform 0)
   (front_work_light
    :reader front_work_light
    :initarg :front_work_light
    :type cl:fixnum
    :initform 0)
   (side_light
    :reader side_light
    :initarg :side_light
    :type cl:fixnum
    :initform 0)
   (position_light
    :reader position_light
    :initarg :position_light
    :type cl:fixnum
    :initform 0)
   (sweeper_power
    :reader sweeper_power
    :initarg :sweeper_power
    :type cl:fixnum
    :initform 0)
   (EBS_power
    :reader EBS_power
    :initarg :EBS_power
    :type cl:fixnum
    :initform 0)
   (air_pressure_power
    :reader air_pressure_power
    :initarg :air_pressure_power
    :type cl:fixnum
    :initform 0)
   (hang_up_power
    :reader hang_up_power
    :initarg :hang_up_power
    :type cl:fixnum
    :initform 0)
   (hang_down_power
    :reader hang_down_power
    :initarg :hang_down_power
    :type cl:fixnum
    :initform 0)
   (hang_manual_power
    :reader hang_manual_power
    :initarg :hang_manual_power
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RxSt7 (<RxSt7>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RxSt7>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RxSt7)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tli65_can_msgs-msg:<RxSt7> is deprecated: use tli65_can_msgs-msg:RxSt7 instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RxSt7>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:header-val is deprecated.  Use tli65_can_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'left_light-val :lambda-list '(m))
(cl:defmethod left_light-val ((m <RxSt7>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:left_light-val is deprecated.  Use tli65_can_msgs-msg:left_light instead.")
  (left_light m))

(cl:ensure-generic-function 'right_light-val :lambda-list '(m))
(cl:defmethod right_light-val ((m <RxSt7>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:right_light-val is deprecated.  Use tli65_can_msgs-msg:right_light instead.")
  (right_light m))

(cl:ensure-generic-function 'near_light-val :lambda-list '(m))
(cl:defmethod near_light-val ((m <RxSt7>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:near_light-val is deprecated.  Use tli65_can_msgs-msg:near_light instead.")
  (near_light m))

(cl:ensure-generic-function 'far_light-val :lambda-list '(m))
(cl:defmethod far_light-val ((m <RxSt7>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:far_light-val is deprecated.  Use tli65_can_msgs-msg:far_light instead.")
  (far_light m))

(cl:ensure-generic-function 'top_warning_light-val :lambda-list '(m))
(cl:defmethod top_warning_light-val ((m <RxSt7>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:top_warning_light-val is deprecated.  Use tli65_can_msgs-msg:top_warning_light instead.")
  (top_warning_light m))

(cl:ensure-generic-function 'air_beep-val :lambda-list '(m))
(cl:defmethod air_beep-val ((m <RxSt7>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:air_beep-val is deprecated.  Use tli65_can_msgs-msg:air_beep instead.")
  (air_beep m))

(cl:ensure-generic-function 'front_fog_light-val :lambda-list '(m))
(cl:defmethod front_fog_light-val ((m <RxSt7>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:front_fog_light-val is deprecated.  Use tli65_can_msgs-msg:front_fog_light instead.")
  (front_fog_light m))

(cl:ensure-generic-function 'front_work_light-val :lambda-list '(m))
(cl:defmethod front_work_light-val ((m <RxSt7>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:front_work_light-val is deprecated.  Use tli65_can_msgs-msg:front_work_light instead.")
  (front_work_light m))

(cl:ensure-generic-function 'side_light-val :lambda-list '(m))
(cl:defmethod side_light-val ((m <RxSt7>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:side_light-val is deprecated.  Use tli65_can_msgs-msg:side_light instead.")
  (side_light m))

(cl:ensure-generic-function 'position_light-val :lambda-list '(m))
(cl:defmethod position_light-val ((m <RxSt7>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:position_light-val is deprecated.  Use tli65_can_msgs-msg:position_light instead.")
  (position_light m))

(cl:ensure-generic-function 'sweeper_power-val :lambda-list '(m))
(cl:defmethod sweeper_power-val ((m <RxSt7>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:sweeper_power-val is deprecated.  Use tli65_can_msgs-msg:sweeper_power instead.")
  (sweeper_power m))

(cl:ensure-generic-function 'EBS_power-val :lambda-list '(m))
(cl:defmethod EBS_power-val ((m <RxSt7>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:EBS_power-val is deprecated.  Use tli65_can_msgs-msg:EBS_power instead.")
  (EBS_power m))

(cl:ensure-generic-function 'air_pressure_power-val :lambda-list '(m))
(cl:defmethod air_pressure_power-val ((m <RxSt7>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:air_pressure_power-val is deprecated.  Use tli65_can_msgs-msg:air_pressure_power instead.")
  (air_pressure_power m))

(cl:ensure-generic-function 'hang_up_power-val :lambda-list '(m))
(cl:defmethod hang_up_power-val ((m <RxSt7>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:hang_up_power-val is deprecated.  Use tli65_can_msgs-msg:hang_up_power instead.")
  (hang_up_power m))

(cl:ensure-generic-function 'hang_down_power-val :lambda-list '(m))
(cl:defmethod hang_down_power-val ((m <RxSt7>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:hang_down_power-val is deprecated.  Use tli65_can_msgs-msg:hang_down_power instead.")
  (hang_down_power m))

(cl:ensure-generic-function 'hang_manual_power-val :lambda-list '(m))
(cl:defmethod hang_manual_power-val ((m <RxSt7>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:hang_manual_power-val is deprecated.  Use tli65_can_msgs-msg:hang_manual_power instead.")
  (hang_manual_power m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RxSt7>) ostream)
  "Serializes a message object of type '<RxSt7>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'left_light)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'right_light)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'near_light)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'far_light)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'top_warning_light)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'air_beep)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'front_fog_light)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'front_work_light)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'side_light)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'position_light)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sweeper_power)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'EBS_power)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'air_pressure_power)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'hang_up_power)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'hang_down_power)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'hang_manual_power)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RxSt7>) istream)
  "Deserializes a message object of type '<RxSt7>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'left_light)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'right_light)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'near_light)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'far_light)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'top_warning_light)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'air_beep)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'front_fog_light)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'front_work_light)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'side_light)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'position_light)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sweeper_power)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'EBS_power)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'air_pressure_power)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'hang_up_power)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'hang_down_power)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'hang_manual_power)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RxSt7>)))
  "Returns string type for a message object of type '<RxSt7>"
  "tli65_can_msgs/RxSt7")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RxSt7)))
  "Returns string type for a message object of type 'RxSt7"
  "tli65_can_msgs/RxSt7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RxSt7>)))
  "Returns md5sum for a message object of type '<RxSt7>"
  "a534ca6f7b38ad0e102e1d9218e5253e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RxSt7)))
  "Returns md5sum for a message object of type 'RxSt7"
  "a534ca6f7b38ad0e102e1d9218e5253e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RxSt7>)))
  "Returns full string definition for message of type '<RxSt7>"
  (cl:format cl:nil "Header header~%~%uint8 left_light~%uint8 right_light~%uint8 near_light~%uint8 far_light~%uint8 top_warning_light~%uint8 air_beep~%uint8 front_fog_light~%uint8 front_work_light~%uint8 side_light~%uint8 position_light~%uint8 sweeper_power~%uint8 EBS_power~%uint8 air_pressure_power~%uint8 hang_up_power~%uint8 hang_down_power~%uint8 hang_manual_power~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RxSt7)))
  "Returns full string definition for message of type 'RxSt7"
  (cl:format cl:nil "Header header~%~%uint8 left_light~%uint8 right_light~%uint8 near_light~%uint8 far_light~%uint8 top_warning_light~%uint8 air_beep~%uint8 front_fog_light~%uint8 front_work_light~%uint8 side_light~%uint8 position_light~%uint8 sweeper_power~%uint8 EBS_power~%uint8 air_pressure_power~%uint8 hang_up_power~%uint8 hang_down_power~%uint8 hang_manual_power~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RxSt7>))
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
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RxSt7>))
  "Converts a ROS message object to a list"
  (cl:list 'RxSt7
    (cl:cons ':header (header msg))
    (cl:cons ':left_light (left_light msg))
    (cl:cons ':right_light (right_light msg))
    (cl:cons ':near_light (near_light msg))
    (cl:cons ':far_light (far_light msg))
    (cl:cons ':top_warning_light (top_warning_light msg))
    (cl:cons ':air_beep (air_beep msg))
    (cl:cons ':front_fog_light (front_fog_light msg))
    (cl:cons ':front_work_light (front_work_light msg))
    (cl:cons ':side_light (side_light msg))
    (cl:cons ':position_light (position_light msg))
    (cl:cons ':sweeper_power (sweeper_power msg))
    (cl:cons ':EBS_power (EBS_power msg))
    (cl:cons ':air_pressure_power (air_pressure_power msg))
    (cl:cons ':hang_up_power (hang_up_power msg))
    (cl:cons ':hang_down_power (hang_down_power msg))
    (cl:cons ':hang_manual_power (hang_manual_power msg))
))
