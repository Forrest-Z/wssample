; Auto-generated. Do not edit!


(cl:in-package control_msgs-msg)


;//! \htmlinclude LowspeedControl.msg.html

(cl:defclass <LowspeedControl> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (hands
    :reader hands
    :initarg :hands
    :type cl:string
    :initform "")
   (EPB_active
    :reader EPB_active
    :initarg :EPB_active
    :type cl:fixnum
    :initform 0)
   (EPB
    :reader EPB
    :initarg :EPB
    :type cl:fixnum
    :initform 0)
   (retarder_active
    :reader retarder_active
    :initarg :retarder_active
    :type cl:fixnum
    :initform 0)
   (retarder
    :reader retarder
    :initarg :retarder
    :type cl:float
    :initform 0.0)
   (gear_active
    :reader gear_active
    :initarg :gear_active
    :type cl:fixnum
    :initform 0)
   (max_forward_gear
    :reader max_forward_gear
    :initarg :max_forward_gear
    :type cl:fixnum
    :initform 0)
   (gear
    :reader gear
    :initarg :gear
    :type cl:fixnum
    :initform 0)
   (hang_active
    :reader hang_active
    :initarg :hang_active
    :type cl:fixnum
    :initform 0)
   (hang
    :reader hang
    :initarg :hang
    :type cl:fixnum
    :initform 0)
   (left
    :reader left
    :initarg :left
    :type cl:fixnum
    :initform 0)
   (right
    :reader right
    :initarg :right
    :type cl:fixnum
    :initform 0)
   (near
    :reader near
    :initarg :near
    :type cl:fixnum
    :initform 0)
   (far
    :reader far
    :initarg :far
    :type cl:fixnum
    :initform 0)
   (top_warn
    :reader top_warn
    :initarg :top_warn
    :type cl:fixnum
    :initform 0)
   (air_beep
    :reader air_beep
    :initarg :air_beep
    :type cl:fixnum
    :initform 0)
   (front_fog
    :reader front_fog
    :initarg :front_fog
    :type cl:fixnum
    :initform 0)
   (front_work
    :reader front_work
    :initarg :front_work
    :type cl:fixnum
    :initform 0)
   (side
    :reader side
    :initarg :side
    :type cl:fixnum
    :initform 0)
   (position
    :reader position
    :initarg :position
    :type cl:fixnum
    :initform 0)
   (emergency
    :reader emergency
    :initarg :emergency
    :type cl:fixnum
    :initform 0)
   (brake
    :reader brake
    :initarg :brake
    :type cl:fixnum
    :initform 0)
   (reverse
    :reader reverse
    :initarg :reverse
    :type cl:fixnum
    :initform 0)
   (back_work
    :reader back_work
    :initarg :back_work
    :type cl:fixnum
    :initform 0)
   (cooler
    :reader cooler
    :initarg :cooler
    :type cl:fixnum
    :initform 0)
   (axle_diff
    :reader axle_diff
    :initarg :axle_diff
    :type cl:fixnum
    :initform 0)
   (exhaust_brake
    :reader exhaust_brake
    :initarg :exhaust_brake
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LowspeedControl (<LowspeedControl>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LowspeedControl>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LowspeedControl)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name control_msgs-msg:<LowspeedControl> is deprecated: use control_msgs-msg:LowspeedControl instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <LowspeedControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:header-val is deprecated.  Use control_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'hands-val :lambda-list '(m))
(cl:defmethod hands-val ((m <LowspeedControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:hands-val is deprecated.  Use control_msgs-msg:hands instead.")
  (hands m))

(cl:ensure-generic-function 'EPB_active-val :lambda-list '(m))
(cl:defmethod EPB_active-val ((m <LowspeedControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:EPB_active-val is deprecated.  Use control_msgs-msg:EPB_active instead.")
  (EPB_active m))

(cl:ensure-generic-function 'EPB-val :lambda-list '(m))
(cl:defmethod EPB-val ((m <LowspeedControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:EPB-val is deprecated.  Use control_msgs-msg:EPB instead.")
  (EPB m))

(cl:ensure-generic-function 'retarder_active-val :lambda-list '(m))
(cl:defmethod retarder_active-val ((m <LowspeedControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:retarder_active-val is deprecated.  Use control_msgs-msg:retarder_active instead.")
  (retarder_active m))

(cl:ensure-generic-function 'retarder-val :lambda-list '(m))
(cl:defmethod retarder-val ((m <LowspeedControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:retarder-val is deprecated.  Use control_msgs-msg:retarder instead.")
  (retarder m))

(cl:ensure-generic-function 'gear_active-val :lambda-list '(m))
(cl:defmethod gear_active-val ((m <LowspeedControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:gear_active-val is deprecated.  Use control_msgs-msg:gear_active instead.")
  (gear_active m))

(cl:ensure-generic-function 'max_forward_gear-val :lambda-list '(m))
(cl:defmethod max_forward_gear-val ((m <LowspeedControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:max_forward_gear-val is deprecated.  Use control_msgs-msg:max_forward_gear instead.")
  (max_forward_gear m))

(cl:ensure-generic-function 'gear-val :lambda-list '(m))
(cl:defmethod gear-val ((m <LowspeedControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:gear-val is deprecated.  Use control_msgs-msg:gear instead.")
  (gear m))

(cl:ensure-generic-function 'hang_active-val :lambda-list '(m))
(cl:defmethod hang_active-val ((m <LowspeedControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:hang_active-val is deprecated.  Use control_msgs-msg:hang_active instead.")
  (hang_active m))

(cl:ensure-generic-function 'hang-val :lambda-list '(m))
(cl:defmethod hang-val ((m <LowspeedControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:hang-val is deprecated.  Use control_msgs-msg:hang instead.")
  (hang m))

(cl:ensure-generic-function 'left-val :lambda-list '(m))
(cl:defmethod left-val ((m <LowspeedControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:left-val is deprecated.  Use control_msgs-msg:left instead.")
  (left m))

(cl:ensure-generic-function 'right-val :lambda-list '(m))
(cl:defmethod right-val ((m <LowspeedControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:right-val is deprecated.  Use control_msgs-msg:right instead.")
  (right m))

(cl:ensure-generic-function 'near-val :lambda-list '(m))
(cl:defmethod near-val ((m <LowspeedControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:near-val is deprecated.  Use control_msgs-msg:near instead.")
  (near m))

(cl:ensure-generic-function 'far-val :lambda-list '(m))
(cl:defmethod far-val ((m <LowspeedControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:far-val is deprecated.  Use control_msgs-msg:far instead.")
  (far m))

(cl:ensure-generic-function 'top_warn-val :lambda-list '(m))
(cl:defmethod top_warn-val ((m <LowspeedControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:top_warn-val is deprecated.  Use control_msgs-msg:top_warn instead.")
  (top_warn m))

(cl:ensure-generic-function 'air_beep-val :lambda-list '(m))
(cl:defmethod air_beep-val ((m <LowspeedControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:air_beep-val is deprecated.  Use control_msgs-msg:air_beep instead.")
  (air_beep m))

(cl:ensure-generic-function 'front_fog-val :lambda-list '(m))
(cl:defmethod front_fog-val ((m <LowspeedControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:front_fog-val is deprecated.  Use control_msgs-msg:front_fog instead.")
  (front_fog m))

(cl:ensure-generic-function 'front_work-val :lambda-list '(m))
(cl:defmethod front_work-val ((m <LowspeedControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:front_work-val is deprecated.  Use control_msgs-msg:front_work instead.")
  (front_work m))

(cl:ensure-generic-function 'side-val :lambda-list '(m))
(cl:defmethod side-val ((m <LowspeedControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:side-val is deprecated.  Use control_msgs-msg:side instead.")
  (side m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <LowspeedControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:position-val is deprecated.  Use control_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'emergency-val :lambda-list '(m))
(cl:defmethod emergency-val ((m <LowspeedControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:emergency-val is deprecated.  Use control_msgs-msg:emergency instead.")
  (emergency m))

(cl:ensure-generic-function 'brake-val :lambda-list '(m))
(cl:defmethod brake-val ((m <LowspeedControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:brake-val is deprecated.  Use control_msgs-msg:brake instead.")
  (brake m))

(cl:ensure-generic-function 'reverse-val :lambda-list '(m))
(cl:defmethod reverse-val ((m <LowspeedControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:reverse-val is deprecated.  Use control_msgs-msg:reverse instead.")
  (reverse m))

(cl:ensure-generic-function 'back_work-val :lambda-list '(m))
(cl:defmethod back_work-val ((m <LowspeedControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:back_work-val is deprecated.  Use control_msgs-msg:back_work instead.")
  (back_work m))

(cl:ensure-generic-function 'cooler-val :lambda-list '(m))
(cl:defmethod cooler-val ((m <LowspeedControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:cooler-val is deprecated.  Use control_msgs-msg:cooler instead.")
  (cooler m))

(cl:ensure-generic-function 'axle_diff-val :lambda-list '(m))
(cl:defmethod axle_diff-val ((m <LowspeedControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:axle_diff-val is deprecated.  Use control_msgs-msg:axle_diff instead.")
  (axle_diff m))

(cl:ensure-generic-function 'exhaust_brake-val :lambda-list '(m))
(cl:defmethod exhaust_brake-val ((m <LowspeedControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-msg:exhaust_brake-val is deprecated.  Use control_msgs-msg:exhaust_brake instead.")
  (exhaust_brake m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LowspeedControl>) ostream)
  "Serializes a message object of type '<LowspeedControl>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'hands))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'hands))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'EPB_active)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'EPB)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'retarder_active)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'retarder))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gear_active)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'max_forward_gear)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gear)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'hang_active)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'hang)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'left)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'right)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'near)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'far)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'top_warn)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'air_beep)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'front_fog)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'front_work)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'side)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'position)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'emergency)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'brake)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reverse)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'back_work)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cooler)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'axle_diff)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'exhaust_brake)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LowspeedControl>) istream)
  "Deserializes a message object of type '<LowspeedControl>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'hands) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'hands) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'EPB_active)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'EPB)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'retarder_active)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'retarder) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gear_active)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'max_forward_gear)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gear)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'hang_active)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'hang)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'left)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'right)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'near)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'far)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'top_warn)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'air_beep)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'front_fog)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'front_work)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'side)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'position)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'emergency)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'brake)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reverse)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'back_work)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cooler)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'axle_diff)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'exhaust_brake)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LowspeedControl>)))
  "Returns string type for a message object of type '<LowspeedControl>"
  "control_msgs/LowspeedControl")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LowspeedControl)))
  "Returns string type for a message object of type 'LowspeedControl"
  "control_msgs/LowspeedControl")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LowspeedControl>)))
  "Returns md5sum for a message object of type '<LowspeedControl>"
  "575bedbd92f3b388148e6ef92921e040")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LowspeedControl)))
  "Returns md5sum for a message object of type 'LowspeedControl"
  "575bedbd92f3b388148e6ef92921e040")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LowspeedControl>)))
  "Returns full string definition for message of type '<LowspeedControl>"
  (cl:format cl:nil "Header header~%~%string hands~%~%uint8 EPB_active ~%uint8 EPB~%uint8 retarder_active~%float64 retarder~%uint8 gear_active~%uint8 max_forward_gear~%uint8 gear~%uint8 hang_active~%uint8 hang~%~%# body switch~%uint8 left~%uint8 right~%uint8 near~%uint8 far~%uint8 top_warn~%uint8 air_beep~%uint8 front_fog~%uint8 front_work~%uint8 side~%uint8 position~%uint8 emergency~%uint8 brake~%uint8 reverse~%uint8 back_work~%uint8 cooler~%uint8 axle_diff~%uint8 exhaust_brake~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LowspeedControl)))
  "Returns full string definition for message of type 'LowspeedControl"
  (cl:format cl:nil "Header header~%~%string hands~%~%uint8 EPB_active ~%uint8 EPB~%uint8 retarder_active~%float64 retarder~%uint8 gear_active~%uint8 max_forward_gear~%uint8 gear~%uint8 hang_active~%uint8 hang~%~%# body switch~%uint8 left~%uint8 right~%uint8 near~%uint8 far~%uint8 top_warn~%uint8 air_beep~%uint8 front_fog~%uint8 front_work~%uint8 side~%uint8 position~%uint8 emergency~%uint8 brake~%uint8 reverse~%uint8 back_work~%uint8 cooler~%uint8 axle_diff~%uint8 exhaust_brake~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LowspeedControl>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'hands))
     1
     1
     1
     8
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
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LowspeedControl>))
  "Converts a ROS message object to a list"
  (cl:list 'LowspeedControl
    (cl:cons ':header (header msg))
    (cl:cons ':hands (hands msg))
    (cl:cons ':EPB_active (EPB_active msg))
    (cl:cons ':EPB (EPB msg))
    (cl:cons ':retarder_active (retarder_active msg))
    (cl:cons ':retarder (retarder msg))
    (cl:cons ':gear_active (gear_active msg))
    (cl:cons ':max_forward_gear (max_forward_gear msg))
    (cl:cons ':gear (gear msg))
    (cl:cons ':hang_active (hang_active msg))
    (cl:cons ':hang (hang msg))
    (cl:cons ':left (left msg))
    (cl:cons ':right (right msg))
    (cl:cons ':near (near msg))
    (cl:cons ':far (far msg))
    (cl:cons ':top_warn (top_warn msg))
    (cl:cons ':air_beep (air_beep msg))
    (cl:cons ':front_fog (front_fog msg))
    (cl:cons ':front_work (front_work msg))
    (cl:cons ':side (side msg))
    (cl:cons ':position (position msg))
    (cl:cons ':emergency (emergency msg))
    (cl:cons ':brake (brake msg))
    (cl:cons ':reverse (reverse msg))
    (cl:cons ':back_work (back_work msg))
    (cl:cons ':cooler (cooler msg))
    (cl:cons ':axle_diff (axle_diff msg))
    (cl:cons ':exhaust_brake (exhaust_brake msg))
))
