;; Auto-generated. Do not edit!


(when (boundp 'tli65_can_msgs::RxSt6)
  (if (not (find-package "TLI65_CAN_MSGS"))
    (make-package "TLI65_CAN_MSGS"))
  (shadow 'RxSt6 (find-package "TLI65_CAN_MSGS")))
(unless (find-package "TLI65_CAN_MSGS::RXST6")
  (make-package "TLI65_CAN_MSGS::RXST6"))

(in-package "ROS")
;;//! \htmlinclude RxSt6.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass tli65_can_msgs::RxSt6
  :super ros::object
  :slots (_header _gear _max_forward_gear _speed_from_gear _check_sum _msg_count ))

(defmethod tli65_can_msgs::RxSt6
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:gear __gear) 0)
    ((:max_forward_gear __max_forward_gear) 0)
    ((:speed_from_gear __speed_from_gear) 0.0)
    ((:check_sum __check_sum) 0)
    ((:msg_count __msg_count) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _gear (round __gear))
   (setq _max_forward_gear (round __max_forward_gear))
   (setq _speed_from_gear (float __speed_from_gear))
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
  (:gear
   (&optional __gear)
   (if __gear (setq _gear __gear)) _gear)
  (:max_forward_gear
   (&optional __max_forward_gear)
   (if __max_forward_gear (setq _max_forward_gear __max_forward_gear)) _max_forward_gear)
  (:speed_from_gear
   (&optional __speed_from_gear)
   (if __speed_from_gear (setq _speed_from_gear __speed_from_gear)) _speed_from_gear)
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
    ;; int8 _gear
    1
    ;; int8 _max_forward_gear
    1
    ;; float64 _speed_from_gear
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
     ;; int8 _gear
       (write-byte _gear s)
     ;; int8 _max_forward_gear
       (write-byte _max_forward_gear s)
     ;; float64 _speed_from_gear
       (sys::poke _speed_from_gear (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
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
   ;; int8 _gear
     (setq _gear (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _gear 127) (setq _gear (- _gear 256)))
   ;; int8 _max_forward_gear
     (setq _max_forward_gear (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _max_forward_gear 127) (setq _max_forward_gear (- _max_forward_gear 256)))
   ;; float64 _speed_from_gear
     (setq _speed_from_gear (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _check_sum
     (setq _check_sum (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _msg_count
     (setq _msg_count (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get tli65_can_msgs::RxSt6 :md5sum-) "7e92144d475c554c1ac37c95adff72a8")
(setf (get tli65_can_msgs::RxSt6 :datatype-) "tli65_can_msgs/RxSt6")
(setf (get tli65_can_msgs::RxSt6 :definition-)
      "Header header

int8 gear
int8 max_forward_gear
float64 speed_from_gear
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



(provide :tli65_can_msgs/RxSt6 "7e92144d475c554c1ac37c95adff72a8")


