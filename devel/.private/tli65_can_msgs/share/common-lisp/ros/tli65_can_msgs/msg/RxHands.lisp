; Auto-generated. Do not edit!


(cl:in-package tli65_can_msgs-msg)


;//! \htmlinclude RxHands.msg.html

(cl:defclass <RxHands> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (shake_hands
    :reader shake_hands
    :initarg :shake_hands
    :type cl:string
    :initform ""))
)

(cl:defclass RxHands (<RxHands>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RxHands>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RxHands)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tli65_can_msgs-msg:<RxHands> is deprecated: use tli65_can_msgs-msg:RxHands instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RxHands>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:header-val is deprecated.  Use tli65_can_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'shake_hands-val :lambda-list '(m))
(cl:defmethod shake_hands-val ((m <RxHands>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:shake_hands-val is deprecated.  Use tli65_can_msgs-msg:shake_hands instead.")
  (shake_hands m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RxHands>) ostream)
  "Serializes a message object of type '<RxHands>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'shake_hands))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'shake_hands))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RxHands>) istream)
  "Deserializes a message object of type '<RxHands>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'shake_hands) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'shake_hands) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RxHands>)))
  "Returns string type for a message object of type '<RxHands>"
  "tli65_can_msgs/RxHands")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RxHands)))
  "Returns string type for a message object of type 'RxHands"
  "tli65_can_msgs/RxHands")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RxHands>)))
  "Returns md5sum for a message object of type '<RxHands>"
  "0d67e1825abc26179d982f84d634df4a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RxHands)))
  "Returns md5sum for a message object of type 'RxHands"
  "0d67e1825abc26179d982f84d634df4a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RxHands>)))
  "Returns full string definition for message of type '<RxHands>"
  (cl:format cl:nil "Header header~%~%string shake_hands~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RxHands)))
  "Returns full string definition for message of type 'RxHands"
  (cl:format cl:nil "Header header~%~%string shake_hands~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RxHands>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'shake_hands))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RxHands>))
  "Converts a ROS message object to a list"
  (cl:list 'RxHands
    (cl:cons ':header (header msg))
    (cl:cons ':shake_hands (shake_hands msg))
))
