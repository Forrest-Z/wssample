;; Auto-generated. Do not edit!


(when (boundp 'tli65_can_msgs::RxSt8)
  (if (not (find-package "TLI65_CAN_MSGS"))
    (make-package "TLI65_CAN_MSGS"))
  (shadow 'RxSt8 (find-package "TLI65_CAN_MSGS")))
(unless (find-package "TLI65_CAN_MSGS::RXST8")
  (make-package "TLI65_CAN_MSGS::RXST8"))

(in-package "ROS")
;;//! \htmlinclude RxSt8.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass tli65_can_msgs::RxSt8
  :super ros::object
  :slots (_header _air_pressure1 _air_pressure2 _oil_percentage ))

(defmethod tli65_can_msgs::RxSt8
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:air_pressure1 __air_pressure1) 0.0)
    ((:air_pressure2 __air_pressure2) 0.0)
    ((:oil_percentage __oil_percentage) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _air_pressure1 (float __air_pressure1))
   (setq _air_pressure2 (float __air_pressure2))
   (setq _oil_percentage (float __oil_percentage))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:air_pressure1
   (&optional __air_pressure1)
   (if __air_pressure1 (setq _air_pressure1 __air_pressure1)) _air_pressure1)
  (:air_pressure2
   (&optional __air_pressure2)
   (if __air_pressure2 (setq _air_pressure2 __air_pressure2)) _air_pressure2)
  (:oil_percentage
   (&optional __oil_percentage)
   (if __oil_percentage (setq _oil_percentage __oil_percentage)) _oil_percentage)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _air_pressure1
    8
    ;; float64 _air_pressure2
    8
    ;; float64 _oil_percentage
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _air_pressure1
       (sys::poke _air_pressure1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _air_pressure2
       (sys::poke _air_pressure2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _oil_percentage
       (sys::poke _oil_percentage (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _air_pressure1
     (setq _air_pressure1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _air_pressure2
     (setq _air_pressure2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _oil_percentage
     (setq _oil_percentage (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get tli65_can_msgs::RxSt8 :md5sum-) "a77ee5f9717c81618a7b44fad753529e")
(setf (get tli65_can_msgs::RxSt8 :datatype-) "tli65_can_msgs/RxSt8")
(setf (get tli65_can_msgs::RxSt8 :definition-)
      "Header header

float64 air_pressure1
float64 air_pressure2
float64 oil_percentage
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



(provide :tli65_can_msgs/RxSt8 "a77ee5f9717c81618a7b44fad753529e")


