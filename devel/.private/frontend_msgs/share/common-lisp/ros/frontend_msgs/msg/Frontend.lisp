; Auto-generated. Do not edit!


(cl:in-package frontend_msgs-msg)


;//! \htmlinclude Frontend.msg.html

(cl:defclass <Frontend> (roslisp-msg-protocol:ros-message)
  ((TL_left_light
    :reader TL_left_light
    :initarg :TL_left_light
    :type cl:boolean
    :initform cl:nil)
   (TL_right_light
    :reader TL_right_light
    :initarg :TL_right_light
    :type cl:boolean
    :initform cl:nil)
   (TL_near_light
    :reader TL_near_light
    :initarg :TL_near_light
    :type cl:boolean
    :initform cl:nil)
   (TL_far_light
    :reader TL_far_light
    :initarg :TL_far_light
    :type cl:boolean
    :initform cl:nil)
   (TL_top_warning_light
    :reader TL_top_warning_light
    :initarg :TL_top_warning_light
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
   (TL_position_light
    :reader TL_position_light
    :initarg :TL_position_light
    :type cl:boolean
    :initform cl:nil)
   (TL_back_left_light
    :reader TL_back_left_light
    :initarg :TL_back_left_light
    :type cl:boolean
    :initform cl:nil)
   (TL_back_right_light
    :reader TL_back_right_light
    :initarg :TL_back_right_light
    :type cl:boolean
    :initform cl:nil)
   (emergency_light
    :reader emergency_light
    :initarg :emergency_light
    :type cl:boolean
    :initform cl:nil)
   (TL_back_position_light
    :reader TL_back_position_light
    :initarg :TL_back_position_light
    :type cl:boolean
    :initform cl:nil)
   (TL_brake_light
    :reader TL_brake_light
    :initarg :TL_brake_light
    :type cl:boolean
    :initform cl:nil)
   (TL_reverse_light
    :reader TL_reverse_light
    :initarg :TL_reverse_light
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Frontend (<Frontend>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Frontend>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Frontend)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name frontend_msgs-msg:<Frontend> is deprecated: use frontend_msgs-msg:Frontend instead.")))

(cl:ensure-generic-function 'TL_left_light-val :lambda-list '(m))
(cl:defmethod TL_left_light-val ((m <Frontend>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frontend_msgs-msg:TL_left_light-val is deprecated.  Use frontend_msgs-msg:TL_left_light instead.")
  (TL_left_light m))

(cl:ensure-generic-function 'TL_right_light-val :lambda-list '(m))
(cl:defmethod TL_right_light-val ((m <Frontend>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frontend_msgs-msg:TL_right_light-val is deprecated.  Use frontend_msgs-msg:TL_right_light instead.")
  (TL_right_light m))

(cl:ensure-generic-function 'TL_near_light-val :lambda-list '(m))
(cl:defmethod TL_near_light-val ((m <Frontend>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frontend_msgs-msg:TL_near_light-val is deprecated.  Use frontend_msgs-msg:TL_near_light instead.")
  (TL_near_light m))

(cl:ensure-generic-function 'TL_far_light-val :lambda-list '(m))
(cl:defmethod TL_far_light-val ((m <Frontend>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frontend_msgs-msg:TL_far_light-val is deprecated.  Use frontend_msgs-msg:TL_far_light instead.")
  (TL_far_light m))

(cl:ensure-generic-function 'TL_top_warning_light-val :lambda-list '(m))
(cl:defmethod TL_top_warning_light-val ((m <Frontend>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frontend_msgs-msg:TL_top_warning_light-val is deprecated.  Use frontend_msgs-msg:TL_top_warning_light instead.")
  (TL_top_warning_light m))

(cl:ensure-generic-function 'TL_front_fog_light-val :lambda-list '(m))
(cl:defmethod TL_front_fog_light-val ((m <Frontend>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frontend_msgs-msg:TL_front_fog_light-val is deprecated.  Use frontend_msgs-msg:TL_front_fog_light instead.")
  (TL_front_fog_light m))

(cl:ensure-generic-function 'TL_front_work_light-val :lambda-list '(m))
(cl:defmethod TL_front_work_light-val ((m <Frontend>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frontend_msgs-msg:TL_front_work_light-val is deprecated.  Use frontend_msgs-msg:TL_front_work_light instead.")
  (TL_front_work_light m))

(cl:ensure-generic-function 'TL_back_work_light-val :lambda-list '(m))
(cl:defmethod TL_back_work_light-val ((m <Frontend>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frontend_msgs-msg:TL_back_work_light-val is deprecated.  Use frontend_msgs-msg:TL_back_work_light instead.")
  (TL_back_work_light m))

(cl:ensure-generic-function 'TL_side_light-val :lambda-list '(m))
(cl:defmethod TL_side_light-val ((m <Frontend>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frontend_msgs-msg:TL_side_light-val is deprecated.  Use frontend_msgs-msg:TL_side_light instead.")
  (TL_side_light m))

(cl:ensure-generic-function 'TL_position_light-val :lambda-list '(m))
(cl:defmethod TL_position_light-val ((m <Frontend>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frontend_msgs-msg:TL_position_light-val is deprecated.  Use frontend_msgs-msg:TL_position_light instead.")
  (TL_position_light m))

(cl:ensure-generic-function 'TL_back_left_light-val :lambda-list '(m))
(cl:defmethod TL_back_left_light-val ((m <Frontend>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frontend_msgs-msg:TL_back_left_light-val is deprecated.  Use frontend_msgs-msg:TL_back_left_light instead.")
  (TL_back_left_light m))

(cl:ensure-generic-function 'TL_back_right_light-val :lambda-list '(m))
(cl:defmethod TL_back_right_light-val ((m <Frontend>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frontend_msgs-msg:TL_back_right_light-val is deprecated.  Use frontend_msgs-msg:TL_back_right_light instead.")
  (TL_back_right_light m))

(cl:ensure-generic-function 'emergency_light-val :lambda-list '(m))
(cl:defmethod emergency_light-val ((m <Frontend>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frontend_msgs-msg:emergency_light-val is deprecated.  Use frontend_msgs-msg:emergency_light instead.")
  (emergency_light m))

(cl:ensure-generic-function 'TL_back_position_light-val :lambda-list '(m))
(cl:defmethod TL_back_position_light-val ((m <Frontend>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frontend_msgs-msg:TL_back_position_light-val is deprecated.  Use frontend_msgs-msg:TL_back_position_light instead.")
  (TL_back_position_light m))

(cl:ensure-generic-function 'TL_brake_light-val :lambda-list '(m))
(cl:defmethod TL_brake_light-val ((m <Frontend>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frontend_msgs-msg:TL_brake_light-val is deprecated.  Use frontend_msgs-msg:TL_brake_light instead.")
  (TL_brake_light m))

(cl:ensure-generic-function 'TL_reverse_light-val :lambda-list '(m))
(cl:defmethod TL_reverse_light-val ((m <Frontend>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader frontend_msgs-msg:TL_reverse_light-val is deprecated.  Use frontend_msgs-msg:TL_reverse_light instead.")
  (TL_reverse_light m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Frontend>) ostream)
  "Serializes a message object of type '<Frontend>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'TL_left_light) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'TL_right_light) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'TL_near_light) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'TL_far_light) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'TL_top_warning_light) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'TL_front_fog_light) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'TL_front_work_light) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'TL_back_work_light) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'TL_side_light) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'TL_position_light) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'TL_back_left_light) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'TL_back_right_light) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'emergency_light) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'TL_back_position_light) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'TL_brake_light) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'TL_reverse_light) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Frontend>) istream)
  "Deserializes a message object of type '<Frontend>"
    (cl:setf (cl:slot-value msg 'TL_left_light) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'TL_right_light) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'TL_near_light) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'TL_far_light) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'TL_top_warning_light) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'TL_front_fog_light) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'TL_front_work_light) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'TL_back_work_light) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'TL_side_light) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'TL_position_light) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'TL_back_left_light) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'TL_back_right_light) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'emergency_light) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'TL_back_position_light) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'TL_brake_light) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'TL_reverse_light) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Frontend>)))
  "Returns string type for a message object of type '<Frontend>"
  "frontend_msgs/Frontend")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Frontend)))
  "Returns string type for a message object of type 'Frontend"
  "frontend_msgs/Frontend")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Frontend>)))
  "Returns md5sum for a message object of type '<Frontend>"
  "6d69890661b416e2254fb5f08a7e73e1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Frontend)))
  "Returns md5sum for a message object of type 'Frontend"
  "6d69890661b416e2254fb5f08a7e73e1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Frontend>)))
  "Returns full string definition for message of type '<Frontend>"
  (cl:format cl:nil "bool TL_left_light~%bool TL_right_light~%bool TL_near_light~%bool TL_far_light~%~%bool TL_top_warning_light~%bool TL_front_fog_light~%bool TL_front_work_light~%bool TL_back_work_light~%bool TL_side_light~%bool TL_position_light~%bool TL_back_left_light~%bool TL_back_right_light~%bool emergency_light~%bool TL_back_position_light~%bool TL_brake_light~%bool TL_reverse_light~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Frontend)))
  "Returns full string definition for message of type 'Frontend"
  (cl:format cl:nil "bool TL_left_light~%bool TL_right_light~%bool TL_near_light~%bool TL_far_light~%~%bool TL_top_warning_light~%bool TL_front_fog_light~%bool TL_front_work_light~%bool TL_back_work_light~%bool TL_side_light~%bool TL_position_light~%bool TL_back_left_light~%bool TL_back_right_light~%bool emergency_light~%bool TL_back_position_light~%bool TL_brake_light~%bool TL_reverse_light~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Frontend>))
  (cl:+ 0
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
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Frontend>))
  "Converts a ROS message object to a list"
  (cl:list 'Frontend
    (cl:cons ':TL_left_light (TL_left_light msg))
    (cl:cons ':TL_right_light (TL_right_light msg))
    (cl:cons ':TL_near_light (TL_near_light msg))
    (cl:cons ':TL_far_light (TL_far_light msg))
    (cl:cons ':TL_top_warning_light (TL_top_warning_light msg))
    (cl:cons ':TL_front_fog_light (TL_front_fog_light msg))
    (cl:cons ':TL_front_work_light (TL_front_work_light msg))
    (cl:cons ':TL_back_work_light (TL_back_work_light msg))
    (cl:cons ':TL_side_light (TL_side_light msg))
    (cl:cons ':TL_position_light (TL_position_light msg))
    (cl:cons ':TL_back_left_light (TL_back_left_light msg))
    (cl:cons ':TL_back_right_light (TL_back_right_light msg))
    (cl:cons ':emergency_light (emergency_light msg))
    (cl:cons ':TL_back_position_light (TL_back_position_light msg))
    (cl:cons ':TL_brake_light (TL_brake_light msg))
    (cl:cons ':TL_reverse_light (TL_reverse_light msg))
))
