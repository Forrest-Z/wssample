;; Auto-generated. Do not edit!


(when (boundp 'tli65_can_msgs::RxEPB)
  (if (not (find-package "TLI65_CAN_MSGS"))
    (make-package "TLI65_CAN_MSGS"))
  (shadow 'RxEPB (find-package "TLI65_CAN_MSGS")))
(unless (find-package "TLI65_CAN_MSGS::RXEPB")
  (make-package "TLI65_CAN_MSGS::RXEPB"))

(in-package "ROS")
;;//! \htmlinclude RxEPB.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass tli65_can_msgs::RxEPB
  :super ros::object
  :slots (_header _EPB_state _EPB_low_pressure_switch _EPB_mode _check_sum _msg_count ))

(defmethod tli65_can_msgs::RxEPB
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:EPB_state __EPB_state) 0)
    ((:EPB_low_pressure_switch __EPB_low_pressure_switch) 0)
    ((:EPB_mode __EPB_mode) 0)
    ((:check_sum __check_sum) 0)
    ((:msg_count __msg_count) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _EPB_state (round __EPB_state))
   (setq _EPB_low_pressure_switch (round __EPB_low_pressure_switch))
   (setq _EPB_mode (round __EPB_mode))
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
  (:EPB_state
   (&optional __EPB_state)
   (if __EPB_state (setq _EPB_state __EPB_state)) _EPB_state)
  (:EPB_low_pressure_switch
   (&optional __EPB_low_pressure_switch)
   (if __EPB_low_pressure_switch (setq _EPB_low_pressure_switch __EPB_low_pressure_switch)) _EPB_low_pressure_switch)
  (:EPB_mode
   (&optional __EPB_mode)
   (if __EPB_mode (setq _EPB_mode __EPB_mode)) _EPB_mode)
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
    ;; uint8 _EPB_state
    1
    ;; uint8 _EPB_low_pressure_switch
    1
    ;; uint8 _EPB_mode
    1
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
     ;; uint8 _EPB_state
       (write-byte _EPB_state s)
     ;; uint8 _EPB_low_pressure_switch
       (write-byte _EPB_low_pressure_switch s)
     ;; uint8 _EPB_mode
       (write-byte _EPB_mode s)
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
   ;; uint8 _EPB_state
     (setq _EPB_state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _EPB_low_pressure_switch
     (setq _EPB_low_pressure_switch (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _EPB_mode
     (setq _EPB_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _check_sum
     (setq _check_sum (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _msg_count
     (setq _msg_count (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get tli65_can_msgs::RxEPB :md5sum-) "025343906ddd3d81613312e1487428e2")
(setf (get tli65_can_msgs::RxEPB :datatype-) "tli65_can_msgs/RxEPB")
(setf (get tli65_can_msgs::RxEPB :definition-)
      "Header header

uint8 EPB_state
uint8 EPB_low_pressure_switch
uint8 EPB_mode
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



(provide :tli65_can_msgs/RxEPB "025343906ddd3d81613312e1487428e2")


