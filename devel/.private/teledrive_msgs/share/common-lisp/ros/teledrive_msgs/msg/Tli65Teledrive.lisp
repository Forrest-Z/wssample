; Auto-generated. Do not edit!


(cl:in-package teledrive_msgs-msg)


;//! \htmlinclude Tli65Teledrive.msg.html

(cl:defclass <Tli65Teledrive> (roslisp-msg-protocol:ros-message)
  ((control_type
    :reader control_type
    :initarg :control_type
    :type cl:string
    :initform "")
   (steer
    :reader steer
    :initarg :steer
    :type cl:float
    :initform 0.0)
   (throttle_pedal
    :reader throttle_pedal
    :initarg :throttle_pedal
    :type cl:float
    :initform 0.0)
   (xbr
    :reader xbr
    :initarg :xbr
    :type cl:float
    :initform 0.0)
   (gear
    :reader gear
    :initarg :gear
    :type cl:integer
    :initform 0)
   (epb
    :reader epb
    :initarg :epb
    :type cl:integer
    :initform 0)
   (hang
    :reader hang
    :initarg :hang
    :type cl:integer
    :initform 0)
   (air_beep
    :reader air_beep
    :initarg :air_beep
    :type cl:boolean
    :initform cl:nil)
   (left_light
    :reader left_light
    :initarg :left_light
    :type cl:boolean
    :initform cl:nil)
   (right_light
    :reader right_light
    :initarg :right_light
    :type cl:boolean
    :initform cl:nil)
   (near_light
    :reader near_light
    :initarg :near_light
    :type cl:boolean
    :initform cl:nil)
   (far_light
    :reader far_light
    :initarg :far_light
    :type cl:boolean
    :initform cl:nil)
   (TL_rotate_warning_light
    :reader TL_rotate_warning_light
    :initarg :TL_rotate_warning_light
    :type cl:boolean
    :initform cl:nil)
   (TL_front_fog_light
    :reader TL_front_fog_light
    :initarg :TL_front_fog_light
    :type cl:boolean
    :initform cl:nil)
   (TL_front_work_light
    :reader TL_front_work_light
    :initarg :TL_front_work_light
    :type cl:boolean
    :initform cl:nil)
   (TL_back_work_light
    :reader TL_back_work_light
    :initarg :TL_back_work_light
    :type cl:boolean
    :initform cl:nil)
   (TL_side_light
    :reader TL_side_light
    :initarg :TL_side_light
    :type cl:boolean
    :initform cl:nil)
   (TL_back_position_light
    :reader TL_back_position_light
    :initarg :TL_back_position_light
    :type cl:boolean
    :initform cl:nil)
   (TL_hazard_indicator_light
    :reader TL_hazard_indicator_light
    :initarg :TL_hazard_indicator_light
    :type cl:boolean
    :initform cl:nil)
   (TL_brake_light
    :reader TL_brake_light
    :initarg :TL_brake_light
    :type cl:boolean
    :initform cl:nil)
   (TL_return_light
    :reader TL_return_light
    :initarg :TL_return_light
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Tli65Teledrive (<Tli65Teledrive>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Tli65Teledrive>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Tli65Teledrive)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name teledrive_msgs-msg:<Tli65Teledrive> is deprecated: use teledrive_msgs-msg:Tli65Teledrive instead.")))

(cl:ensure-generic-function 'control_type-val :lambda-list '(m))
(cl:defmethod control_type-val ((m <Tli65Teledrive>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teledrive_msgs-msg:control_type-val is deprecated.  Use teledrive_msgs-msg:control_type instead.")
  (control_type m))

(cl:ensure-generic-function 'steer-val :lambda-list '(m))
(cl:defmethod steer-val ((m <Tli65Teledrive>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teledrive_msgs-msg:steer-val is deprecated.  Use teledrive_msgs-msg:steer instead.")
  (steer m))

(cl:ensure-generic-function 'throttle_pedal-val :lambda-list '(m))
(cl:defmethod throttle_pedal-val ((m <Tli65Teledrive>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teledrive_msgs-msg:throttle_pedal-val is deprecated.  Use teledrive_msgs-msg:throttle_pedal instead.")
  (throttle_pedal m))

(cl:ensure-generic-function 'xbr-val :lambda-list '(m))
(cl:defmethod xbr-val ((m <Tli65Teledrive>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teledrive_msgs-msg:xbr-val is deprecated.  Use teledrive_msgs-msg:xbr instead.")
  (xbr m))

(cl:ensure-generic-function 'gear-val :lambda-list '(m))
(cl:defmethod gear-val ((m <Tli65Teledrive>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teledrive_msgs-msg:gear-val is deprecated.  Use teledrive_msgs-msg:gear instead.")
  (gear m))

(cl:ensure-generic-function 'epb-val :lambda-list '(m))
(cl:defmethod epb-val ((m <Tli65Teledrive>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teledrive_msgs-msg:epb-val is deprecated.  Use teledrive_msgs-msg:epb instead.")
  (epb m))

(cl:ensure-generic-function 'hang-val :lambda-list '(m))
(cl:defmethod hang-val ((m <Tli65Teledrive>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teledrive_msgs-msg:hang-val is deprecated.  Use teledrive_msgs-msg:hang instead.")
  (hang m))

(cl:ensure-generic-function 'air_beep-val :lambda-list '(m))
(cl:defmethod air_beep-val ((m <Tli65Teledrive>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teledrive_msgs-msg:air_beep-val is deprecated.  Use teledrive_msgs-msg:air_beep instead.")
  (air_beep m))

(cl:ensure-generic-function 'left_light-val :lambda-list '(m))
(cl:defmethod left_light-val ((m <Tli65Teledrive>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teledrive_msgs-msg:left_light-val is deprecated.  Use teledrive_msgs-msg:left_light instead.")
  (left_light m))

(cl:ensure-generic-function 'right_light-val :lambda-list '(m))
(cl:defmethod right_light-val ((m <Tli65Teledrive>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teledrive_msgs-msg:right_light-val is deprecated.  Use teledrive_msgs-msg:right_light instead.")
  (right_light m))

(cl:ensure-generic-function 'near_light-val :lambda-list '(m))
(cl:defmethod near_light-val ((m <Tli65Teledrive>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teledrive_msgs-msg:near_light-val is deprecated.  Use teledrive_msgs-msg:near_light instead.")
  (near_light m))

(cl:ensure-generic-function 'far_light-val :lambda-list '(m))
(cl:defmethod far_light-val ((m <Tli65Teledrive>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teledrive_msgs-msg:far_light-val is deprecated.  Use teledrive_msgs-msg:far_light instead.")
  (far_light m))

(cl:ensure-generic-function 'TL_rotate_warning_light-val :lambda-list '(m))
(cl:defmethod TL_rotate_warning_light-val ((m <Tli65Teledrive>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teledrive_msgs-msg:TL_rotate_warning_light-val is deprecated.  Use teledrive_msgs-msg:TL_rotate_warning_light instead.")
  (TL_rotate_warning_light m))

(cl:ensure-generic-function 'TL_front_fog_light-val :lambda-list '(m))
(cl:defmethod TL_front_fog_light-val ((m <Tli65Teledrive>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teledrive_msgs-msg:TL_front_fog_light-val is deprecated.  Use teledrive_msgs-msg:TL_front_fog_light instead.")
  (TL_front_fog_light m))

(cl:ensure-generic-function 'TL_front_work_light-val :lambda-list '(m))
(cl:defmethod TL_front_work_light-val ((m <Tli65Teledrive>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teledrive_msgs-msg:TL_front_work_light-val is deprecated.  Use teledrive_msgs-msg:TL_front_work_light instead.")
  (TL_front_work_light m))

(cl:ensure-generic-function 'TL_back_work_light-val :lambda-list '(m))
(cl:defmethod TL_back_work_light-val ((m <Tli65Teledrive>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teledrive_msgs-msg:TL_back_work_light-val is deprecated.  Use teledrive_msgs-msg:TL_back_work_light instead.")
  (TL_back_work_light m))

(cl:ensure-generic-function 'TL_side_light-val :lambda-list '(m))
(cl:defmethod TL_side_light-val ((m <Tli65Teledrive>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teledrive_msgs-msg:TL_side_light-val is deprecated.  Use teledrive_msgs-msg:TL_side_light instead.")
  (TL_side_light m))

(cl:ensure-generic-function 'TL_back_position_light-val :lambda-list '(m))
(cl:defmethod TL_back_position_light-val ((m <Tli65Teledrive>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teledrive_msgs-msg:TL_back_position_light-val is deprecated.  Use teledrive_msgs-msg:TL_back_position_light instead.")
  (TL_back_position_light m))

(cl:ensure-generic-function 'TL_hazard_indicator_light-val :lambda-list '(m))
(cl:defmethod TL_hazard_indicator_light-val ((m <Tli65Teledrive>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teledrive_msgs-msg:TL_hazard_indicator_light-val is deprecated.  Use teledrive_msgs-msg:TL_hazard_indicator_light instead.")
  (TL_hazard_indicator_light m))

(cl:ensure-generic-function 'TL_brake_light-val :lambda-list '(m))
(cl:defmethod TL_brake_light-val ((m <Tli65Teledrive>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teledrive_msgs-msg:TL_brake_light-val is deprecated.  Use teledrive_msgs-msg:TL_brake_light instead.")
  (TL_brake_light m))

(cl:ensure-generic-function 'TL_return_light-val :lambda-list '(m))
(cl:defmethod TL_return_light-val ((m <Tli65Teledrive>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader teledrive_msgs-msg:TL_return_light-val is deprecated.  Use teledrive_msgs-msg:TL_return_light instead.")
  (TL_return_light m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Tli65Teledrive>) ostream)
  "Serializes a message object of type '<Tli65Teledrive>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'control_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'control_type))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'steer))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'throttle_pedal))))
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
  (cl:let* ((signed (cl:slot-value msg 'gear)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'epb)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'hang)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'air_beep) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'left_light) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'right_light) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'near_light) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'far_light) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'TL_rotate_warning_light) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'TL_front_fog_light) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'TL_front_work_light) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'TL_back_work_light) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'TL_side_light) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'TL_back_position_light) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'TL_hazard_indicator_light) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'TL_brake_light) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'TL_return_light) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Tli65Teledrive>) istream)
  "Deserializes a message object of type '<Tli65Teledrive>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'control_type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'control_type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
    (cl:setf (cl:slot-value msg 'throttle_pedal) (roslisp-utils:decode-double-float-bits bits)))
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
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gear) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'epb) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'hang) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'air_beep) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'left_light) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'right_light) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'near_light) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'far_light) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'TL_rotate_warning_light) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'TL_front_fog_light) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'TL_front_work_light) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'TL_back_work_light) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'TL_side_light) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'TL_back_position_light) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'TL_hazard_indicator_light) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'TL_brake_light) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'TL_return_light) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Tli65Teledrive>)))
  "Returns string type for a message object of type '<Tli65Teledrive>"
  "teledrive_msgs/Tli65Teledrive")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Tli65Teledrive)))
  "Returns string type for a message object of type 'Tli65Teledrive"
  "teledrive_msgs/Tli65Teledrive")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Tli65Teledrive>)))
  "Returns md5sum for a message object of type '<Tli65Teledrive>"
  "ff9fc773e79bfc906f0ea2de32f97922")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Tli65Teledrive)))
  "Returns md5sum for a message object of type 'Tli65Teledrive"
  "ff9fc773e79bfc906f0ea2de32f97922")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Tli65Teledrive>)))
  "Returns full string definition for message of type '<Tli65Teledrive>"
  (cl:format cl:nil "string control_type~%~%float64 steer~%float64 throttle_pedal~%float64 xbr~%int32 gear~%int32 epb~%int32 hang~%bool air_beep~%bool left_light~%bool right_light~%bool near_light~%bool far_light~%~%#TL lights state~%bool TL_rotate_warning_light~%bool TL_front_fog_light~%bool TL_front_work_light~%bool TL_back_work_light~%bool TL_side_light~%bool TL_back_position_light~%bool TL_hazard_indicator_light~%bool TL_brake_light~%bool TL_return_light~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Tli65Teledrive)))
  "Returns full string definition for message of type 'Tli65Teledrive"
  (cl:format cl:nil "string control_type~%~%float64 steer~%float64 throttle_pedal~%float64 xbr~%int32 gear~%int32 epb~%int32 hang~%bool air_beep~%bool left_light~%bool right_light~%bool near_light~%bool far_light~%~%#TL lights state~%bool TL_rotate_warning_light~%bool TL_front_fog_light~%bool TL_front_work_light~%bool TL_back_work_light~%bool TL_side_light~%bool TL_back_position_light~%bool TL_hazard_indicator_light~%bool TL_brake_light~%bool TL_return_light~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Tli65Teledrive>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'control_type))
     8
     8
     8
     4
     4
     4
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
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Tli65Teledrive>))
  "Converts a ROS message object to a list"
  (cl:list 'Tli65Teledrive
    (cl:cons ':control_type (control_type msg))
    (cl:cons ':steer (steer msg))
    (cl:cons ':throttle_pedal (throttle_pedal msg))
    (cl:cons ':xbr (xbr msg))
    (cl:cons ':gear (gear msg))
    (cl:cons ':epb (epb msg))
    (cl:cons ':hang (hang msg))
    (cl:cons ':air_beep (air_beep msg))
    (cl:cons ':left_light (left_light msg))
    (cl:cons ':right_light (right_light msg))
    (cl:cons ':near_light (near_light msg))
    (cl:cons ':far_light (far_light msg))
    (cl:cons ':TL_rotate_warning_light (TL_rotate_warning_light msg))
    (cl:cons ':TL_front_fog_light (TL_front_fog_light msg))
    (cl:cons ':TL_front_work_light (TL_front_work_light msg))
    (cl:cons ':TL_back_work_light (TL_back_work_light msg))
    (cl:cons ':TL_side_light (TL_side_light msg))
    (cl:cons ':TL_back_position_light (TL_back_position_light msg))
    (cl:cons ':TL_hazard_indicator_light (TL_hazard_indicator_light msg))
    (cl:cons ':TL_brake_light (TL_brake_light msg))
    (cl:cons ':TL_return_light (TL_return_light msg))
))
