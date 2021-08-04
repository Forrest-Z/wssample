;; Auto-generated. Do not edit!


(when (boundp 'tli65_can_msgs::RxVIN)
  (if (not (find-package "TLI65_CAN_MSGS"))
    (make-package "TLI65_CAN_MSGS"))
  (shadow 'RxVIN (find-package "TLI65_CAN_MSGS")))
(unless (find-package "TLI65_CAN_MSGS::RXVIN")
  (make-package "TLI65_CAN_MSGS::RXVIN"))

(in-package "ROS")
;;//! \htmlinclude RxVIN.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass tli65_can_msgs::RxVIN
  :super ros::object
  :slots (_header _vin_code ))

(defmethod tli65_can_msgs::RxVIN
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:vin_code __vin_code) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _vin_code (string __vin_code))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:vin_code
   (&optional __vin_code)
   (if __vin_code (setq _vin_code __vin_code)) _vin_code)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _vin_code
    4 (length _vin_code)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _vin_code
       (write-long (length _vin_code) s) (princ _vin_code s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _vin_code
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _vin_code (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get tli65_can_msgs::RxVIN :md5sum-) "dc7fca3f8f08a8e79c41936c0ed19009")
(setf (get tli65_can_msgs::RxVIN :datatype-) "tli65_can_msgs/RxVIN")
(setf (get tli65_can_msgs::RxVIN :definition-)
      "Header header

string vin_code
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



(provide :tli65_can_msgs/RxVIN "dc7fca3f8f08a8e79c41936c0ed19009")


