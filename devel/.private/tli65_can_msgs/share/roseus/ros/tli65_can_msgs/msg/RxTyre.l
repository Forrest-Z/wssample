;; Auto-generated. Do not edit!


(when (boundp 'tli65_can_msgs::RxTyre)
  (if (not (find-package "TLI65_CAN_MSGS"))
    (make-package "TLI65_CAN_MSGS"))
  (shadow 'RxTyre (find-package "TLI65_CAN_MSGS")))
(unless (find-package "TLI65_CAN_MSGS::RXTYRE")
  (make-package "TLI65_CAN_MSGS::RXTYRE"))

(in-package "ROS")
;;//! \htmlinclude RxTyre.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass tli65_can_msgs::RxTyre
  :super ros::object
  :slots (_header _front_left_pressure _front_right_pressure _middle_left_outer_pressure _middle_left_inner_pressure _middle_right_inner_pressure _middle_right_outer_pressure _pressure_test_fault _back_left_outer_pressure _back_left_inner_pressure _back_right_inner_pressure _back_right_outer_pressure _front_left_temperature _front_right_temperature _front_temperature_test_fault _middle_back_temperature_test_fault _middle_left_outer_temperature _middle_left_inner_temperature _middle_right_inner_temperature _middle_right_outer_temperature _back_left_outer_temperature _back_left_inner_temperature _back_right_inner_temperature _back_right_outer_temperature ))

(defmethod tli65_can_msgs::RxTyre
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:front_left_pressure __front_left_pressure) 0)
    ((:front_right_pressure __front_right_pressure) 0)
    ((:middle_left_outer_pressure __middle_left_outer_pressure) 0)
    ((:middle_left_inner_pressure __middle_left_inner_pressure) 0)
    ((:middle_right_inner_pressure __middle_right_inner_pressure) 0)
    ((:middle_right_outer_pressure __middle_right_outer_pressure) 0)
    ((:pressure_test_fault __pressure_test_fault) 0)
    ((:back_left_outer_pressure __back_left_outer_pressure) 0)
    ((:back_left_inner_pressure __back_left_inner_pressure) 0)
    ((:back_right_inner_pressure __back_right_inner_pressure) 0)
    ((:back_right_outer_pressure __back_right_outer_pressure) 0)
    ((:front_left_temperature __front_left_temperature) 0.0)
    ((:front_right_temperature __front_right_temperature) 0.0)
    ((:front_temperature_test_fault __front_temperature_test_fault) 0)
    ((:middle_back_temperature_test_fault __middle_back_temperature_test_fault) 0)
    ((:middle_left_outer_temperature __middle_left_outer_temperature) 0.0)
    ((:middle_left_inner_temperature __middle_left_inner_temperature) 0.0)
    ((:middle_right_inner_temperature __middle_right_inner_temperature) 0.0)
    ((:middle_right_outer_temperature __middle_right_outer_temperature) 0.0)
    ((:back_left_outer_temperature __back_left_outer_temperature) 0.0)
    ((:back_left_inner_temperature __back_left_inner_temperature) 0.0)
    ((:back_right_inner_temperature __back_right_inner_temperature) 0.0)
    ((:back_right_outer_temperature __back_right_outer_temperature) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _front_left_pressure (round __front_left_pressure))
   (setq _front_right_pressure (round __front_right_pressure))
   (setq _middle_left_outer_pressure (round __middle_left_outer_pressure))
   (setq _middle_left_inner_pressure (round __middle_left_inner_pressure))
   (setq _middle_right_inner_pressure (round __middle_right_inner_pressure))
   (setq _middle_right_outer_pressure (round __middle_right_outer_pressure))
   (setq _pressure_test_fault (round __pressure_test_fault))
   (setq _back_left_outer_pressure (round __back_left_outer_pressure))
   (setq _back_left_inner_pressure (round __back_left_inner_pressure))
   (setq _back_right_inner_pressure (round __back_right_inner_pressure))
   (setq _back_right_outer_pressure (round __back_right_outer_pressure))
   (setq _front_left_temperature (float __front_left_temperature))
   (setq _front_right_temperature (float __front_right_temperature))
   (setq _front_temperature_test_fault (round __front_temperature_test_fault))
   (setq _middle_back_temperature_test_fault (round __middle_back_temperature_test_fault))
   (setq _middle_left_outer_temperature (float __middle_left_outer_temperature))
   (setq _middle_left_inner_temperature (float __middle_left_inner_temperature))
   (setq _middle_right_inner_temperature (float __middle_right_inner_temperature))
   (setq _middle_right_outer_temperature (float __middle_right_outer_temperature))
   (setq _back_left_outer_temperature (float __back_left_outer_temperature))
   (setq _back_left_inner_temperature (float __back_left_inner_temperature))
   (setq _back_right_inner_temperature (float __back_right_inner_temperature))
   (setq _back_right_outer_temperature (float __back_right_outer_temperature))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:front_left_pressure
   (&optional __front_left_pressure)
   (if __front_left_pressure (setq _front_left_pressure __front_left_pressure)) _front_left_pressure)
  (:front_right_pressure
   (&optional __front_right_pressure)
   (if __front_right_pressure (setq _front_right_pressure __front_right_pressure)) _front_right_pressure)
  (:middle_left_outer_pressure
   (&optional __middle_left_outer_pressure)
   (if __middle_left_outer_pressure (setq _middle_left_outer_pressure __middle_left_outer_pressure)) _middle_left_outer_pressure)
  (:middle_left_inner_pressure
   (&optional __middle_left_inner_pressure)
   (if __middle_left_inner_pressure (setq _middle_left_inner_pressure __middle_left_inner_pressure)) _middle_left_inner_pressure)
  (:middle_right_inner_pressure
   (&optional __middle_right_inner_pressure)
   (if __middle_right_inner_pressure (setq _middle_right_inner_pressure __middle_right_inner_pressure)) _middle_right_inner_pressure)
  (:middle_right_outer_pressure
   (&optional __middle_right_outer_pressure)
   (if __middle_right_outer_pressure (setq _middle_right_outer_pressure __middle_right_outer_pressure)) _middle_right_outer_pressure)
  (:pressure_test_fault
   (&optional __pressure_test_fault)
   (if __pressure_test_fault (setq _pressure_test_fault __pressure_test_fault)) _pressure_test_fault)
  (:back_left_outer_pressure
   (&optional __back_left_outer_pressure)
   (if __back_left_outer_pressure (setq _back_left_outer_pressure __back_left_outer_pressure)) _back_left_outer_pressure)
  (:back_left_inner_pressure
   (&optional __back_left_inner_pressure)
   (if __back_left_inner_pressure (setq _back_left_inner_pressure __back_left_inner_pressure)) _back_left_inner_pressure)
  (:back_right_inner_pressure
   (&optional __back_right_inner_pressure)
   (if __back_right_inner_pressure (setq _back_right_inner_pressure __back_right_inner_pressure)) _back_right_inner_pressure)
  (:back_right_outer_pressure
   (&optional __back_right_outer_pressure)
   (if __back_right_outer_pressure (setq _back_right_outer_pressure __back_right_outer_pressure)) _back_right_outer_pressure)
  (:front_left_temperature
   (&optional __front_left_temperature)
   (if __front_left_temperature (setq _front_left_temperature __front_left_temperature)) _front_left_temperature)
  (:front_right_temperature
   (&optional __front_right_temperature)
   (if __front_right_temperature (setq _front_right_temperature __front_right_temperature)) _front_right_temperature)
  (:front_temperature_test_fault
   (&optional __front_temperature_test_fault)
   (if __front_temperature_test_fault (setq _front_temperature_test_fault __front_temperature_test_fault)) _front_temperature_test_fault)
  (:middle_back_temperature_test_fault
   (&optional __middle_back_temperature_test_fault)
   (if __middle_back_temperature_test_fault (setq _middle_back_temperature_test_fault __middle_back_temperature_test_fault)) _middle_back_temperature_test_fault)
  (:middle_left_outer_temperature
   (&optional __middle_left_outer_temperature)
   (if __middle_left_outer_temperature (setq _middle_left_outer_temperature __middle_left_outer_temperature)) _middle_left_outer_temperature)
  (:middle_left_inner_temperature
   (&optional __middle_left_inner_temperature)
   (if __middle_left_inner_temperature (setq _middle_left_inner_temperature __middle_left_inner_temperature)) _middle_left_inner_temperature)
  (:middle_right_inner_temperature
   (&optional __middle_right_inner_temperature)
   (if __middle_right_inner_temperature (setq _middle_right_inner_temperature __middle_right_inner_temperature)) _middle_right_inner_temperature)
  (:middle_right_outer_temperature
   (&optional __middle_right_outer_temperature)
   (if __middle_right_outer_temperature (setq _middle_right_outer_temperature __middle_right_outer_temperature)) _middle_right_outer_temperature)
  (:back_left_outer_temperature
   (&optional __back_left_outer_temperature)
   (if __back_left_outer_temperature (setq _back_left_outer_temperature __back_left_outer_temperature)) _back_left_outer_temperature)
  (:back_left_inner_temperature
   (&optional __back_left_inner_temperature)
   (if __back_left_inner_temperature (setq _back_left_inner_temperature __back_left_inner_temperature)) _back_left_inner_temperature)
  (:back_right_inner_temperature
   (&optional __back_right_inner_temperature)
   (if __back_right_inner_temperature (setq _back_right_inner_temperature __back_right_inner_temperature)) _back_right_inner_temperature)
  (:back_right_outer_temperature
   (&optional __back_right_outer_temperature)
   (if __back_right_outer_temperature (setq _back_right_outer_temperature __back_right_outer_temperature)) _back_right_outer_temperature)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint16 _front_left_pressure
    2
    ;; uint16 _front_right_pressure
    2
    ;; uint16 _middle_left_outer_pressure
    2
    ;; uint16 _middle_left_inner_pressure
    2
    ;; uint16 _middle_right_inner_pressure
    2
    ;; uint16 _middle_right_outer_pressure
    2
    ;; uint8 _pressure_test_fault
    1
    ;; uint16 _back_left_outer_pressure
    2
    ;; uint16 _back_left_inner_pressure
    2
    ;; uint16 _back_right_inner_pressure
    2
    ;; uint16 _back_right_outer_pressure
    2
    ;; float64 _front_left_temperature
    8
    ;; float64 _front_right_temperature
    8
    ;; uint8 _front_temperature_test_fault
    1
    ;; uint8 _middle_back_temperature_test_fault
    1
    ;; float64 _middle_left_outer_temperature
    8
    ;; float64 _middle_left_inner_temperature
    8
    ;; float64 _middle_right_inner_temperature
    8
    ;; float64 _middle_right_outer_temperature
    8
    ;; float64 _back_left_outer_temperature
    8
    ;; float64 _back_left_inner_temperature
    8
    ;; float64 _back_right_inner_temperature
    8
    ;; float64 _back_right_outer_temperature
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint16 _front_left_pressure
       (write-word _front_left_pressure s)
     ;; uint16 _front_right_pressure
       (write-word _front_right_pressure s)
     ;; uint16 _middle_left_outer_pressure
       (write-word _middle_left_outer_pressure s)
     ;; uint16 _middle_left_inner_pressure
       (write-word _middle_left_inner_pressure s)
     ;; uint16 _middle_right_inner_pressure
       (write-word _middle_right_inner_pressure s)
     ;; uint16 _middle_right_outer_pressure
       (write-word _middle_right_outer_pressure s)
     ;; uint8 _pressure_test_fault
       (write-byte _pressure_test_fault s)
     ;; uint16 _back_left_outer_pressure
       (write-word _back_left_outer_pressure s)
     ;; uint16 _back_left_inner_pressure
       (write-word _back_left_inner_pressure s)
     ;; uint16 _back_right_inner_pressure
       (write-word _back_right_inner_pressure s)
     ;; uint16 _back_right_outer_pressure
       (write-word _back_right_outer_pressure s)
     ;; float64 _front_left_temperature
       (sys::poke _front_left_temperature (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _front_right_temperature
       (sys::poke _front_right_temperature (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _front_temperature_test_fault
       (write-byte _front_temperature_test_fault s)
     ;; uint8 _middle_back_temperature_test_fault
       (write-byte _middle_back_temperature_test_fault s)
     ;; float64 _middle_left_outer_temperature
       (sys::poke _middle_left_outer_temperature (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _middle_left_inner_temperature
       (sys::poke _middle_left_inner_temperature (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _middle_right_inner_temperature
       (sys::poke _middle_right_inner_temperature (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _middle_right_outer_temperature
       (sys::poke _middle_right_outer_temperature (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _back_left_outer_temperature
       (sys::poke _back_left_outer_temperature (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _back_left_inner_temperature
       (sys::poke _back_left_inner_temperature (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _back_right_inner_temperature
       (sys::poke _back_right_inner_temperature (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _back_right_outer_temperature
       (sys::poke _back_right_outer_temperature (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint16 _front_left_pressure
     (setq _front_left_pressure (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _front_right_pressure
     (setq _front_right_pressure (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _middle_left_outer_pressure
     (setq _middle_left_outer_pressure (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _middle_left_inner_pressure
     (setq _middle_left_inner_pressure (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _middle_right_inner_pressure
     (setq _middle_right_inner_pressure (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _middle_right_outer_pressure
     (setq _middle_right_outer_pressure (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _pressure_test_fault
     (setq _pressure_test_fault (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _back_left_outer_pressure
     (setq _back_left_outer_pressure (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _back_left_inner_pressure
     (setq _back_left_inner_pressure (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _back_right_inner_pressure
     (setq _back_right_inner_pressure (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _back_right_outer_pressure
     (setq _back_right_outer_pressure (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float64 _front_left_temperature
     (setq _front_left_temperature (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _front_right_temperature
     (setq _front_right_temperature (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _front_temperature_test_fault
     (setq _front_temperature_test_fault (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _middle_back_temperature_test_fault
     (setq _middle_back_temperature_test_fault (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _middle_left_outer_temperature
     (setq _middle_left_outer_temperature (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _middle_left_inner_temperature
     (setq _middle_left_inner_temperature (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _middle_right_inner_temperature
     (setq _middle_right_inner_temperature (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _middle_right_outer_temperature
     (setq _middle_right_outer_temperature (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _back_left_outer_temperature
     (setq _back_left_outer_temperature (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _back_left_inner_temperature
     (setq _back_left_inner_temperature (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _back_right_inner_temperature
     (setq _back_right_inner_temperature (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _back_right_outer_temperature
     (setq _back_right_outer_temperature (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get tli65_can_msgs::RxTyre :md5sum-) "44acfc146651f84144777b20f26ca9a7")
(setf (get tli65_can_msgs::RxTyre :datatype-) "tli65_can_msgs/RxTyre")
(setf (get tli65_can_msgs::RxTyre :definition-)
      "Header header

# tyre1
uint16 front_left_pressure
uint16 front_right_pressure
uint16 middle_left_outer_pressure
uint16 middle_left_inner_pressure
uint16 middle_right_inner_pressure
uint16 middle_right_outer_pressure
uint8 pressure_test_fault

# tyre2
uint16 back_left_outer_pressure
uint16 back_left_inner_pressure
uint16 back_right_inner_pressure
uint16 back_right_outer_pressure

# tyre3
float64 front_left_temperature
float64 front_right_temperature
uint8 front_temperature_test_fault
uint8 middle_back_temperature_test_fault

# tyre4
float64 middle_left_outer_temperature
float64 middle_left_inner_temperature
float64 middle_right_inner_temperature
float64 middle_right_outer_temperature

# tyre5
float64 back_left_outer_temperature
float64 back_left_inner_temperature
float64 back_right_inner_temperature
float64 back_right_outer_temperature
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



(provide :tli65_can_msgs/RxTyre "44acfc146651f84144777b20f26ca9a7")


