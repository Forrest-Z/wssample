;; Auto-generated. Do not edit!


(when (boundp 'tli65_can_msgs::RxSpeed)
  (if (not (find-package "TLI65_CAN_MSGS"))
    (make-package "TLI65_CAN_MSGS"))
  (shadow 'RxSpeed (find-package "TLI65_CAN_MSGS")))
(unless (find-package "TLI65_CAN_MSGS::RXSPEED")
  (make-package "TLI65_CAN_MSGS::RXSPEED"))

(in-package "ROS")
;;//! \htmlinclude RxSpeed.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass tli65_can_msgs::RxSpeed
  :super ros::object
  :slots (_header _front_axle_speed _front_left_speed _front_right_speed _back_left_speed _back_right_speed ))

(defmethod tli65_can_msgs::RxSpeed
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:front_axle_speed __front_axle_speed) 0.0)
    ((:front_left_speed __front_left_speed) 0.0)
    ((:front_right_speed __front_right_speed) 0.0)
    ((:back_left_speed __back_left_speed) 0.0)
    ((:back_right_speed __back_right_speed) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _front_axle_speed (float __front_axle_speed))
   (setq _front_left_speed (float __front_left_speed))
   (setq _front_right_speed (float __front_right_speed))
   (setq _back_left_speed (float __back_left_speed))
   (setq _back_right_speed (float __back_right_speed))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:front_axle_speed
   (&optional __front_axle_speed)
   (if __front_axle_speed (setq _front_axle_speed __front_axle_speed)) _front_axle_speed)
  (:front_left_speed
   (&optional __front_left_speed)
   (if __front_left_speed (setq _front_left_speed __front_left_speed)) _front_left_speed)
  (:front_right_speed
   (&optional __front_right_speed)
   (if __front_right_speed (setq _front_right_speed __front_right_speed)) _front_right_speed)
  (:back_left_speed
   (&optional __back_left_speed)
   (if __back_left_speed (setq _back_left_speed __back_left_speed)) _back_left_speed)
  (:back_right_speed
   (&optional __back_right_speed)
   (if __back_right_speed (setq _back_right_speed __back_right_speed)) _back_right_speed)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _front_axle_speed
    8
    ;; float64 _front_left_speed
    8
    ;; float64 _front_right_speed
    8
    ;; float64 _back_left_speed
    8
    ;; float64 _back_right_speed
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _front_axle_speed
       (sys::poke _front_axle_speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _front_left_speed
       (sys::poke _front_left_speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _front_right_speed
       (sys::poke _front_right_speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _back_left_speed
       (sys::poke _back_left_speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _back_right_speed
       (sys::poke _back_right_speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _front_axle_speed
     (setq _front_axle_speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _front_left_speed
     (setq _front_left_speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _front_right_speed
     (setq _front_right_speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _back_left_speed
     (setq _back_left_speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _back_right_speed
     (setq _back_right_speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get tli65_can_msgs::RxSpeed :md5sum-) "9cd50ce112759f36a39c8f0cf8f9a854")
(setf (get tli65_can_msgs::RxSpeed :datatype-) "tli65_can_msgs/RxSpeed")
(setf (get tli65_can_msgs::RxSpeed :definition-)
      "Header header

float64 front_axle_speed
float64 front_left_speed
float64 front_right_speed
float64 back_left_speed
float64 back_right_speed
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



(provide :tli65_can_msgs/RxSpeed "9cd50ce112759f36a39c8f0cf8f9a854")


