;; Auto-generated. Do not edit!


(when (boundp 'tli65_can_msgs::RxSt9)
  (if (not (find-package "TLI65_CAN_MSGS"))
    (make-package "TLI65_CAN_MSGS"))
  (shadow 'RxSt9 (find-package "TLI65_CAN_MSGS")))
(unless (find-package "TLI65_CAN_MSGS::RXST9")
  (make-package "TLI65_CAN_MSGS::RXST9"))

(in-package "ROS")
;;//! \htmlinclude RxSt9.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass tli65_can_msgs::RxSt9
  :super ros::object
  :slots (_header _back_left_light _back_right_light _back_position_light _brake_light _reverse_light _back_work_light _cooler1 _cooler2 _axle_diff_switch _drier_power _inclinometer_power _cold_water_treasure_power _exhaust_brake_switch ))

(defmethod tli65_can_msgs::RxSt9
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:back_left_light __back_left_light) 0)
    ((:back_right_light __back_right_light) 0)
    ((:back_position_light __back_position_light) 0)
    ((:brake_light __brake_light) 0)
    ((:reverse_light __reverse_light) 0)
    ((:back_work_light __back_work_light) 0)
    ((:cooler1 __cooler1) 0)
    ((:cooler2 __cooler2) 0)
    ((:axle_diff_switch __axle_diff_switch) 0)
    ((:drier_power __drier_power) 0)
    ((:inclinometer_power __inclinometer_power) 0)
    ((:cold_water_treasure_power __cold_water_treasure_power) 0)
    ((:exhaust_brake_switch __exhaust_brake_switch) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _back_left_light (round __back_left_light))
   (setq _back_right_light (round __back_right_light))
   (setq _back_position_light (round __back_position_light))
   (setq _brake_light (round __brake_light))
   (setq _reverse_light (round __reverse_light))
   (setq _back_work_light (round __back_work_light))
   (setq _cooler1 (round __cooler1))
   (setq _cooler2 (round __cooler2))
   (setq _axle_diff_switch (round __axle_diff_switch))
   (setq _drier_power (round __drier_power))
   (setq _inclinometer_power (round __inclinometer_power))
   (setq _cold_water_treasure_power (round __cold_water_treasure_power))
   (setq _exhaust_brake_switch (round __exhaust_brake_switch))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:back_left_light
   (&optional __back_left_light)
   (if __back_left_light (setq _back_left_light __back_left_light)) _back_left_light)
  (:back_right_light
   (&optional __back_right_light)
   (if __back_right_light (setq _back_right_light __back_right_light)) _back_right_light)
  (:back_position_light
   (&optional __back_position_light)
   (if __back_position_light (setq _back_position_light __back_position_light)) _back_position_light)
  (:brake_light
   (&optional __brake_light)
   (if __brake_light (setq _brake_light __brake_light)) _brake_light)
  (:reverse_light
   (&optional __reverse_light)
   (if __reverse_light (setq _reverse_light __reverse_light)) _reverse_light)
  (:back_work_light
   (&optional __back_work_light)
   (if __back_work_light (setq _back_work_light __back_work_light)) _back_work_light)
  (:cooler1
   (&optional __cooler1)
   (if __cooler1 (setq _cooler1 __cooler1)) _cooler1)
  (:cooler2
   (&optional __cooler2)
   (if __cooler2 (setq _cooler2 __cooler2)) _cooler2)
  (:axle_diff_switch
   (&optional __axle_diff_switch)
   (if __axle_diff_switch (setq _axle_diff_switch __axle_diff_switch)) _axle_diff_switch)
  (:drier_power
   (&optional __drier_power)
   (if __drier_power (setq _drier_power __drier_power)) _drier_power)
  (:inclinometer_power
   (&optional __inclinometer_power)
   (if __inclinometer_power (setq _inclinometer_power __inclinometer_power)) _inclinometer_power)
  (:cold_water_treasure_power
   (&optional __cold_water_treasure_power)
   (if __cold_water_treasure_power (setq _cold_water_treasure_power __cold_water_treasure_power)) _cold_water_treasure_power)
  (:exhaust_brake_switch
   (&optional __exhaust_brake_switch)
   (if __exhaust_brake_switch (setq _exhaust_brake_switch __exhaust_brake_switch)) _exhaust_brake_switch)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _back_left_light
    1
    ;; uint8 _back_right_light
    1
    ;; uint8 _back_position_light
    1
    ;; uint8 _brake_light
    1
    ;; uint8 _reverse_light
    1
    ;; uint8 _back_work_light
    1
    ;; uint8 _cooler1
    1
    ;; uint8 _cooler2
    1
    ;; uint8 _axle_diff_switch
    1
    ;; uint8 _drier_power
    1
    ;; uint8 _inclinometer_power
    1
    ;; uint8 _cold_water_treasure_power
    1
    ;; uint8 _exhaust_brake_switch
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _back_left_light
       (write-byte _back_left_light s)
     ;; uint8 _back_right_light
       (write-byte _back_right_light s)
     ;; uint8 _back_position_light
       (write-byte _back_position_light s)
     ;; uint8 _brake_light
       (write-byte _brake_light s)
     ;; uint8 _reverse_light
       (write-byte _reverse_light s)
     ;; uint8 _back_work_light
       (write-byte _back_work_light s)
     ;; uint8 _cooler1
       (write-byte _cooler1 s)
     ;; uint8 _cooler2
       (write-byte _cooler2 s)
     ;; uint8 _axle_diff_switch
       (write-byte _axle_diff_switch s)
     ;; uint8 _drier_power
       (write-byte _drier_power s)
     ;; uint8 _inclinometer_power
       (write-byte _inclinometer_power s)
     ;; uint8 _cold_water_treasure_power
       (write-byte _cold_water_treasure_power s)
     ;; uint8 _exhaust_brake_switch
       (write-byte _exhaust_brake_switch s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _back_left_light
     (setq _back_left_light (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _back_right_light
     (setq _back_right_light (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _back_position_light
     (setq _back_position_light (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _brake_light
     (setq _brake_light (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _reverse_light
     (setq _reverse_light (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _back_work_light
     (setq _back_work_light (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _cooler1
     (setq _cooler1 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _cooler2
     (setq _cooler2 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _axle_diff_switch
     (setq _axle_diff_switch (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _drier_power
     (setq _drier_power (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _inclinometer_power
     (setq _inclinometer_power (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _cold_water_treasure_power
     (setq _cold_water_treasure_power (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _exhaust_brake_switch
     (setq _exhaust_brake_switch (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get tli65_can_msgs::RxSt9 :md5sum-) "4d003e66e4be8a30497585d13731cb44")
(setf (get tli65_can_msgs::RxSt9 :datatype-) "tli65_can_msgs/RxSt9")
(setf (get tli65_can_msgs::RxSt9 :definition-)
      "Header header

uint8 back_left_light
uint8 back_right_light
uint8 back_position_light
uint8 brake_light
uint8 reverse_light
uint8 back_work_light
uint8 cooler1
uint8 cooler2
uint8 axle_diff_switch
uint8 drier_power
uint8 inclinometer_power
uint8 cold_water_treasure_power
uint8 exhaust_brake_switch
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



(provide :tli65_can_msgs/RxSt9 "4d003e66e4be8a30497585d13731cb44")


