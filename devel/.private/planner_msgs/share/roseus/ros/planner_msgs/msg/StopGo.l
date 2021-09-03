;; Auto-generated. Do not edit!


(when (boundp 'planner_msgs::StopGo)
  (if (not (find-package "PLANNER_MSGS"))
    (make-package "PLANNER_MSGS"))
  (shadow 'StopGo (find-package "PLANNER_MSGS")))
(unless (find-package "PLANNER_MSGS::STOPGO")
  (make-package "PLANNER_MSGS::STOPGO"))

(in-package "ROS")
;;//! \htmlinclude StopGo.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass planner_msgs::StopGo
  :super ros::object
  :slots (_header _follow_tracks_ON ))

(defmethod planner_msgs::StopGo
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:follow_tracks_ON __follow_tracks_ON) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _follow_tracks_ON __follow_tracks_ON)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:follow_tracks_ON
   (&optional __follow_tracks_ON)
   (if __follow_tracks_ON (setq _follow_tracks_ON __follow_tracks_ON)) _follow_tracks_ON)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _follow_tracks_ON
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _follow_tracks_ON
       (if _follow_tracks_ON (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _follow_tracks_ON
     (setq _follow_tracks_ON (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get planner_msgs::StopGo :md5sum-) "da3d4a046e4f68c9d40c962a1492bab3")
(setf (get planner_msgs::StopGo :datatype-) "planner_msgs/StopGo")
(setf (get planner_msgs::StopGo :definition-)
      "Header header

# follow tracks planner on/off
bool follow_tracks_ON
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



(provide :planner_msgs/StopGo "da3d4a046e4f68c9d40c962a1492bab3")


