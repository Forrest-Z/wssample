;; Auto-generated. Do not edit!


(when (boundp 'tli65_can_msgs::RxSt7)
  (if (not (find-package "TLI65_CAN_MSGS"))
    (make-package "TLI65_CAN_MSGS"))
  (shadow 'RxSt7 (find-package "TLI65_CAN_MSGS")))
(unless (find-package "TLI65_CAN_MSGS::RXST7")
  (make-package "TLI65_CAN_MSGS::RXST7"))

(in-package "ROS")
;;//! \htmlinclude RxSt7.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass tli65_can_msgs::RxSt7
  :super ros::object
  :slots (_header _left_light _right_light _near_light _far_light _top_warning_light _air_beep _front_fog_light _front_work_light _side_light _position_light _sweeper_power _EBS_power _air_pressure_power _hang_up_power _hang_down_power _hang_manual_power ))

(defmethod tli65_can_msgs::RxSt7
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
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
    ((:sweeper_power __sweeper_power) 0)
    ((:EBS_power __EBS_power) 0)
    ((:air_pressure_power __air_pressure_power) 0)
    ((:hang_up_power __hang_up_power) 0)
    ((:hang_down_power __hang_down_power) 0)
    ((:hang_manual_power __hang_manual_power) 0)
    )
   (send-super :init)
   (setq _header __header)
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

(setf (get tli65_can_msgs::RxSt7 :md5sum-) "a534ca6f7b38ad0e102e1d9218e5253e")
(setf (get tli65_can_msgs::RxSt7 :datatype-) "tli65_can_msgs/RxSt7")
(setf (get tli65_can_msgs::RxSt7 :definition-)
      "Header header

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



(provide :tli65_can_msgs/RxSt7 "a534ca6f7b38ad0e102e1d9218e5253e")


