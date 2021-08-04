;; Auto-generated. Do not edit!


(when (boundp 'tli65_can_msgs::ContainerCalib)
  (if (not (find-package "TLI65_CAN_MSGS"))
    (make-package "TLI65_CAN_MSGS"))
  (shadow 'ContainerCalib (find-package "TLI65_CAN_MSGS")))
(unless (find-package "TLI65_CAN_MSGS::CONTAINERCALIB")
  (make-package "TLI65_CAN_MSGS::CONTAINERCALIB"))

(in-package "ROS")
;;//! \htmlinclude ContainerCalib.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass tli65_can_msgs::ContainerCalib
  :super ros::object
  :slots (_header _pitch_degree _relative_container_angle _k_before_carr_angle ))

(defmethod tli65_can_msgs::ContainerCalib
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:pitch_degree __pitch_degree) 0.0)
    ((:relative_container_angle __relative_container_angle) 0.0)
    ((:k_before_carr_angle __k_before_carr_angle) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _pitch_degree (float __pitch_degree))
   (setq _relative_container_angle (float __relative_container_angle))
   (setq _k_before_carr_angle (float __k_before_carr_angle))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:pitch_degree
   (&optional __pitch_degree)
   (if __pitch_degree (setq _pitch_degree __pitch_degree)) _pitch_degree)
  (:relative_container_angle
   (&optional __relative_container_angle)
   (if __relative_container_angle (setq _relative_container_angle __relative_container_angle)) _relative_container_angle)
  (:k_before_carr_angle
   (&optional __k_before_carr_angle)
   (if __k_before_carr_angle (setq _k_before_carr_angle __k_before_carr_angle)) _k_before_carr_angle)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _pitch_degree
    8
    ;; float64 _relative_container_angle
    8
    ;; float64 _k_before_carr_angle
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _pitch_degree
       (sys::poke _pitch_degree (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _relative_container_angle
       (sys::poke _relative_container_angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _k_before_carr_angle
       (sys::poke _k_before_carr_angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _pitch_degree
     (setq _pitch_degree (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _relative_container_angle
     (setq _relative_container_angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _k_before_carr_angle
     (setq _k_before_carr_angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get tli65_can_msgs::ContainerCalib :md5sum-) "a1e2d137e4598c60731ef7b598273d26")
(setf (get tli65_can_msgs::ContainerCalib :datatype-) "tli65_can_msgs/ContainerCalib")
(setf (get tli65_can_msgs::ContainerCalib :definition-)
      "Header header

float64 pitch_degree
float64 relative_container_angle
float64 k_before_carr_angle

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



(provide :tli65_can_msgs/ContainerCalib "a1e2d137e4598c60731ef7b598273d26")


