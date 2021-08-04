;; Auto-generated. Do not edit!


(when (boundp 'localization_msgs::SteerSpeedYawRate)
  (if (not (find-package "LOCALIZATION_MSGS"))
    (make-package "LOCALIZATION_MSGS"))
  (shadow 'SteerSpeedYawRate (find-package "LOCALIZATION_MSGS")))
(unless (find-package "LOCALIZATION_MSGS::STEERSPEEDYAWRATE")
  (make-package "LOCALIZATION_MSGS::STEERSPEEDYAWRATE"))

(in-package "ROS")
;;//! \htmlinclude SteerSpeedYawRate.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass localization_msgs::SteerSpeedYawRate
  :super ros::object
  :slots (_header _yawrate ))

(defmethod localization_msgs::SteerSpeedYawRate
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:yawrate __yawrate) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _yawrate (float __yawrate))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:yawrate
   (&optional __yawrate)
   (if __yawrate (setq _yawrate __yawrate)) _yawrate)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _yawrate
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _yawrate
       (sys::poke _yawrate (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _yawrate
     (setq _yawrate (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get localization_msgs::SteerSpeedYawRate :md5sum-) "2d749bd596c0594c11768cf518b25124")
(setf (get localization_msgs::SteerSpeedYawRate :datatype-) "localization_msgs/SteerSpeedYawRate")
(setf (get localization_msgs::SteerSpeedYawRate :definition-)
      "Header header

float64 yawrate
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



(provide :localization_msgs/SteerSpeedYawRate "2d749bd596c0594c11768cf518b25124")


