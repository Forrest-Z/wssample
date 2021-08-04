;; Auto-generated. Do not edit!


(when (boundp 'tli65_can_msgs::RxMaintain)
  (if (not (find-package "TLI65_CAN_MSGS"))
    (make-package "TLI65_CAN_MSGS"))
  (shadow 'RxMaintain (find-package "TLI65_CAN_MSGS")))
(unless (find-package "TLI65_CAN_MSGS::RXMAINTAIN")
  (make-package "TLI65_CAN_MSGS::RXMAINTAIN"))

(in-package "ROS")
;;//! \htmlinclude RxMaintain.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass tli65_can_msgs::RxMaintain
  :super ros::object
  :slots (_header _emergency_input_backup _air_filter_warning _steer_oil_filter_warning ))

(defmethod tli65_can_msgs::RxMaintain
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:emergency_input_backup __emergency_input_backup) 0)
    ((:air_filter_warning __air_filter_warning) 0)
    ((:steer_oil_filter_warning __steer_oil_filter_warning) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _emergency_input_backup (round __emergency_input_backup))
   (setq _air_filter_warning (round __air_filter_warning))
   (setq _steer_oil_filter_warning (round __steer_oil_filter_warning))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:emergency_input_backup
   (&optional __emergency_input_backup)
   (if __emergency_input_backup (setq _emergency_input_backup __emergency_input_backup)) _emergency_input_backup)
  (:air_filter_warning
   (&optional __air_filter_warning)
   (if __air_filter_warning (setq _air_filter_warning __air_filter_warning)) _air_filter_warning)
  (:steer_oil_filter_warning
   (&optional __steer_oil_filter_warning)
   (if __steer_oil_filter_warning (setq _steer_oil_filter_warning __steer_oil_filter_warning)) _steer_oil_filter_warning)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _emergency_input_backup
    1
    ;; uint8 _air_filter_warning
    1
    ;; uint8 _steer_oil_filter_warning
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _emergency_input_backup
       (write-byte _emergency_input_backup s)
     ;; uint8 _air_filter_warning
       (write-byte _air_filter_warning s)
     ;; uint8 _steer_oil_filter_warning
       (write-byte _steer_oil_filter_warning s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _emergency_input_backup
     (setq _emergency_input_backup (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _air_filter_warning
     (setq _air_filter_warning (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _steer_oil_filter_warning
     (setq _steer_oil_filter_warning (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get tli65_can_msgs::RxMaintain :md5sum-) "0e06a3f2866bea393708628f10277bb0")
(setf (get tli65_can_msgs::RxMaintain :datatype-) "tli65_can_msgs/RxMaintain")
(setf (get tli65_can_msgs::RxMaintain :definition-)
      "Header header

uint8 emergency_input_backup
uint8 air_filter_warning
uint8 steer_oil_filter_warning
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



(provide :tli65_can_msgs/RxMaintain "0e06a3f2866bea393708628f10277bb0")


