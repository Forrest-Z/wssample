; Auto-generated. Do not edit!


(cl:in-package frontend_msgs-msg)


;//! \htmlinclude Frontend_TLdisplay.msg.html

(cl:defclass <Frontend_TLdisplay> (roslisp-msg-protocol:ros-message)
  ((left_light
    :reader left_light
    :initarg :left_light
    :type cl:integer
    :initform 0)
   (right_light
    :reader right_light
    :initarg :right_light
    :type cl:integer
    :initform 0)
   (near_light
    :reader near_light
    :initarg :near_light
    :type cl:integer
    :initform 0)
   (far_light
    :reader far_light
    :initarg :far_light
    :type cl:integer
    :initform 0)
   (top_warning_light
    :reader top_warning_light
    :initarg :top_warning_light
    :type cl:integer
    :initform 0)
   (air_beep
    :reader air_beep
    :initarg :air_beep
    :type cl:integer
    :initform 0)
   (front_fog_light
    :reader front_fog_light
    :initarg :front_fog_light
    :type cl:integer
    :initform 0)
   (front_work_light
    :reader front_work_light
    :initarg :front_work_light
    :type cl:integer
    :initform 0)
   (side_light
    :reader side_light
    :initarg :side_light
    :type cl:integer
    :initform 0)
   (position_light
    :reader position_light
    :initarg :position_light
    :type cl:integer
    :initform 0)
   (back_left_light
    :reader back_left_light
    :initarg :back_left_light
    :type cl:integer
    :initform 0)
   (back_right_light
    :reader back_right_light
    :initarg :back_right_light
    :type cl:integer
    :initform 0)
   (back_position_light
    :reader back_position_light
    :initarg :back_position_light
    :type cl:integer
    :initform 0)
   (brake_light
    :reader brake_light
    :initarg :brake_light
    :type cl:integer
    :initform 0)
   (reverse_light
    :reader reverse_light
    :initarg :reverse_light
    :type cl:integer
    :initform 0)
   (back_work_light
    :reader back_work_light
    :initarg :back_work_light
    :type cl:integer
    :initform 0))
)

(cl:defclass Frontend_TLdisplay (<Frontend_TLdisplay>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Frontend_TLdisplay>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Frontend_TLdisplay)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name frontend_msgs-msg:<Frontend_TLdisplay> is deprecated: use frontend_msgs-msg:Frontend_TLdisplay instead.")))

(cl:ensure-generic-function 'left_light-val :lambda-list '(m))
(cl:defmethod left_light-val ((m <Frontend_TLdisplay>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frontend_msgs-msg:left_light-val is deprecated.  Use frontend_msgs-msg:left_light instead.")
  (left_light m))

(cl:ensure-generic-function 'right_light-val :lambda-list '(m))
(cl:defmethod right_light-val ((m <Frontend_TLdisplay>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frontend_msgs-msg:right_light-val is deprecated.  Use frontend_msgs-msg:right_light instead.")
  (right_light m))

(cl:ensure-generic-function 'near_light-val :lambda-list '(m))
(cl:defmethod near_light-val ((m <Frontend_TLdisplay>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frontend_msgs-msg:near_light-val is deprecated.  Use frontend_msgs-msg:near_light instead.")
  (near_light m))

(cl:ensure-generic-function 'far_light-val :lambda-list '(m))
(cl:defmethod far_light-val ((m <Frontend_TLdisplay>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frontend_msgs-msg:far_light-val is deprecated.  Use frontend_msgs-msg:far_light instead.")
  (far_light m))

(cl:ensure-generic-function 'top_warning_light-val :lambda-list '(m))
(cl:defmethod top_warning_light-val ((m <Frontend_TLdisplay>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frontend_msgs-msg:top_warning_light-val is deprecated.  Use frontend_msgs-msg:top_warning_light instead.")
  (top_warning_light m))

(cl:ensure-generic-function 'air_beep-val :lambda-list '(m))
(cl:defmethod air_beep-val ((m <Frontend_TLdisplay>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frontend_msgs-msg:air_beep-val is deprecated.  Use frontend_msgs-msg:air_beep instead.")
  (air_beep m))

(cl:ensure-generic-function 'front_fog_light-val :lambda-list '(m))
(cl:defmethod front_fog_light-val ((m <Frontend_TLdisplay>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frontend_msgs-msg:front_fog_light-val is deprecated.  Use frontend_msgs-msg:front_fog_light instead.")
  (front_fog_light m))

(cl:ensure-generic-function 'front_work_light-val :lambda-list '(m))
(cl:defmethod front_work_light-val ((m <Frontend_TLdisplay>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frontend_msgs-msg:front_work_light-val is deprecated.  Use frontend_msgs-msg:front_work_light instead.")
  (front_work_light m))

(cl:ensure-generic-function 'side_light-val :lambda-list '(m))
(cl:defmethod side_light-val ((m <Frontend_TLdisplay>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frontend_msgs-msg:side_light-val is deprecated.  Use frontend_msgs-msg:side_light instead.")
  (side_light m))

(cl:ensure-generic-function 'position_light-val :lambda-list '(m))
(cl:defmethod position_light-val ((m <Frontend_TLdisplay>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frontend_msgs-msg:position_light-val is deprecated.  Use frontend_msgs-msg:position_light instead.")
  (position_light m))

(cl:ensure-generic-function 'back_left_light-val :lambda-list '(m))
(cl:defmethod back_left_light-val ((m <Frontend_TLdisplay>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frontend_msgs-msg:back_left_light-val is deprecated.  Use frontend_msgs-msg:back_left_light instead.")
  (back_left_light m))

(cl:ensure-generic-function 'back_right_light-val :lambda-list '(m))
(cl:defmethod back_right_light-val ((m <Frontend_TLdisplay>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frontend_msgs-msg:back_right_light-val is deprecated.  Use frontend_msgs-msg:back_right_light instead.")
  (back_right_light m))

(cl:ensure-generic-function 'back_position_light-val :lambda-list '(m))
(cl:defmethod back_position_light-val ((m <Frontend_TLdisplay>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frontend_msgs-msg:back_position_light-val is deprecated.  Use frontend_msgs-msg:back_position_light instead.")
  (back_position_light m))

(cl:ensure-generic-function 'brake_light-val :lambda-list '(m))
(cl:defmethod brake_light-val ((m <Frontend_TLdisplay>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frontend_msgs-msg:brake_light-val is deprecated.  Use frontend_msgs-msg:brake_light instead.")
  (brake_light m))

(cl:ensure-generic-function 'reverse_light-val :lambda-list '(m))
(cl:defmethod reverse_light-val ((m <Frontend_TLdisplay>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frontend_msgs-msg:reverse_light-val is deprecated.  Use frontend_msgs-msg:reverse_light instead.")
  (reverse_light m))

(cl:ensure-generic-function 'back_work_light-val :lambda-list '(m))
(cl:defmethod back_work_light-val ((m <Frontend_TLdisplay>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frontend_msgs-msg:back_work_light-val is deprecated.  Use frontend_msgs-msg:back_work_light instead.")
  (back_work_light m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Frontend_TLdisplay>) ostream)
  "Serializes a message object of type '<Frontend_TLdisplay>"
  (cl:let* ((signed (cl:slot-value msg 'left_light)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'right_light)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'near_light)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'far_light)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'top_warning_light)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
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
  (cl:let* ((signed (cl:slot-value msg 'front_fog_light)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'front_work_light)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'side_light)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'position_light)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'back_left_light)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'back_right_light)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'back_position_light)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'brake_light)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'reverse_light)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'back_work_light)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Frontend_TLdisplay>) istream)
  "Deserializes a message object of type '<Frontend_TLdisplay>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'left_light) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'right_light) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'near_light) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'far_light) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'top_warning_light) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
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
      (cl:setf (cl:slot-value msg 'front_fog_light) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'front_work_light) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'side_light) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'position_light) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'back_left_light) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'back_right_light) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'back_position_light) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'brake_light) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reverse_light) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'back_work_light) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Frontend_TLdisplay>)))
  "Returns string type for a message object of type '<Frontend_TLdisplay>"
  "frontend_msgs/Frontend_TLdisplay")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Frontend_TLdisplay)))
  "Returns string type for a message object of type 'Frontend_TLdisplay"
  "frontend_msgs/Frontend_TLdisplay")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Frontend_TLdisplay>)))
  "Returns md5sum for a message object of type '<Frontend_TLdisplay>"
  "e622ba7a39d3ca14b4c60375b5cf0f77")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Frontend_TLdisplay)))
  "Returns md5sum for a message object of type 'Frontend_TLdisplay"
  "e622ba7a39d3ca14b4c60375b5cf0f77")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Frontend_TLdisplay>)))
  "Returns full string definition for message of type '<Frontend_TLdisplay>"
  (cl:format cl:nil "#TL lights feedback~%int32 left_light~%int32 right_light~%int32 near_light~%int32 far_light~%~%int32 top_warning_light~%int32 air_beep~%int32 front_fog_light~%int32 front_work_light~%int32 side_light~%int32 position_light~%int32 back_left_light~%int32 back_right_light~%int32 back_position_light~%int32 brake_light~%int32 reverse_light~%int32 back_work_light~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Frontend_TLdisplay)))
  "Returns full string definition for message of type 'Frontend_TLdisplay"
  (cl:format cl:nil "#TL lights feedback~%int32 left_light~%int32 right_light~%int32 near_light~%int32 far_light~%~%int32 top_warning_light~%int32 air_beep~%int32 front_fog_light~%int32 front_work_light~%int32 side_light~%int32 position_light~%int32 back_left_light~%int32 back_right_light~%int32 back_position_light~%int32 brake_light~%int32 reverse_light~%int32 back_work_light~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Frontend_TLdisplay>))
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
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Frontend_TLdisplay>))
  "Converts a ROS message object to a list"
  (cl:list 'Frontend_TLdisplay
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
    (cl:cons ':back_left_light (back_left_light msg))
    (cl:cons ':back_right_light (back_right_light msg))
    (cl:cons ':back_position_light (back_position_light msg))
    (cl:cons ':brake_light (brake_light msg))
    (cl:cons ':reverse_light (reverse_light msg))
    (cl:cons ':back_work_light (back_work_light msg))
))
