;; Auto-generated. Do not edit!


(when (boundp 'tli65_can_msgs::RxFuel)
  (if (not (find-package "TLI65_CAN_MSGS"))
    (make-package "TLI65_CAN_MSGS"))
  (shadow 'RxFuel (find-package "TLI65_CAN_MSGS")))
(unless (find-package "TLI65_CAN_MSGS::RXFUEL")
  (make-package "TLI65_CAN_MSGS::RXFUEL"))

(in-package "ROS")
;;//! \htmlinclude RxFuel.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass tli65_can_msgs::RxFuel
  :super ros::object
  :slots (_header _fuel_consumption _ins_fuel_consumption ))

(defmethod tli65_can_msgs::RxFuel
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:fuel_consumption __fuel_consumption) 0)
    ((:ins_fuel_consumption __ins_fuel_consumption) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _fuel_consumption (round __fuel_consumption))
   (setq _ins_fuel_consumption (round __ins_fuel_consumption))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:fuel_consumption
   (&optional __fuel_consumption)
   (if __fuel_consumption (setq _fuel_consumption __fuel_consumption)) _fuel_consumption)
  (:ins_fuel_consumption
   (&optional __ins_fuel_consumption)
   (if __ins_fuel_consumption (setq _ins_fuel_consumption __ins_fuel_consumption)) _ins_fuel_consumption)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint16 _fuel_consumption
    2
    ;; uint16 _ins_fuel_consumption
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint16 _fuel_consumption
       (write-word _fuel_consumption s)
     ;; uint16 _ins_fuel_consumption
       (write-word _ins_fuel_consumption s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint16 _fuel_consumption
     (setq _fuel_consumption (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _ins_fuel_consumption
     (setq _ins_fuel_consumption (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get tli65_can_msgs::RxFuel :md5sum-) "846c3d8c296609ca08f2215de0373f81")
(setf (get tli65_can_msgs::RxFuel :datatype-) "tli65_can_msgs/RxFuel")
(setf (get tli65_can_msgs::RxFuel :definition-)
      "Header header

uint16 fuel_consumption
uint16 ins_fuel_consumption
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



(provide :tli65_can_msgs/RxFuel "846c3d8c296609ca08f2215de0373f81")


