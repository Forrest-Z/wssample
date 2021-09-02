; Auto-generated. Do not edit!


(cl:in-package frontend_msgs-msg)


;//! \htmlinclude Frontend_control.msg.html

(cl:defclass <Frontend_control> (roslisp-msg-protocol:ros-message)
  ((top_warn
    :reader top_warn
    :initarg :top_warn
    :type cl:integer
    :initform 0)
   (air_beep
    :reader air_beep
    :initarg :air_beep
    :type cl:integer
    :initform 0)
   (front_fog
    :reader front_fog
    :initarg :front_fog
    :type cl:integer
    :initform 0)
   (front_work
    :reader front_work
    :initarg :front_work
    :type cl:integer
    :initform 0)
   (side
    :reader side
    :initarg :side
    :type cl:integer
    :initform 0)
   (position
    :reader position
    :initarg :position
    :type cl:integer
    :initform 0)
   (emergency
    :reader emergency
    :initarg :emergency
    :type cl:integer
    :initform 0)
   (brake
    :reader brake
    :initarg :brake
    :type cl:integer
    :initform 0)
   (reverse
    :reader reverse
    :initarg :reverse
    :type cl:integer
    :initform 0)
   (back_work
    :reader back_work
    :initarg :back_work
    :type cl:integer
    :initform 0))
)

(cl:defclass Frontend_control (<Frontend_control>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Frontend_control>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Frontend_control)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name frontend_msgs-msg:<Frontend_control> is deprecated: use frontend_msgs-msg:Frontend_control instead.")))

(cl:ensure-generic-function 'top_warn-val :lambda-list '(m))
(cl:defmethod top_warn-val ((m <Frontend_control>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frontend_msgs-msg:top_warn-val is deprecated.  Use frontend_msgs-msg:top_warn instead.")
  (top_warn m))

(cl:ensure-generic-function 'air_beep-val :lambda-list '(m))
(cl:defmethod air_beep-val ((m <Frontend_control>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frontend_msgs-msg:air_beep-val is deprecated.  Use frontend_msgs-msg:air_beep instead.")
  (air_beep m))

(cl:ensure-generic-function 'front_fog-val :lambda-list '(m))
(cl:defmethod front_fog-val ((m <Frontend_control>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frontend_msgs-msg:front_fog-val is deprecated.  Use frontend_msgs-msg:front_fog instead.")
  (front_fog m))

(cl:ensure-generic-function 'front_work-val :lambda-list '(m))
(cl:defmethod front_work-val ((m <Frontend_control>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frontend_msgs-msg:front_work-val is deprecated.  Use frontend_msgs-msg:front_work instead.")
  (front_work m))

(cl:ensure-generic-function 'side-val :lambda-list '(m))
(cl:defmethod side-val ((m <Frontend_control>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frontend_msgs-msg:side-val is deprecated.  Use frontend_msgs-msg:side instead.")
  (side m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <Frontend_control>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frontend_msgs-msg:position-val is deprecated.  Use frontend_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'emergency-val :lambda-list '(m))
(cl:defmethod emergency-val ((m <Frontend_control>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frontend_msgs-msg:emergency-val is deprecated.  Use frontend_msgs-msg:emergency instead.")
  (emergency m))

(cl:ensure-generic-function 'brake-val :lambda-list '(m))
(cl:defmethod brake-val ((m <Frontend_control>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frontend_msgs-msg:brake-val is deprecated.  Use frontend_msgs-msg:brake instead.")
  (brake m))

(cl:ensure-generic-function 'reverse-val :lambda-list '(m))
(cl:defmethod reverse-val ((m <Frontend_control>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frontend_msgs-msg:reverse-val is deprecated.  Use frontend_msgs-msg:reverse instead.")
  (reverse m))

(cl:ensure-generic-function 'back_work-val :lambda-list '(m))
(cl:defmethod back_work-val ((m <Frontend_control>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frontend_msgs-msg:back_work-val is deprecated.  Use frontend_msgs-msg:back_work instead.")
  (back_work m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Frontend_control>) ostream)
  "Serializes a message object of type '<Frontend_control>"
  (cl:let* ((signed (cl:slot-value msg 'top_warn)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'air_beep)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'front_fog)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'front_work)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'side)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'position)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'emergency)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'brake)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'reverse)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'back_work)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Frontend_control>) istream)
  "Deserializes a message object of type '<Frontend_control>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'top_warn) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'air_beep) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'front_fog) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'front_work) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'side) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'position) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'emergency) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'brake) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reverse) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'back_work) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Frontend_control>)))
  "Returns string type for a message object of type '<Frontend_control>"
  "frontend_msgs/Frontend_control")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Frontend_control)))
  "Returns string type for a message object of type 'Frontend_control"
  "frontend_msgs/Frontend_control")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Frontend_control>)))
  "Returns md5sum for a message object of type '<Frontend_control>"
  "07e96978fad44d955264fd804f0af5ca")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Frontend_control)))
  "Returns md5sum for a message object of type 'Frontend_control"
  "07e96978fad44d955264fd804f0af5ca")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Frontend_control>)))
  "Returns full string definition for message of type '<Frontend_control>"
  (cl:format cl:nil "# frontend lights control~%# int32 left~%# int32 right~%# int32 near~%# int32 far~%int32 top_warn~%int32 air_beep~%int32 front_fog~%int32 front_work~%int32 side~%int32 position~%int32 emergency~%int32 brake~%int32 reverse~%int32 back_work~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Frontend_control)))
  "Returns full string definition for message of type 'Frontend_control"
  (cl:format cl:nil "# frontend lights control~%# int32 left~%# int32 right~%# int32 near~%# int32 far~%int32 top_warn~%int32 air_beep~%int32 front_fog~%int32 front_work~%int32 side~%int32 position~%int32 emergency~%int32 brake~%int32 reverse~%int32 back_work~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Frontend_control>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Frontend_control>))
  "Converts a ROS message object to a list"
  (cl:list 'Frontend_control
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
))
