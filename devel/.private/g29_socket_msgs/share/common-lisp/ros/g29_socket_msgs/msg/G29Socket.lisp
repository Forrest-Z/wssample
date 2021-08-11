; Auto-generated. Do not edit!


(cl:in-package g29_socket_msgs-msg)


;//! \htmlinclude G29Socket.msg.html

(cl:defclass <G29Socket> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (axes
    :reader axes
    :initarg :axes
    :type (cl:vector cl:float)
   :initform (cl:make-array 6 :element-type 'cl:float :initial-element 0.0))
   (buttons
    :reader buttons
    :initarg :buttons
    :type (cl:vector cl:float)
   :initform (cl:make-array 25 :element-type 'cl:float :initial-element 0.0))
   (connect
    :reader connect
    :initarg :connect
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass G29Socket (<G29Socket>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <G29Socket>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'G29Socket)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name g29_socket_msgs-msg:<G29Socket> is deprecated: use g29_socket_msgs-msg:G29Socket instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <G29Socket>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader g29_socket_msgs-msg:header-val is deprecated.  Use g29_socket_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'axes-val :lambda-list '(m))
(cl:defmethod axes-val ((m <G29Socket>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader g29_socket_msgs-msg:axes-val is deprecated.  Use g29_socket_msgs-msg:axes instead.")
  (axes m))

(cl:ensure-generic-function 'buttons-val :lambda-list '(m))
(cl:defmethod buttons-val ((m <G29Socket>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader g29_socket_msgs-msg:buttons-val is deprecated.  Use g29_socket_msgs-msg:buttons instead.")
  (buttons m))

(cl:ensure-generic-function 'connect-val :lambda-list '(m))
(cl:defmethod connect-val ((m <G29Socket>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader g29_socket_msgs-msg:connect-val is deprecated.  Use g29_socket_msgs-msg:connect instead.")
  (connect m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <G29Socket>) ostream)
  "Serializes a message object of type '<G29Socket>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'axes))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'buttons))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'connect) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <G29Socket>) istream)
  "Deserializes a message object of type '<G29Socket>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:setf (cl:slot-value msg 'axes) (cl:make-array 6))
  (cl:let ((vals (cl:slot-value msg 'axes)))
    (cl:dotimes (i 6)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'buttons) (cl:make-array 25))
  (cl:let ((vals (cl:slot-value msg 'buttons)))
    (cl:dotimes (i 25)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
    (cl:setf (cl:slot-value msg 'connect) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<G29Socket>)))
  "Returns string type for a message object of type '<G29Socket>"
  "g29_socket_msgs/G29Socket")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'G29Socket)))
  "Returns string type for a message object of type 'G29Socket"
  "g29_socket_msgs/G29Socket")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<G29Socket>)))
  "Returns md5sum for a message object of type '<G29Socket>"
  "db2ca71d5047b4c31b84cebca554669d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'G29Socket)))
  "Returns md5sum for a message object of type 'G29Socket"
  "db2ca71d5047b4c31b84cebca554669d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<G29Socket>)))
  "Returns full string definition for message of type '<G29Socket>"
  (cl:format cl:nil "Header header~%~%float64[6] axes~%float64[25] buttons~%~%bool connect~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'G29Socket)))
  "Returns full string definition for message of type 'G29Socket"
  (cl:format cl:nil "Header header~%~%float64[6] axes~%float64[25] buttons~%~%bool connect~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <G29Socket>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'axes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'buttons) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <G29Socket>))
  "Converts a ROS message object to a list"
  (cl:list 'G29Socket
    (cl:cons ':header (header msg))
    (cl:cons ':axes (axes msg))
    (cl:cons ':buttons (buttons msg))
    (cl:cons ':connect (connect msg))
))
