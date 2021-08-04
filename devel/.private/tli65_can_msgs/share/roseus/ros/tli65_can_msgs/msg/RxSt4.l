;; Auto-generated. Do not edit!


(when (boundp 'tli65_can_msgs::RxSt4)
  (if (not (find-package "TLI65_CAN_MSGS"))
    (make-package "TLI65_CAN_MSGS"))
  (shadow 'RxSt4 (find-package "TLI65_CAN_MSGS")))
(unless (find-package "TLI65_CAN_MSGS::RXST4")
  (make-package "TLI65_CAN_MSGS::RXST4"))

(in-package "ROS")
;;//! \htmlinclude RxSt4.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass tli65_can_msgs::RxSt4
  :super ros::object
  :slots (_header _retarder_torque_percentage _check_sum _msg_count ))

(defmethod tli65_can_msgs::RxSt4
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:retarder_torque_percentage __retarder_torque_percentage) 0.0)
    ((:check_sum __check_sum) 0)
    ((:msg_count __msg_count) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _retarder_torque_percentage (float __retarder_torque_percentage))
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
  (:retarder_torque_percentage
   (&optional __retarder_torque_percentage)
   (if __retarder_torque_percentage (setq _retarder_torque_percentage __retarder_torque_percentage)) _retarder_torque_percentage)
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
    ;; float64 _retarder_torque_percentage
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
     ;; float64 _retarder_torque_percentage
       (sys::poke _retarder_torque_percentage (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
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
   ;; float64 _retarder_torque_percentage
     (setq _retarder_torque_percentage (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _check_sum
     (setq _check_sum (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _msg_count
     (setq _msg_count (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get tli65_can_msgs::RxSt4 :md5sum-) "b6fda05c73294aeca9c625d7dd4030fd")
(setf (get tli65_can_msgs::RxSt4 :datatype-) "tli65_can_msgs/RxSt4")
(setf (get tli65_can_msgs::RxSt4 :definition-)
      "Header header

float64 retarder_torque_percentage
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



(provide :tli65_can_msgs/RxSt4 "b6fda05c73294aeca9c625d7dd4030fd")


