; Auto-generated. Do not edit!


(cl:in-package g29_teledrive_msgs-msg)


;//! \htmlinclude G29_teledrive.msg.html

(cl:defclass <G29_teledrive> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (steer
    :reader steer
    :initarg :steer
    :type cl:float
    :initform 0.0)
   (throttle
    :reader throttle
    :initarg :throttle
    :type cl:float
    :initform 0.0)
   (xbr
    :reader xbr
    :initarg :xbr
    :type cl:float
    :initform 0.0)
   (hang
    :reader hang
    :initarg :hang
    :type cl:float
    :initform 0.0)
   (epb
    :reader epb
    :initarg :epb
    :type cl:fixnum
    :initform 0)
   (gear
    :reader gear
    :initarg :gear
    :type cl:fixnum
    :initform 0))
)

(cl:defclass G29_teledrive (<G29_teledrive>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <G29_teledrive>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'G29_teledrive)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name g29_teledrive_msgs-msg:<G29_teledrive> is deprecated: use g29_teledrive_msgs-msg:G29_teledrive instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <G29_teledrive>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader g29_teledrive_msgs-msg:header-val is deprecated.  Use g29_teledrive_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'steer-val :lambda-list '(m))
(cl:defmethod steer-val ((m <G29_teledrive>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader g29_teledrive_msgs-msg:steer-val is deprecated.  Use g29_teledrive_msgs-msg:steer instead.")
  (steer m))

(cl:ensure-generic-function 'throttle-val :lambda-list '(m))
(cl:defmethod throttle-val ((m <G29_teledrive>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader g29_teledrive_msgs-msg:throttle-val is deprecated.  Use g29_teledrive_msgs-msg:throttle instead.")
  (throttle m))

(cl:ensure-generic-function 'xbr-val :lambda-list '(m))
(cl:defmethod xbr-val ((m <G29_teledrive>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader g29_teledrive_msgs-msg:xbr-val is deprecated.  Use g29_teledrive_msgs-msg:xbr instead.")
  (xbr m))

(cl:ensure-generic-function 'hang-val :lambda-list '(m))
(cl:defmethod hang-val ((m <G29_teledrive>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader g29_teledrive_msgs-msg:hang-val is deprecated.  Use g29_teledrive_msgs-msg:hang instead.")
  (hang m))

(cl:ensure-generic-function 'epb-val :lambda-list '(m))
(cl:defmethod epb-val ((m <G29_teledrive>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader g29_teledrive_msgs-msg:epb-val is deprecated.  Use g29_teledrive_msgs-msg:epb instead.")
  (epb m))

(cl:ensure-generic-function 'gear-val :lambda-list '(m))
(cl:defmethod gear-val ((m <G29_teledrive>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader g29_teledrive_msgs-msg:gear-val is deprecated.  Use g29_teledrive_msgs-msg:gear instead.")
  (gear m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <G29_teledrive>) ostream)
  "Serializes a message object of type '<G29_teledrive>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'steer))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'throttle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'xbr))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'hang))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'epb)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'gear)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <G29_teledrive>) istream)
  "Deserializes a message object of type '<G29_teledrive>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'steer) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'throttle) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'xbr) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'hang) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'epb) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gear) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<G29_teledrive>)))
  "Returns string type for a message object of type '<G29_teledrive>"
  "g29_teledrive_msgs/G29_teledrive")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'G29_teledrive)))
  "Returns string type for a message object of type 'G29_teledrive"
  "g29_teledrive_msgs/G29_teledrive")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<G29_teledrive>)))
  "Returns md5sum for a message object of type '<G29_teledrive>"
  "499a726284cbe0d6a1daa981a1060bff")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'G29_teledrive)))
  "Returns md5sum for a message object of type 'G29_teledrive"
  "499a726284cbe0d6a1daa981a1060bff")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<G29_teledrive>)))
  "Returns full string definition for message of type '<G29_teledrive>"
  (cl:format cl:nil "Header header~%~%float64 steer~%float64 throttle~%float64 xbr~%float64 hang~%int8 epb~%int8 gear~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'G29_teledrive)))
  "Returns full string definition for message of type 'G29_teledrive"
  (cl:format cl:nil "Header header~%~%float64 steer~%float64 throttle~%float64 xbr~%float64 hang~%int8 epb~%int8 gear~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <G29_teledrive>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     8
     8
     8
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <G29_teledrive>))
  "Converts a ROS message object to a list"
  (cl:list 'G29_teledrive
    (cl:cons ':header (header msg))
    (cl:cons ':steer (steer msg))
    (cl:cons ':throttle (throttle msg))
    (cl:cons ':xbr (xbr msg))
    (cl:cons ':hang (hang msg))
    (cl:cons ':epb (epb msg))
    (cl:cons ':gear (gear msg))
))
