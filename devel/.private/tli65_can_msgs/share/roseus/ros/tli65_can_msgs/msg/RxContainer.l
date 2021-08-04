;; Auto-generated. Do not edit!


(when (boundp 'tli65_can_msgs::RxContainer)
  (if (not (find-package "TLI65_CAN_MSGS"))
    (make-package "TLI65_CAN_MSGS"))
  (shadow 'RxContainer (find-package "TLI65_CAN_MSGS")))
(unless (find-package "TLI65_CAN_MSGS::RXCONTAINER")
  (make-package "TLI65_CAN_MSGS::RXCONTAINER"))

(in-package "ROS")
;;//! \htmlinclude RxContainer.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass tli65_can_msgs::RxContainer
  :super ros::object
  :slots (_header _roll _pitch _container_angle _container_angle_state _check_sum _msg_count ))

(defmethod tli65_can_msgs::RxContainer
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:roll __roll) 0)
    ((:pitch __pitch) 0)
    ((:container_angle __container_angle) 0)
    ((:container_angle_state __container_angle_state) 0)
    ((:check_sum __check_sum) 0)
    ((:msg_count __msg_count) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _roll (round __roll))
   (setq _pitch (round __pitch))
   (setq _container_angle (round __container_angle))
   (setq _container_angle_state (round __container_angle_state))
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
  (:roll
   (&optional __roll)
   (if __roll (setq _roll __roll)) _roll)
  (:pitch
   (&optional __pitch)
   (if __pitch (setq _pitch __pitch)) _pitch)
  (:container_angle
   (&optional __container_angle)
   (if __container_angle (setq _container_angle __container_angle)) _container_angle)
  (:container_angle_state
   (&optional __container_angle_state)
   (if __container_angle_state (setq _container_angle_state __container_angle_state)) _container_angle_state)
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
    ;; int8 _roll
    1
    ;; int8 _pitch
    1
    ;; uint8 _container_angle
    1
    ;; uint8 _container_angle_state
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
     ;; int8 _roll
       (write-byte _roll s)
     ;; int8 _pitch
       (write-byte _pitch s)
     ;; uint8 _container_angle
       (write-byte _container_angle s)
     ;; uint8 _container_angle_state
       (write-byte _container_angle_state s)
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
   ;; int8 _roll
     (setq _roll (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _roll 127) (setq _roll (- _roll 256)))
   ;; int8 _pitch
     (setq _pitch (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _pitch 127) (setq _pitch (- _pitch 256)))
   ;; uint8 _container_angle
     (setq _container_angle (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _container_angle_state
     (setq _container_angle_state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _check_sum
     (setq _check_sum (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _msg_count
     (setq _msg_count (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get tli65_can_msgs::RxContainer :md5sum-) "907a594800c7fce9d0617fb5b7b261b9")
(setf (get tli65_can_msgs::RxContainer :datatype-) "tli65_can_msgs/RxContainer")
(setf (get tli65_can_msgs::RxContainer :definition-)
      "Header header

int8 roll
int8 pitch
uint8 container_angle
uint8 container_angle_state
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



(provide :tli65_can_msgs/RxContainer "907a594800c7fce9d0617fb5b7b261b9")


