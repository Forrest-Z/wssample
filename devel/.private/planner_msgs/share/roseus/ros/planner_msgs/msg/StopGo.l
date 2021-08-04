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
  :slots (_header _stop_or_go ))

(defmethod planner_msgs::StopGo
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:stop_or_go __stop_or_go) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _stop_or_go (string __stop_or_go))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:stop_or_go
   (&optional __stop_or_go)
   (if __stop_or_go (setq _stop_or_go __stop_or_go)) _stop_or_go)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _stop_or_go
    4 (length _stop_or_go)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _stop_or_go
       (write-long (length _stop_or_go) s) (princ _stop_or_go s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _stop_or_go
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _stop_or_go (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get planner_msgs::StopGo :md5sum-) "baf7a56f493b276b6a53976d92a68e99")
(setf (get planner_msgs::StopGo :datatype-) "planner_msgs/StopGo")
(setf (get planner_msgs::StopGo :definition-)
      "Header header

# stop or go
string stop_or_go
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



(provide :planner_msgs/StopGo "baf7a56f493b276b6a53976d92a68e99")


