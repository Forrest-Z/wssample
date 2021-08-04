; Auto-generated. Do not edit!


(cl:in-package perception_msgs-msg)


;//! \htmlinclude Obj.msg.html

(cl:defclass <Obj> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (confidence
    :reader confidence
    :initarg :confidence
    :type cl:float
    :initform 0.0)
   (age
    :reader age
    :initarg :age
    :type cl:integer
    :initform 0)
   (left_time
    :reader left_time
    :initarg :left_time
    :type cl:integer
    :initform 0)
   (left_bottom
    :reader left_bottom
    :initarg :left_bottom
    :type geometry_msgs-msg:Point32
    :initform (cl:make-instance 'geometry_msgs-msg:Point32))
   (right_bottom
    :reader right_bottom
    :initarg :right_bottom
    :type geometry_msgs-msg:Point32
    :initform (cl:make-instance 'geometry_msgs-msg:Point32))
   (left_top
    :reader left_top
    :initarg :left_top
    :type geometry_msgs-msg:Point32
    :initform (cl:make-instance 'geometry_msgs-msg:Point32))
   (right_top
    :reader right_top
    :initarg :right_top
    :type geometry_msgs-msg:Point32
    :initform (cl:make-instance 'geometry_msgs-msg:Point32))
   (v_north
    :reader v_north
    :initarg :v_north
    :type cl:float
    :initform 0.0)
   (v_east
    :reader v_east
    :initarg :v_east
    :type cl:float
    :initform 0.0)
   (v_ground
    :reader v_ground
    :initarg :v_ground
    :type cl:float
    :initform 0.0))
)

(cl:defclass Obj (<Obj>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Obj>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Obj)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_msgs-msg:<Obj> is deprecated: use perception_msgs-msg:Obj instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <Obj>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:id-val is deprecated.  Use perception_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'confidence-val :lambda-list '(m))
(cl:defmethod confidence-val ((m <Obj>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:confidence-val is deprecated.  Use perception_msgs-msg:confidence instead.")
  (confidence m))

(cl:ensure-generic-function 'age-val :lambda-list '(m))
(cl:defmethod age-val ((m <Obj>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:age-val is deprecated.  Use perception_msgs-msg:age instead.")
  (age m))

(cl:ensure-generic-function 'left_time-val :lambda-list '(m))
(cl:defmethod left_time-val ((m <Obj>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:left_time-val is deprecated.  Use perception_msgs-msg:left_time instead.")
  (left_time m))

(cl:ensure-generic-function 'left_bottom-val :lambda-list '(m))
(cl:defmethod left_bottom-val ((m <Obj>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:left_bottom-val is deprecated.  Use perception_msgs-msg:left_bottom instead.")
  (left_bottom m))

(cl:ensure-generic-function 'right_bottom-val :lambda-list '(m))
(cl:defmethod right_bottom-val ((m <Obj>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:right_bottom-val is deprecated.  Use perception_msgs-msg:right_bottom instead.")
  (right_bottom m))

(cl:ensure-generic-function 'left_top-val :lambda-list '(m))
(cl:defmethod left_top-val ((m <Obj>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:left_top-val is deprecated.  Use perception_msgs-msg:left_top instead.")
  (left_top m))

(cl:ensure-generic-function 'right_top-val :lambda-list '(m))
(cl:defmethod right_top-val ((m <Obj>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:right_top-val is deprecated.  Use perception_msgs-msg:right_top instead.")
  (right_top m))

(cl:ensure-generic-function 'v_north-val :lambda-list '(m))
(cl:defmethod v_north-val ((m <Obj>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:v_north-val is deprecated.  Use perception_msgs-msg:v_north instead.")
  (v_north m))

(cl:ensure-generic-function 'v_east-val :lambda-list '(m))
(cl:defmethod v_east-val ((m <Obj>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:v_east-val is deprecated.  Use perception_msgs-msg:v_east instead.")
  (v_east m))

(cl:ensure-generic-function 'v_ground-val :lambda-list '(m))
(cl:defmethod v_ground-val ((m <Obj>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:v_ground-val is deprecated.  Use perception_msgs-msg:v_ground instead.")
  (v_ground m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Obj>) ostream)
  "Serializes a message object of type '<Obj>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'confidence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'age)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'left_time)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'left_bottom) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'right_bottom) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'left_top) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'right_top) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'v_north))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'v_east))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'v_ground))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Obj>) istream)
  "Deserializes a message object of type '<Obj>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'confidence) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'age) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'left_time) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'left_bottom) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'right_bottom) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'left_top) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'right_top) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'v_north) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'v_east) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'v_ground) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Obj>)))
  "Returns string type for a message object of type '<Obj>"
  "perception_msgs/Obj")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Obj)))
  "Returns string type for a message object of type 'Obj"
  "perception_msgs/Obj")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Obj>)))
  "Returns md5sum for a message object of type '<Obj>"
  "bad9b664cc24929ab35b00e428cc0976")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Obj)))
  "Returns md5sum for a message object of type 'Obj"
  "bad9b664cc24929ab35b00e428cc0976")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Obj>)))
  "Returns full string definition for message of type '<Obj>"
  (cl:format cl:nil "int32 id~%~%float32 confidence~%int32 age~%int32 left_time~%~%geometry_msgs/Point32 left_bottom~%geometry_msgs/Point32 right_bottom~%geometry_msgs/Point32 left_top~%geometry_msgs/Point32 right_top~%~%# v north, east, to ground~%float32 v_north~%float32 v_east~%float32 v_ground~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Obj)))
  "Returns full string definition for message of type 'Obj"
  (cl:format cl:nil "int32 id~%~%float32 confidence~%int32 age~%int32 left_time~%~%geometry_msgs/Point32 left_bottom~%geometry_msgs/Point32 right_bottom~%geometry_msgs/Point32 left_top~%geometry_msgs/Point32 right_top~%~%# v north, east, to ground~%float32 v_north~%float32 v_east~%float32 v_ground~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Obj>))
  (cl:+ 0
     4
     4
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'left_bottom))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'right_bottom))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'left_top))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'right_top))
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Obj>))
  "Converts a ROS message object to a list"
  (cl:list 'Obj
    (cl:cons ':id (id msg))
    (cl:cons ':confidence (confidence msg))
    (cl:cons ':age (age msg))
    (cl:cons ':left_time (left_time msg))
    (cl:cons ':left_bottom (left_bottom msg))
    (cl:cons ':right_bottom (right_bottom msg))
    (cl:cons ':left_top (left_top msg))
    (cl:cons ':right_top (right_top msg))
    (cl:cons ':v_north (v_north msg))
    (cl:cons ':v_east (v_east msg))
    (cl:cons ':v_ground (v_ground msg))
))
