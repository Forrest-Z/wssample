;; Auto-generated. Do not edit!


(when (boundp 'planner_msgs::PlannerFSMTrigger)
  (if (not (find-package "PLANNER_MSGS"))
    (make-package "PLANNER_MSGS"))
  (shadow 'PlannerFSMTrigger (find-package "PLANNER_MSGS")))
(unless (find-package "PLANNER_MSGS::PLANNERFSMTRIGGER")
  (make-package "PLANNER_MSGS::PLANNERFSMTRIGGER"))

(in-package "ROS")
;;//! \htmlinclude PlannerFSMTrigger.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass planner_msgs::PlannerFSMTrigger
  :super ros::object
  :slots (_header _flag_lockdown_in_map ))

(defmethod planner_msgs::PlannerFSMTrigger
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:flag_lockdown_in_map __flag_lockdown_in_map) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _flag_lockdown_in_map __flag_lockdown_in_map)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:flag_lockdown_in_map
   (&optional __flag_lockdown_in_map)
   (if __flag_lockdown_in_map (setq _flag_lockdown_in_map __flag_lockdown_in_map)) _flag_lockdown_in_map)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _flag_lockdown_in_map
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _flag_lockdown_in_map
       (if _flag_lockdown_in_map (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _flag_lockdown_in_map
     (setq _flag_lockdown_in_map (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get planner_msgs::PlannerFSMTrigger :md5sum-) "7f0540f51906feb54b1e60d14561961f")
(setf (get planner_msgs::PlannerFSMTrigger :datatype-) "planner_msgs/PlannerFSMTrigger")
(setf (get planner_msgs::PlannerFSMTrigger :definition-)
      "Header header

bool flag_lockdown_in_map
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



(provide :planner_msgs/PlannerFSMTrigger "7f0540f51906feb54b1e60d14561961f")


