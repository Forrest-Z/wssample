; Auto-generated. Do not edit!


(cl:in-package tli65_can_msgs-msg)


;//! \htmlinclude RxTyre.msg.html

(cl:defclass <RxTyre> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (front_left_pressure
    :reader front_left_pressure
    :initarg :front_left_pressure
    :type cl:fixnum
    :initform 0)
   (front_right_pressure
    :reader front_right_pressure
    :initarg :front_right_pressure
    :type cl:fixnum
    :initform 0)
   (middle_left_outer_pressure
    :reader middle_left_outer_pressure
    :initarg :middle_left_outer_pressure
    :type cl:fixnum
    :initform 0)
   (middle_left_inner_pressure
    :reader middle_left_inner_pressure
    :initarg :middle_left_inner_pressure
    :type cl:fixnum
    :initform 0)
   (middle_right_inner_pressure
    :reader middle_right_inner_pressure
    :initarg :middle_right_inner_pressure
    :type cl:fixnum
    :initform 0)
   (middle_right_outer_pressure
    :reader middle_right_outer_pressure
    :initarg :middle_right_outer_pressure
    :type cl:fixnum
    :initform 0)
   (pressure_test_fault
    :reader pressure_test_fault
    :initarg :pressure_test_fault
    :type cl:fixnum
    :initform 0)
   (back_left_outer_pressure
    :reader back_left_outer_pressure
    :initarg :back_left_outer_pressure
    :type cl:fixnum
    :initform 0)
   (back_left_inner_pressure
    :reader back_left_inner_pressure
    :initarg :back_left_inner_pressure
    :type cl:fixnum
    :initform 0)
   (back_right_inner_pressure
    :reader back_right_inner_pressure
    :initarg :back_right_inner_pressure
    :type cl:fixnum
    :initform 0)
   (back_right_outer_pressure
    :reader back_right_outer_pressure
    :initarg :back_right_outer_pressure
    :type cl:fixnum
    :initform 0)
   (front_left_temperature
    :reader front_left_temperature
    :initarg :front_left_temperature
    :type cl:float
    :initform 0.0)
   (front_right_temperature
    :reader front_right_temperature
    :initarg :front_right_temperature
    :type cl:float
    :initform 0.0)
   (front_temperature_test_fault
    :reader front_temperature_test_fault
    :initarg :front_temperature_test_fault
    :type cl:fixnum
    :initform 0)
   (middle_back_temperature_test_fault
    :reader middle_back_temperature_test_fault
    :initarg :middle_back_temperature_test_fault
    :type cl:fixnum
    :initform 0)
   (middle_left_outer_temperature
    :reader middle_left_outer_temperature
    :initarg :middle_left_outer_temperature
    :type cl:float
    :initform 0.0)
   (middle_left_inner_temperature
    :reader middle_left_inner_temperature
    :initarg :middle_left_inner_temperature
    :type cl:float
    :initform 0.0)
   (middle_right_inner_temperature
    :reader middle_right_inner_temperature
    :initarg :middle_right_inner_temperature
    :type cl:float
    :initform 0.0)
   (middle_right_outer_temperature
    :reader middle_right_outer_temperature
    :initarg :middle_right_outer_temperature
    :type cl:float
    :initform 0.0)
   (back_left_outer_temperature
    :reader back_left_outer_temperature
    :initarg :back_left_outer_temperature
    :type cl:float
    :initform 0.0)
   (back_left_inner_temperature
    :reader back_left_inner_temperature
    :initarg :back_left_inner_temperature
    :type cl:float
    :initform 0.0)
   (back_right_inner_temperature
    :reader back_right_inner_temperature
    :initarg :back_right_inner_temperature
    :type cl:float
    :initform 0.0)
   (back_right_outer_temperature
    :reader back_right_outer_temperature
    :initarg :back_right_outer_temperature
    :type cl:float
    :initform 0.0))
)

(cl:defclass RxTyre (<RxTyre>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RxTyre>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RxTyre)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tli65_can_msgs-msg:<RxTyre> is deprecated: use tli65_can_msgs-msg:RxTyre instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RxTyre>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:header-val is deprecated.  Use tli65_can_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'front_left_pressure-val :lambda-list '(m))
(cl:defmethod front_left_pressure-val ((m <RxTyre>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:front_left_pressure-val is deprecated.  Use tli65_can_msgs-msg:front_left_pressure instead.")
  (front_left_pressure m))

(cl:ensure-generic-function 'front_right_pressure-val :lambda-list '(m))
(cl:defmethod front_right_pressure-val ((m <RxTyre>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:front_right_pressure-val is deprecated.  Use tli65_can_msgs-msg:front_right_pressure instead.")
  (front_right_pressure m))

(cl:ensure-generic-function 'middle_left_outer_pressure-val :lambda-list '(m))
(cl:defmethod middle_left_outer_pressure-val ((m <RxTyre>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:middle_left_outer_pressure-val is deprecated.  Use tli65_can_msgs-msg:middle_left_outer_pressure instead.")
  (middle_left_outer_pressure m))

(cl:ensure-generic-function 'middle_left_inner_pressure-val :lambda-list '(m))
(cl:defmethod middle_left_inner_pressure-val ((m <RxTyre>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:middle_left_inner_pressure-val is deprecated.  Use tli65_can_msgs-msg:middle_left_inner_pressure instead.")
  (middle_left_inner_pressure m))

(cl:ensure-generic-function 'middle_right_inner_pressure-val :lambda-list '(m))
(cl:defmethod middle_right_inner_pressure-val ((m <RxTyre>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:middle_right_inner_pressure-val is deprecated.  Use tli65_can_msgs-msg:middle_right_inner_pressure instead.")
  (middle_right_inner_pressure m))

(cl:ensure-generic-function 'middle_right_outer_pressure-val :lambda-list '(m))
(cl:defmethod middle_right_outer_pressure-val ((m <RxTyre>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:middle_right_outer_pressure-val is deprecated.  Use tli65_can_msgs-msg:middle_right_outer_pressure instead.")
  (middle_right_outer_pressure m))

(cl:ensure-generic-function 'pressure_test_fault-val :lambda-list '(m))
(cl:defmethod pressure_test_fault-val ((m <RxTyre>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:pressure_test_fault-val is deprecated.  Use tli65_can_msgs-msg:pressure_test_fault instead.")
  (pressure_test_fault m))

(cl:ensure-generic-function 'back_left_outer_pressure-val :lambda-list '(m))
(cl:defmethod back_left_outer_pressure-val ((m <RxTyre>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:back_left_outer_pressure-val is deprecated.  Use tli65_can_msgs-msg:back_left_outer_pressure instead.")
  (back_left_outer_pressure m))

(cl:ensure-generic-function 'back_left_inner_pressure-val :lambda-list '(m))
(cl:defmethod back_left_inner_pressure-val ((m <RxTyre>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:back_left_inner_pressure-val is deprecated.  Use tli65_can_msgs-msg:back_left_inner_pressure instead.")
  (back_left_inner_pressure m))

(cl:ensure-generic-function 'back_right_inner_pressure-val :lambda-list '(m))
(cl:defmethod back_right_inner_pressure-val ((m <RxTyre>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:back_right_inner_pressure-val is deprecated.  Use tli65_can_msgs-msg:back_right_inner_pressure instead.")
  (back_right_inner_pressure m))

(cl:ensure-generic-function 'back_right_outer_pressure-val :lambda-list '(m))
(cl:defmethod back_right_outer_pressure-val ((m <RxTyre>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:back_right_outer_pressure-val is deprecated.  Use tli65_can_msgs-msg:back_right_outer_pressure instead.")
  (back_right_outer_pressure m))

(cl:ensure-generic-function 'front_left_temperature-val :lambda-list '(m))
(cl:defmethod front_left_temperature-val ((m <RxTyre>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:front_left_temperature-val is deprecated.  Use tli65_can_msgs-msg:front_left_temperature instead.")
  (front_left_temperature m))

(cl:ensure-generic-function 'front_right_temperature-val :lambda-list '(m))
(cl:defmethod front_right_temperature-val ((m <RxTyre>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:front_right_temperature-val is deprecated.  Use tli65_can_msgs-msg:front_right_temperature instead.")
  (front_right_temperature m))

(cl:ensure-generic-function 'front_temperature_test_fault-val :lambda-list '(m))
(cl:defmethod front_temperature_test_fault-val ((m <RxTyre>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:front_temperature_test_fault-val is deprecated.  Use tli65_can_msgs-msg:front_temperature_test_fault instead.")
  (front_temperature_test_fault m))

(cl:ensure-generic-function 'middle_back_temperature_test_fault-val :lambda-list '(m))
(cl:defmethod middle_back_temperature_test_fault-val ((m <RxTyre>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:middle_back_temperature_test_fault-val is deprecated.  Use tli65_can_msgs-msg:middle_back_temperature_test_fault instead.")
  (middle_back_temperature_test_fault m))

(cl:ensure-generic-function 'middle_left_outer_temperature-val :lambda-list '(m))
(cl:defmethod middle_left_outer_temperature-val ((m <RxTyre>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:middle_left_outer_temperature-val is deprecated.  Use tli65_can_msgs-msg:middle_left_outer_temperature instead.")
  (middle_left_outer_temperature m))

(cl:ensure-generic-function 'middle_left_inner_temperature-val :lambda-list '(m))
(cl:defmethod middle_left_inner_temperature-val ((m <RxTyre>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:middle_left_inner_temperature-val is deprecated.  Use tli65_can_msgs-msg:middle_left_inner_temperature instead.")
  (middle_left_inner_temperature m))

(cl:ensure-generic-function 'middle_right_inner_temperature-val :lambda-list '(m))
(cl:defmethod middle_right_inner_temperature-val ((m <RxTyre>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:middle_right_inner_temperature-val is deprecated.  Use tli65_can_msgs-msg:middle_right_inner_temperature instead.")
  (middle_right_inner_temperature m))

(cl:ensure-generic-function 'middle_right_outer_temperature-val :lambda-list '(m))
(cl:defmethod middle_right_outer_temperature-val ((m <RxTyre>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:middle_right_outer_temperature-val is deprecated.  Use tli65_can_msgs-msg:middle_right_outer_temperature instead.")
  (middle_right_outer_temperature m))

(cl:ensure-generic-function 'back_left_outer_temperature-val :lambda-list '(m))
(cl:defmethod back_left_outer_temperature-val ((m <RxTyre>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:back_left_outer_temperature-val is deprecated.  Use tli65_can_msgs-msg:back_left_outer_temperature instead.")
  (back_left_outer_temperature m))

(cl:ensure-generic-function 'back_left_inner_temperature-val :lambda-list '(m))
(cl:defmethod back_left_inner_temperature-val ((m <RxTyre>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:back_left_inner_temperature-val is deprecated.  Use tli65_can_msgs-msg:back_left_inner_temperature instead.")
  (back_left_inner_temperature m))

(cl:ensure-generic-function 'back_right_inner_temperature-val :lambda-list '(m))
(cl:defmethod back_right_inner_temperature-val ((m <RxTyre>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:back_right_inner_temperature-val is deprecated.  Use tli65_can_msgs-msg:back_right_inner_temperature instead.")
  (back_right_inner_temperature m))

(cl:ensure-generic-function 'back_right_outer_temperature-val :lambda-list '(m))
(cl:defmethod back_right_outer_temperature-val ((m <RxTyre>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tli65_can_msgs-msg:back_right_outer_temperature-val is deprecated.  Use tli65_can_msgs-msg:back_right_outer_temperature instead.")
  (back_right_outer_temperature m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RxTyre>) ostream)
  "Serializes a message object of type '<RxTyre>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'front_left_pressure)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'front_left_pressure)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'front_right_pressure)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'front_right_pressure)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'middle_left_outer_pressure)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'middle_left_outer_pressure)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'middle_left_inner_pressure)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'middle_left_inner_pressure)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'middle_right_inner_pressure)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'middle_right_inner_pressure)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'middle_right_outer_pressure)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'middle_right_outer_pressure)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pressure_test_fault)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'back_left_outer_pressure)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'back_left_outer_pressure)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'back_left_inner_pressure)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'back_left_inner_pressure)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'back_right_inner_pressure)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'back_right_inner_pressure)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'back_right_outer_pressure)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'back_right_outer_pressure)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'front_left_temperature))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'front_right_temperature))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'front_temperature_test_fault)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'middle_back_temperature_test_fault)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'middle_left_outer_temperature))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'middle_left_inner_temperature))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'middle_right_inner_temperature))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'middle_right_outer_temperature))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'back_left_outer_temperature))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'back_left_inner_temperature))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'back_right_inner_temperature))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'back_right_outer_temperature))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RxTyre>) istream)
  "Deserializes a message object of type '<RxTyre>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'front_left_pressure)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'front_left_pressure)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'front_right_pressure)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'front_right_pressure)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'middle_left_outer_pressure)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'middle_left_outer_pressure)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'middle_left_inner_pressure)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'middle_left_inner_pressure)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'middle_right_inner_pressure)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'middle_right_inner_pressure)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'middle_right_outer_pressure)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'middle_right_outer_pressure)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pressure_test_fault)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'back_left_outer_pressure)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'back_left_outer_pressure)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'back_left_inner_pressure)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'back_left_inner_pressure)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'back_right_inner_pressure)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'back_right_inner_pressure)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'back_right_outer_pressure)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'back_right_outer_pressure)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'front_left_temperature) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'front_right_temperature) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'front_temperature_test_fault)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'middle_back_temperature_test_fault)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'middle_left_outer_temperature) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'middle_left_inner_temperature) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'middle_right_inner_temperature) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'middle_right_outer_temperature) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'back_left_outer_temperature) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'back_left_inner_temperature) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'back_right_inner_temperature) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'back_right_outer_temperature) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RxTyre>)))
  "Returns string type for a message object of type '<RxTyre>"
  "tli65_can_msgs/RxTyre")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RxTyre)))
  "Returns string type for a message object of type 'RxTyre"
  "tli65_can_msgs/RxTyre")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RxTyre>)))
  "Returns md5sum for a message object of type '<RxTyre>"
  "44acfc146651f84144777b20f26ca9a7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RxTyre)))
  "Returns md5sum for a message object of type 'RxTyre"
  "44acfc146651f84144777b20f26ca9a7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RxTyre>)))
  "Returns full string definition for message of type '<RxTyre>"
  (cl:format cl:nil "Header header~%~%# tyre1~%uint16 front_left_pressure~%uint16 front_right_pressure~%uint16 middle_left_outer_pressure~%uint16 middle_left_inner_pressure~%uint16 middle_right_inner_pressure~%uint16 middle_right_outer_pressure~%uint8 pressure_test_fault~%~%# tyre2~%uint16 back_left_outer_pressure~%uint16 back_left_inner_pressure~%uint16 back_right_inner_pressure~%uint16 back_right_outer_pressure~%~%# tyre3~%float64 front_left_temperature~%float64 front_right_temperature~%uint8 front_temperature_test_fault~%uint8 middle_back_temperature_test_fault~%~%# tyre4~%float64 middle_left_outer_temperature~%float64 middle_left_inner_temperature~%float64 middle_right_inner_temperature~%float64 middle_right_outer_temperature~%~%# tyre5~%float64 back_left_outer_temperature~%float64 back_left_inner_temperature~%float64 back_right_inner_temperature~%float64 back_right_outer_temperature~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RxTyre)))
  "Returns full string definition for message of type 'RxTyre"
  (cl:format cl:nil "Header header~%~%# tyre1~%uint16 front_left_pressure~%uint16 front_right_pressure~%uint16 middle_left_outer_pressure~%uint16 middle_left_inner_pressure~%uint16 middle_right_inner_pressure~%uint16 middle_right_outer_pressure~%uint8 pressure_test_fault~%~%# tyre2~%uint16 back_left_outer_pressure~%uint16 back_left_inner_pressure~%uint16 back_right_inner_pressure~%uint16 back_right_outer_pressure~%~%# tyre3~%float64 front_left_temperature~%float64 front_right_temperature~%uint8 front_temperature_test_fault~%uint8 middle_back_temperature_test_fault~%~%# tyre4~%float64 middle_left_outer_temperature~%float64 middle_left_inner_temperature~%float64 middle_right_inner_temperature~%float64 middle_right_outer_temperature~%~%# tyre5~%float64 back_left_outer_temperature~%float64 back_left_inner_temperature~%float64 back_right_inner_temperature~%float64 back_right_outer_temperature~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RxTyre>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     2
     2
     2
     2
     2
     2
     1
     2
     2
     2
     2
     8
     8
     1
     1
     8
     8
     8
     8
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RxTyre>))
  "Converts a ROS message object to a list"
  (cl:list 'RxTyre
    (cl:cons ':header (header msg))
    (cl:cons ':front_left_pressure (front_left_pressure msg))
    (cl:cons ':front_right_pressure (front_right_pressure msg))
    (cl:cons ':middle_left_outer_pressure (middle_left_outer_pressure msg))
    (cl:cons ':middle_left_inner_pressure (middle_left_inner_pressure msg))
    (cl:cons ':middle_right_inner_pressure (middle_right_inner_pressure msg))
    (cl:cons ':middle_right_outer_pressure (middle_right_outer_pressure msg))
    (cl:cons ':pressure_test_fault (pressure_test_fault msg))
    (cl:cons ':back_left_outer_pressure (back_left_outer_pressure msg))
    (cl:cons ':back_left_inner_pressure (back_left_inner_pressure msg))
    (cl:cons ':back_right_inner_pressure (back_right_inner_pressure msg))
    (cl:cons ':back_right_outer_pressure (back_right_outer_pressure msg))
    (cl:cons ':front_left_temperature (front_left_temperature msg))
    (cl:cons ':front_right_temperature (front_right_temperature msg))
    (cl:cons ':front_temperature_test_fault (front_temperature_test_fault msg))
    (cl:cons ':middle_back_temperature_test_fault (middle_back_temperature_test_fault msg))
    (cl:cons ':middle_left_outer_temperature (middle_left_outer_temperature msg))
    (cl:cons ':middle_left_inner_temperature (middle_left_inner_temperature msg))
    (cl:cons ':middle_right_inner_temperature (middle_right_inner_temperature msg))
    (cl:cons ':middle_right_outer_temperature (middle_right_outer_temperature msg))
    (cl:cons ':back_left_outer_temperature (back_left_outer_temperature msg))
    (cl:cons ':back_left_inner_temperature (back_left_inner_temperature msg))
    (cl:cons ':back_right_inner_temperature (back_right_inner_temperature msg))
    (cl:cons ':back_right_outer_temperature (back_right_outer_temperature msg))
))
