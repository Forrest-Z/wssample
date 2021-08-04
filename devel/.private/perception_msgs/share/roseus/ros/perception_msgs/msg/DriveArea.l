;; Auto-generated. Do not edit!


(when (boundp 'perception_msgs::DriveArea)
  (if (not (find-package "PERCEPTION_MSGS"))
    (make-package "PERCEPTION_MSGS"))
  (shadow 'DriveArea (find-package "PERCEPTION_MSGS")))
(unless (find-package "PERCEPTION_MSGS::DRIVEAREA")
  (make-package "PERCEPTION_MSGS::DRIVEAREA"))

(in-package "ROS")
;;//! \htmlinclude DriveArea.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass perception_msgs::DriveArea
  :super ros::object
  :slots (_header _left_area_avail _right_area_avail ))

(defmethod perception_msgs::DriveArea
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:left_area_avail __left_area_avail) nil)
    ((:right_area_avail __right_area_avail) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _left_area_avail __left_area_avail)
   (setq _right_area_avail __right_area_avail)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:left_area_avail
   (&optional __left_area_avail)
   (if __left_area_avail (setq _left_area_avail __left_area_avail)) _left_area_avail)
  (:right_area_avail
   (&optional __right_area_avail)
   (if __right_area_avail (setq _right_area_avail __right_area_avail)) _right_area_avail)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _left_area_avail
    1
    ;; bool _right_area_avail
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _left_area_avail
       (if _left_area_avail (write-byte -1 s) (write-byte 0 s))
     ;; bool _right_area_avail
       (if _right_area_avail (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _left_area_avail
     (setq _left_area_avail (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _right_area_avail
     (setq _right_area_avail (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get perception_msgs::DriveArea :md5sum-) "0d7db88ce8a43d4073cc44d916824e19")
(setf (get perception_msgs::DriveArea :datatype-) "perception_msgs/DriveArea")
(setf (get perception_msgs::DriveArea :definition-)
      "Header header

bool left_area_avail
bool right_area_avail
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



(provide :perception_msgs/DriveArea "0d7db88ce8a43d4073cc44d916824e19")


