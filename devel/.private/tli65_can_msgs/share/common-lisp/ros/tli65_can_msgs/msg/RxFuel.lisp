; Auto-generated. Do not edit!


(cl:in-package tli65_can_msgs-msg)


;//! \htmlinclude RxFuel.msg.html

(cl:defclass <RxFuel> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (fuel_consumption
    :reader fuel_consumption
    :initarg :fuel_consumption
    :type cl:fixnum
    :initform 0)
   (ins_fuel_consumption
    :reader ins_fuel_consumption
    :initarg :ins_fuel_consumption
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RxFuel (<RxFuel>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RxFuel>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RxFuel)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tli65_can_msgs-msg:<RxFuel> is deprecated: use tli65_can_msgs-msg:RxFuel instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RxFuel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:header-val is deprecated.  Use tli65_can_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'fuel_consumption-val :lambda-list '(m))
(cl:defmethod fuel_consumption-val ((m <RxFuel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:fuel_consumption-val is deprecated.  Use tli65_can_msgs-msg:fuel_consumption instead.")
  (fuel_consumption m))

(cl:ensure-generic-function 'ins_fuel_consumption-val :lambda-list '(m))
(cl:defmethod ins_fuel_consumption-val ((m <RxFuel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:ins_fuel_consumption-val is deprecated.  Use tli65_can_msgs-msg:ins_fuel_consumption instead.")
  (ins_fuel_consumption m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RxFuel>) ostream)
  "Serializes a message object of type '<RxFuel>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fuel_consumption)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'fuel_consumption)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ins_fuel_consumption)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ins_fuel_consumption)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RxFuel>) istream)
  "Deserializes a message object of type '<RxFuel>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fuel_consumption)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'fuel_consumption)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ins_fuel_consumption)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ins_fuel_consumption)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RxFuel>)))
  "Returns string type for a message object of type '<RxFuel>"
  "tli65_can_msgs/RxFuel")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RxFuel)))
  "Returns string type for a message object of type 'RxFuel"
  "tli65_can_msgs/RxFuel")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RxFuel>)))
  "Returns md5sum for a message object of type '<RxFuel>"
  "846c3d8c296609ca08f2215de0373f81")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RxFuel)))
  "Returns md5sum for a message object of type 'RxFuel"
  "846c3d8c296609ca08f2215de0373f81")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RxFuel>)))
  "Returns full string definition for message of type '<RxFuel>"
  (cl:format cl:nil "Header header~%~%uint16 fuel_consumption~%uint16 ins_fuel_consumption~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RxFuel)))
  "Returns full string definition for message of type 'RxFuel"
  (cl:format cl:nil "Header header~%~%uint16 fuel_consumption~%uint16 ins_fuel_consumption~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RxFuel>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RxFuel>))
  "Converts a ROS message object to a list"
  (cl:list 'RxFuel
    (cl:cons ':header (header msg))
    (cl:cons ':fuel_consumption (fuel_consumption msg))
    (cl:cons ':ins_fuel_consumption (ins_fuel_consumption msg))
))
