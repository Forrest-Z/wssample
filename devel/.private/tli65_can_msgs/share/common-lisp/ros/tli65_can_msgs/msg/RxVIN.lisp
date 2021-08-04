; Auto-generated. Do not edit!


(cl:in-package tli65_can_msgs-msg)


;//! \htmlinclude RxVIN.msg.html

(cl:defclass <RxVIN> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (vin_code
    :reader vin_code
    :initarg :vin_code
    :type cl:string
    :initform ""))
)

(cl:defclass RxVIN (<RxVIN>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RxVIN>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RxVIN)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tli65_can_msgs-msg:<RxVIN> is deprecated: use tli65_can_msgs-msg:RxVIN instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RxVIN>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:header-val is deprecated.  Use tli65_can_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'vin_code-val :lambda-list '(m))
(cl:defmethod vin_code-val ((m <RxVIN>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:vin_code-val is deprecated.  Use tli65_can_msgs-msg:vin_code instead.")
  (vin_code m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RxVIN>) ostream)
  "Serializes a message object of type '<RxVIN>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'vin_code))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'vin_code))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RxVIN>) istream)
  "Deserializes a message object of type '<RxVIN>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'vin_code) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'vin_code) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RxVIN>)))
  "Returns string type for a message object of type '<RxVIN>"
  "tli65_can_msgs/RxVIN")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RxVIN)))
  "Returns string type for a message object of type 'RxVIN"
  "tli65_can_msgs/RxVIN")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RxVIN>)))
  "Returns md5sum for a message object of type '<RxVIN>"
  "dc7fca3f8f08a8e79c41936c0ed19009")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RxVIN)))
  "Returns md5sum for a message object of type 'RxVIN"
  "dc7fca3f8f08a8e79c41936c0ed19009")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RxVIN>)))
  "Returns full string definition for message of type '<RxVIN>"
  (cl:format cl:nil "Header header~%~%string vin_code~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RxVIN)))
  "Returns full string definition for message of type 'RxVIN"
  (cl:format cl:nil "Header header~%~%string vin_code~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RxVIN>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'vin_code))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RxVIN>))
  "Converts a ROS message object to a list"
  (cl:list 'RxVIN
    (cl:cons ':header (header msg))
    (cl:cons ':vin_code (vin_code msg))
))
