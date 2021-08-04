;; Auto-generated. Do not edit!


(when (boundp 'kalman_msgs::Kinematics)
  (if (not (find-package "KALMAN_MSGS"))
    (make-package "KALMAN_MSGS"))
  (shadow 'Kinematics (find-package "KALMAN_MSGS")))
(unless (find-package "KALMAN_MSGS::KINEMATICS")
  (make-package "KALMAN_MSGS::KINEMATICS"))

(in-package "ROS")
;;//! \htmlinclude Kinematics.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass kalman_msgs::Kinematics
  :super ros::object
  :slots (_header _k_vx _k_yawrate ))

(defmethod kalman_msgs::Kinematics
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:k_vx __k_vx) 0.0)
    ((:k_yawrate __k_yawrate) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _k_vx (float __k_vx))
   (setq _k_yawrate (float __k_yawrate))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:k_vx
   (&optional __k_vx)
   (if __k_vx (setq _k_vx __k_vx)) _k_vx)
  (:k_yawrate
   (&optional __k_yawrate)
   (if __k_yawrate (setq _k_yawrate __k_yawrate)) _k_yawrate)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _k_vx
    8
    ;; float64 _k_yawrate
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _k_vx
       (sys::poke _k_vx (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _k_yawrate
       (sys::poke _k_yawrate (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _k_vx
     (setq _k_vx (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _k_yawrate
     (setq _k_yawrate (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get kalman_msgs::Kinematics :md5sum-) "d8265f549b6eafa5bb69f5a95dd77e28")
(setf (get kalman_msgs::Kinematics :datatype-) "kalman_msgs/Kinematics")
(setf (get kalman_msgs::Kinematics :definition-)
      "Header header

# kalman_vx
#  >0 for forward, <0 for backward
float64 k_vx

# kalman_yawrate
float64 k_yawrate 

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



(provide :kalman_msgs/Kinematics "d8265f549b6eafa5bb69f5a95dd77e28")


