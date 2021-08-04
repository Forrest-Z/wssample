;; Auto-generated. Do not edit!


(when (boundp 'tli65_can_msgs::RxSt2)
  (if (not (find-package "TLI65_CAN_MSGS"))
    (make-package "TLI65_CAN_MSGS"))
  (shadow 'RxSt2 (find-package "TLI65_CAN_MSGS")))
(unless (find-package "TLI65_CAN_MSGS::RXST2")
  (make-package "TLI65_CAN_MSGS::RXST2"))

(in-package "ROS")
;;//! \htmlinclude RxSt2.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass tli65_can_msgs::RxSt2
  :super ros::object
  :slots (_header _throttle_pedal_pos _engine_torque_percentage _engine_speed _actual_throttle_pedal_pos _check_sum _msg_count ))

(defmethod tli65_can_msgs::RxSt2
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:throttle_pedal_pos __throttle_pedal_pos) 0.0)
    ((:engine_torque_percentage __engine_torque_percentage) 0.0)
    ((:engine_speed __engine_speed) 0.0)
    ((:actual_throttle_pedal_pos __actual_throttle_pedal_pos) 0.0)
    ((:check_sum __check_sum) 0)
    ((:msg_count __msg_count) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _throttle_pedal_pos (float __throttle_pedal_pos))
   (setq _engine_torque_percentage (float __engine_torque_percentage))
   (setq _engine_speed (float __engine_speed))
   (setq _actual_throttle_pedal_pos (float __actual_throttle_pedal_pos))
   (setq _check_sum (round __check_sum))
   (setq _msg_count (round __msg_count))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:throttle_pedal_pos
   (&optional __throttle_pedal_pos)
   (if __throttle_pedal_pos (setq _throttle_pedal_pos __throttle_pedal_pos)) _throttle_pedal_pos)
  (:engine_torque_percentage
   (&optional __engine_torque_percentage)
   (if __engine_torque_percentage (setq _engine_torque_percentage __engine_torque_percentage)) _engine_torque_percentage)
  (:engine_speed
   (&optional __engine_speed)
   (if __engine_speed (setq _engine_speed __engine_speed)) _engine_speed)
  (:actual_throttle_pedal_pos
   (&optional __actual_throttle_pedal_pos)
   (if __actual_throttle_pedal_pos (setq _actual_throttle_pedal_pos __actual_throttle_pedal_pos)) _actual_throttle_pedal_pos)
  (:check_sum
   (&optional __check_sum)
   (if __check_sum (setq _check_sum __check_sum)) _check_sum)
  (:msg_count
   (&optional __msg_count)
   (if __msg_count (setq _msg_count __msg_count)) _msg_count)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _throttle_pedal_pos
    8
    ;; float64 _engine_torque_percentage
    8
    ;; float64 _engine_speed
    8
    ;; float64 _actual_throttle_pedal_pos
    8
    ;; uint8 _check_sum
    1
    ;; uint8 _msg_count
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _throttle_pedal_pos
       (sys::poke _throttle_pedal_pos (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _engine_torque_percentage
       (sys::poke _engine_torque_percentage (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _engine_speed
       (sys::poke _engine_speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _actual_throttle_pedal_pos
       (sys::poke _actual_throttle_pedal_pos (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _check_sum
       (write-byte _check_sum s)
     ;; uint8 _msg_count
       (write-byte _msg_count s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _throttle_pedal_pos
     (setq _throttle_pedal_pos (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _engine_torque_percentage
     (setq _engine_torque_percentage (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _engine_speed
     (setq _engine_speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _actual_throttle_pedal_pos
     (setq _actual_throttle_pedal_pos (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _check_sum
     (setq _check_sum (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _msg_count
     (setq _msg_count (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get tli65_can_msgs::RxSt2 :md5sum-) "938cd4fdf7b654ca0e40be74922e1cc4")
(setf (get tli65_can_msgs::RxSt2 :datatype-) "tli65_can_msgs/RxSt2")
(setf (get tli65_can_msgs::RxSt2 :definition-)
      "Header header

float64 throttle_pedal_pos
float64 engine_torque_percentage
float64 engine_speed
float64 actual_throttle_pedal_pos
uint8 check_sum
uint8 msg_count
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



(provide :tli65_can_msgs/RxSt2 "938cd4fdf7b654ca0e40be74922e1cc4")


