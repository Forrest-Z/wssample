;; Auto-generated. Do not edit!


(when (boundp 'tli65_can_msgs::RxSt1)
  (if (not (find-package "TLI65_CAN_MSGS"))
    (make-package "TLI65_CAN_MSGS"))
  (shadow 'RxSt1 (find-package "TLI65_CAN_MSGS")))
(unless (find-package "TLI65_CAN_MSGS::RXST1")
  (make-package "TLI65_CAN_MSGS::RXST1"))

(in-package "ROS")
;;//! \htmlinclude RxSt1.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass tli65_can_msgs::RxSt1
  :super ros::object
  :slots (_header _auto_mode _engine_active _hand_brake_active _EBS_active _retarder_active _gear_active _EPS_active _hang_active ))

(defmethod tli65_can_msgs::RxSt1
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:auto_mode __auto_mode) 0)
    ((:engine_active __engine_active) 0)
    ((:hand_brake_active __hand_brake_active) 0)
    ((:EBS_active __EBS_active) 0)
    ((:retarder_active __retarder_active) 0)
    ((:gear_active __gear_active) 0)
    ((:EPS_active __EPS_active) 0)
    ((:hang_active __hang_active) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _auto_mode (round __auto_mode))
   (setq _engine_active (round __engine_active))
   (setq _hand_brake_active (round __hand_brake_active))
   (setq _EBS_active (round __EBS_active))
   (setq _retarder_active (round __retarder_active))
   (setq _gear_active (round __gear_active))
   (setq _EPS_active (round __EPS_active))
   (setq _hang_active (round __hang_active))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:auto_mode
   (&optional __auto_mode)
   (if __auto_mode (setq _auto_mode __auto_mode)) _auto_mode)
  (:engine_active
   (&optional __engine_active)
   (if __engine_active (setq _engine_active __engine_active)) _engine_active)
  (:hand_brake_active
   (&optional __hand_brake_active)
   (if __hand_brake_active (setq _hand_brake_active __hand_brake_active)) _hand_brake_active)
  (:EBS_active
   (&optional __EBS_active)
   (if __EBS_active (setq _EBS_active __EBS_active)) _EBS_active)
  (:retarder_active
   (&optional __retarder_active)
   (if __retarder_active (setq _retarder_active __retarder_active)) _retarder_active)
  (:gear_active
   (&optional __gear_active)
   (if __gear_active (setq _gear_active __gear_active)) _gear_active)
  (:EPS_active
   (&optional __EPS_active)
   (if __EPS_active (setq _EPS_active __EPS_active)) _EPS_active)
  (:hang_active
   (&optional __hang_active)
   (if __hang_active (setq _hang_active __hang_active)) _hang_active)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _auto_mode
    1
    ;; uint8 _engine_active
    1
    ;; uint8 _hand_brake_active
    1
    ;; uint8 _EBS_active
    1
    ;; uint8 _retarder_active
    1
    ;; uint8 _gear_active
    1
    ;; uint8 _EPS_active
    1
    ;; uint8 _hang_active
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _auto_mode
       (write-byte _auto_mode s)
     ;; uint8 _engine_active
       (write-byte _engine_active s)
     ;; uint8 _hand_brake_active
       (write-byte _hand_brake_active s)
     ;; uint8 _EBS_active
       (write-byte _EBS_active s)
     ;; uint8 _retarder_active
       (write-byte _retarder_active s)
     ;; uint8 _gear_active
       (write-byte _gear_active s)
     ;; uint8 _EPS_active
       (write-byte _EPS_active s)
     ;; uint8 _hang_active
       (write-byte _hang_active s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _auto_mode
     (setq _auto_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _engine_active
     (setq _engine_active (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _hand_brake_active
     (setq _hand_brake_active (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _EBS_active
     (setq _EBS_active (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _retarder_active
     (setq _retarder_active (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _gear_active
     (setq _gear_active (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _EPS_active
     (setq _EPS_active (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _hang_active
     (setq _hang_active (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get tli65_can_msgs::RxSt1 :md5sum-) "f067e802a0fe3c15d96a577607d1f535")
(setf (get tli65_can_msgs::RxSt1 :datatype-) "tli65_can_msgs/RxSt1")
(setf (get tli65_can_msgs::RxSt1 :definition-)
      "Header header

uint8 auto_mode
uint8 engine_active
uint8 hand_brake_active
uint8 EBS_active
uint8 retarder_active
uint8 gear_active
uint8 EPS_active
uint8 hang_active
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



(provide :tli65_can_msgs/RxSt1 "f067e802a0fe3c15d96a577607d1f535")


