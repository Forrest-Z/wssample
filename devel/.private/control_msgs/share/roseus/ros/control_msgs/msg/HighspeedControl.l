;; Auto-generated. Do not edit!


(when (boundp 'control_msgs::HighspeedControl)
  (if (not (find-package "CONTROL_MSGS"))
    (make-package "CONTROL_MSGS"))
  (shadow 'HighspeedControl (find-package "CONTROL_MSGS")))
(unless (find-package "CONTROL_MSGS::HIGHSPEEDCONTROL")
  (make-package "CONTROL_MSGS::HIGHSPEEDCONTROL"))

(in-package "ROS")
;;//! \htmlinclude HighspeedControl.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass control_msgs::HighspeedControl
  :super ros::object
  :slots (_header _ignition _throttle_active _throttle_precentage _XBR_active _XBR _steer_active _steer _steer_angle_rate ))

(defmethod control_msgs::HighspeedControl
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:ignition __ignition) 0)
    ((:throttle_active __throttle_active) 0)
    ((:throttle_precentage __throttle_precentage) 0)
    ((:XBR_active __XBR_active) 0)
    ((:XBR __XBR) 0.0)
    ((:steer_active __steer_active) 0)
    ((:steer __steer) 0.0)
    ((:steer_angle_rate __steer_angle_rate) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _ignition (round __ignition))
   (setq _throttle_active (round __throttle_active))
   (setq _throttle_precentage (round __throttle_precentage))
   (setq _XBR_active (round __XBR_active))
   (setq _XBR (float __XBR))
   (setq _steer_active (round __steer_active))
   (setq _steer (float __steer))
   (setq _steer_angle_rate (float __steer_angle_rate))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:ignition
   (&optional __ignition)
   (if __ignition (setq _ignition __ignition)) _ignition)
  (:throttle_active
   (&optional __throttle_active)
   (if __throttle_active (setq _throttle_active __throttle_active)) _throttle_active)
  (:throttle_precentage
   (&optional __throttle_precentage)
   (if __throttle_precentage (setq _throttle_precentage __throttle_precentage)) _throttle_precentage)
  (:XBR_active
   (&optional __XBR_active)
   (if __XBR_active (setq _XBR_active __XBR_active)) _XBR_active)
  (:XBR
   (&optional __XBR)
   (if __XBR (setq _XBR __XBR)) _XBR)
  (:steer_active
   (&optional __steer_active)
   (if __steer_active (setq _steer_active __steer_active)) _steer_active)
  (:steer
   (&optional __steer)
   (if __steer (setq _steer __steer)) _steer)
  (:steer_angle_rate
   (&optional __steer_angle_rate)
   (if __steer_angle_rate (setq _steer_angle_rate __steer_angle_rate)) _steer_angle_rate)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _ignition
    1
    ;; uint8 _throttle_active
    1
    ;; uint8 _throttle_precentage
    1
    ;; uint8 _XBR_active
    1
    ;; float64 _XBR
    8
    ;; uint8 _steer_active
    1
    ;; float64 _steer
    8
    ;; float64 _steer_angle_rate
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _ignition
       (write-byte _ignition s)
     ;; uint8 _throttle_active
       (write-byte _throttle_active s)
     ;; uint8 _throttle_precentage
       (write-byte _throttle_precentage s)
     ;; uint8 _XBR_active
       (write-byte _XBR_active s)
     ;; float64 _XBR
       (sys::poke _XBR (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _steer_active
       (write-byte _steer_active s)
     ;; float64 _steer
       (sys::poke _steer (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _steer_angle_rate
       (sys::poke _steer_angle_rate (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _ignition
     (setq _ignition (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _throttle_active
     (setq _throttle_active (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _throttle_precentage
     (setq _throttle_precentage (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _XBR_active
     (setq _XBR_active (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _XBR
     (setq _XBR (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _steer_active
     (setq _steer_active (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _steer
     (setq _steer (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _steer_angle_rate
     (setq _steer_angle_rate (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get control_msgs::HighspeedControl :md5sum-) "fac4952cee492c2dbb8a7e1036809584")
(setf (get control_msgs::HighspeedControl :datatype-) "control_msgs/HighspeedControl")
(setf (get control_msgs::HighspeedControl :definition-)
      "Header header

uint8 ignition 
uint8 throttle_active
uint8 throttle_precentage
uint8 XBR_active
float64 XBR
# for Tli65
uint8 steer_active
float64 steer
float64 steer_angle_rate
# for Tli90
#uint8 steer_active
#uint8 steer_mode
#float64 steer
#float64 steer1
#uint8 steer_mode1
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

")



(provide :control_msgs/HighspeedControl "fac4952cee492c2dbb8a7e1036809584")


