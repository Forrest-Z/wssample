;; Auto-generated. Do not edit!


(when (boundp 'tli65_can_msgs::RxStLowspeed)
  (if (not (find-package "TLI65_CAN_MSGS"))
    (make-package "TLI65_CAN_MSGS"))
  (shadow 'RxStLowspeed (find-package "TLI65_CAN_MSGS")))
(unless (find-package "TLI65_CAN_MSGS::RXSTLOWSPEED")
  (make-package "TLI65_CAN_MSGS::RXSTLOWSPEED"))

(in-package "ROS")
;;//! \htmlinclude RxStLowspeed.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass tli65_can_msgs::RxStLowspeed
  :super ros::object
  :slots (_header _auto_mode _engine_active _hand_brake_active _EBS_active _retarder_active _EPS_active _hang_active _left_light _right_light _near_light _far_light _top_warning_light _air_beep _front_fog_light _front_work_light _side_light _position_light _back_left_light _back_right_light _back_position_light _brake_light _reverse_light _back_work_light _air_pressure1 _air_pressure2 _oil_percentage _cooler1 _cooler2 _axle_diff_switch _drier_power _inclinometer_power _cold_water_treasure_power _exhaust_brake_switch _sweeper_power _EBS_power _air_pressure_power _hang_up_power _hang_down_power _hang_manual_power ))

(defmethod tli65_can_msgs::RxStLowspeed
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:auto_mode __auto_mode) 0)
    ((:engine_active __engine_active) 0)
    ((:hand_brake_active __hand_brake_active) 0)
    ((:EBS_active __EBS_active) 0)
    ((:retarder_active __retarder_active) 0)
    ((:EPS_active __EPS_active) 0)
    ((:hang_active __hang_active) 0)
    ((:left_light __left_light) 0)
    ((:right_light __right_light) 0)
    ((:near_light __near_light) 0)
    ((:far_light __far_light) 0)
    ((:top_warning_light __top_warning_light) 0)
    ((:air_beep __air_beep) 0)
    ((:front_fog_light __front_fog_light) 0)
    ((:front_work_light __front_work_light) 0)
    ((:side_light __side_light) 0)
    ((:position_light __position_light) 0)
    ((:back_left_light __back_left_light) 0)
    ((:back_right_light __back_right_light) 0)
    ((:back_position_light __back_position_light) 0)
    ((:brake_light __brake_light) 0)
    ((:reverse_light __reverse_light) 0)
    ((:back_work_light __back_work_light) 0)
    ((:air_pressure1 __air_pressure1) 0.0)
    ((:air_pressure2 __air_pressure2) 0.0)
    ((:oil_percentage __oil_percentage) 0.0)
    ((:cooler1 __cooler1) 0)
    ((:cooler2 __cooler2) 0)
    ((:axle_diff_switch __axle_diff_switch) 0)
    ((:drier_power __drier_power) 0)
    ((:inclinometer_power __inclinometer_power) 0)
    ((:cold_water_treasure_power __cold_water_treasure_power) 0)
    ((:exhaust_brake_switch __exhaust_brake_switch) 0)
    ((:sweeper_power __sweeper_power) 0)
    ((:EBS_power __EBS_power) 0)
    ((:air_pressure_power __air_pressure_power) 0)
    ((:hang_up_power __hang_up_power) 0)
    ((:hang_down_power __hang_down_power) 0)
    ((:hang_manual_power __hang_manual_power) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _auto_mode (round __auto_mode))
   (setq _engine_active (round __engine_active))
   (setq _hand_brake_active (round __hand_brake_active))
   (setq _EBS_active (round __EBS_active))
   (setq _retarder_active (round __retarder_active))
   (setq _EPS_active (round __EPS_active))
   (setq _hang_active (round __hang_active))
   (setq _left_light (round __left_light))
   (setq _right_light (round __right_light))
   (setq _near_light (round __near_light))
   (setq _far_light (round __far_light))
   (setq _top_warning_light (round __top_warning_light))
   (setq _air_beep (round __air_beep))
   (setq _front_fog_light (round __front_fog_light))
   (setq _front_work_light (round __front_work_light))
   (setq _side_light (round __side_light))
   (setq _position_light (round __position_light))
   (setq _back_left_light (round __back_left_light))
   (setq _back_right_light (round __back_right_light))
   (setq _back_position_light (round __back_position_light))
   (setq _brake_light (round __brake_light))
   (setq _reverse_light (round __reverse_light))
   (setq _back_work_light (round __back_work_light))
   (setq _air_pressure1 (float __air_pressure1))
   (setq _air_pressure2 (float __air_pressure2))
   (setq _oil_percentage (float __oil_percentage))
   (setq _cooler1 (round __cooler1))
   (setq _cooler2 (round __cooler2))
   (setq _axle_diff_switch (round __axle_diff_switch))
   (setq _drier_power (round __drier_power))
   (setq _inclinometer_power (round __inclinometer_power))
   (setq _cold_water_treasure_power (round __cold_water_treasure_power))
   (setq _exhaust_brake_switch (round __exhaust_brake_switch))
   (setq _sweeper_power (round __sweeper_power))
   (setq _EBS_power (round __EBS_power))
   (setq _air_pressure_power (round __air_pressure_power))
   (setq _hang_up_power (round __hang_up_power))
   (setq _hang_down_power (round __hang_down_power))
   (setq _hang_manual_power (round __hang_manual_power))
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
  (:EPS_active
   (&optional __EPS_active)
   (if __EPS_active (setq _EPS_active __EPS_active)) _EPS_active)
  (:hang_active
   (&optional __hang_active)
   (if __hang_active (setq _hang_active __hang_active)) _hang_active)
  (:left_light
   (&optional __left_light)
   (if __left_light (setq _left_light __left_light)) _left_light)
  (:right_light
   (&optional __right_light)
   (if __right_light (setq _right_light __right_light)) _right_light)
  (:near_light
   (&optional __near_light)
   (if __near_light (setq _near_light __near_light)) _near_light)
  (:far_light
   (&optional __far_light)
   (if __far_light (setq _far_light __far_light)) _far_light)
  (:top_warning_light
   (&optional __top_warning_light)
   (if __top_warning_light (setq _top_warning_light __top_warning_light)) _top_warning_light)
  (:air_beep
   (&optional __air_beep)
   (if __air_beep (setq _air_beep __air_beep)) _air_beep)
  (:front_fog_light
   (&optional __front_fog_light)
   (if __front_fog_light (setq _front_fog_light __front_fog_light)) _front_fog_light)
  (:front_work_light
   (&optional __front_work_light)
   (if __front_work_light (setq _front_work_light __front_work_light)) _front_work_light)
  (:side_light
   (&optional __side_light)
   (if __side_light (setq _side_light __side_light)) _side_light)
  (:position_light
   (&optional __position_light)
   (if __position_light (setq _position_light __position_light)) _position_light)
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
  (:air_pressure1
   (&optional __air_pressure1)
   (if __air_pressure1 (setq _air_pressure1 __air_pressure1)) _air_pressure1)
  (:air_pressure2
   (&optional __air_pressure2)
   (if __air_pressure2 (setq _air_pressure2 __air_pressure2)) _air_pressure2)
  (:oil_percentage
   (&optional __oil_percentage)
   (if __oil_percentage (setq _oil_percentage __oil_percentage)) _oil_percentage)
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
  (:sweeper_power
   (&optional __sweeper_power)
   (if __sweeper_power (setq _sweeper_power __sweeper_power)) _sweeper_power)
  (:EBS_power
   (&optional __EBS_power)
   (if __EBS_power (setq _EBS_power __EBS_power)) _EBS_power)
  (:air_pressure_power
   (&optional __air_pressure_power)
   (if __air_pressure_power (setq _air_pressure_power __air_pressure_power)) _air_pressure_power)
  (:hang_up_power
   (&optional __hang_up_power)
   (if __hang_up_power (setq _hang_up_power __hang_up_power)) _hang_up_power)
  (:hang_down_power
   (&optional __hang_down_power)
   (if __hang_down_power (setq _hang_down_power __hang_down_power)) _hang_down_power)
  (:hang_manual_power
   (&optional __hang_manual_power)
   (if __hang_manual_power (setq _hang_manual_power __hang_manual_power)) _hang_manual_power)
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
    ;; uint8 _EPS_active
    1
    ;; uint8 _hang_active
    1
    ;; uint8 _left_light
    1
    ;; uint8 _right_light
    1
    ;; uint8 _near_light
    1
    ;; uint8 _far_light
    1
    ;; uint8 _top_warning_light
    1
    ;; uint8 _air_beep
    1
    ;; uint8 _front_fog_light
    1
    ;; uint8 _front_work_light
    1
    ;; uint8 _side_light
    1
    ;; uint8 _position_light
    1
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
    ;; float64 _air_pressure1
    8
    ;; float64 _air_pressure2
    8
    ;; float64 _oil_percentage
    8
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
    ;; uint8 _sweeper_power
    1
    ;; uint8 _EBS_power
    1
    ;; uint8 _air_pressure_power
    1
    ;; uint8 _hang_up_power
    1
    ;; uint8 _hang_down_power
    1
    ;; uint8 _hang_manual_power
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
     ;; uint8 _EPS_active
       (write-byte _EPS_active s)
     ;; uint8 _hang_active
       (write-byte _hang_active s)
     ;; uint8 _left_light
       (write-byte _left_light s)
     ;; uint8 _right_light
       (write-byte _right_light s)
     ;; uint8 _near_light
       (write-byte _near_light s)
     ;; uint8 _far_light
       (write-byte _far_light s)
     ;; uint8 _top_warning_light
       (write-byte _top_warning_light s)
     ;; uint8 _air_beep
       (write-byte _air_beep s)
     ;; uint8 _front_fog_light
       (write-byte _front_fog_light s)
     ;; uint8 _front_work_light
       (write-byte _front_work_light s)
     ;; uint8 _side_light
       (write-byte _side_light s)
     ;; uint8 _position_light
       (write-byte _position_light s)
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
     ;; float64 _air_pressure1
       (sys::poke _air_pressure1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _air_pressure2
       (sys::poke _air_pressure2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _oil_percentage
       (sys::poke _oil_percentage (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
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
     ;; uint8 _sweeper_power
       (write-byte _sweeper_power s)
     ;; uint8 _EBS_power
       (write-byte _EBS_power s)
     ;; uint8 _air_pressure_power
       (write-byte _air_pressure_power s)
     ;; uint8 _hang_up_power
       (write-byte _hang_up_power s)
     ;; uint8 _hang_down_power
       (write-byte _hang_down_power s)
     ;; uint8 _hang_manual_power
       (write-byte _hang_manual_power s)
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
   ;; uint8 _EPS_active
     (setq _EPS_active (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _hang_active
     (setq _hang_active (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _left_light
     (setq _left_light (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _right_light
     (setq _right_light (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _near_light
     (setq _near_light (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _far_light
     (setq _far_light (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _top_warning_light
     (setq _top_warning_light (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _air_beep
     (setq _air_beep (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _front_fog_light
     (setq _front_fog_light (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _front_work_light
     (setq _front_work_light (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _side_light
     (setq _side_light (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _position_light
     (setq _position_light (sys::peek buf ptr- :char)) (incf ptr- 1)
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
   ;; float64 _air_pressure1
     (setq _air_pressure1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _air_pressure2
     (setq _air_pressure2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _oil_percentage
     (setq _oil_percentage (sys::peek buf ptr- :double)) (incf ptr- 8)
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
   ;; uint8 _sweeper_power
     (setq _sweeper_power (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _EBS_power
     (setq _EBS_power (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _air_pressure_power
     (setq _air_pressure_power (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _hang_up_power
     (setq _hang_up_power (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _hang_down_power
     (setq _hang_down_power (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _hang_manual_power
     (setq _hang_manual_power (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get tli65_can_msgs::RxStLowspeed :md5sum-) "c2e3c35f27ca2535b83cdc42bd76a652")
(setf (get tli65_can_msgs::RxStLowspeed :datatype-) "tli65_can_msgs/RxStLowspeed")
(setf (get tli65_can_msgs::RxStLowspeed :definition-)
      "Header header

uint8 auto_mode
uint8 engine_active
uint8 hand_brake_active
uint8 EBS_active
uint8 retarder_active
uint8 EPS_active
uint8 hang_active

uint8 left_light
uint8 right_light
uint8 near_light
uint8 far_light
uint8 top_warning_light
uint8 air_beep
uint8 front_fog_light
uint8 front_work_light
uint8 side_light
uint8 position_light
uint8 back_left_light
uint8 back_right_light
uint8 back_position_light
uint8 brake_light
uint8 reverse_light
uint8 back_work_light

float64 air_pressure1
float64 air_pressure2
float64 oil_percentage

uint8 cooler1
uint8 cooler2
uint8 axle_diff_switch
uint8 drier_power
uint8 inclinometer_power
uint8 cold_water_treasure_power
uint8 exhaust_brake_switch
uint8 sweeper_power
uint8 EBS_power
uint8 air_pressure_power
uint8 hang_up_power
uint8 hang_down_power
uint8 hang_manual_power
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



(provide :tli65_can_msgs/RxStLowspeed "c2e3c35f27ca2535b83cdc42bd76a652")


