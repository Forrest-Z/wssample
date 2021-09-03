;; Auto-generated. Do not edit!


(when (boundp 'planner_msgs::PlannerFSM)
  (if (not (find-package "PLANNER_MSGS"))
    (make-package "PLANNER_MSGS"))
  (shadow 'PlannerFSM (find-package "PLANNER_MSGS")))
(unless (find-package "PLANNER_MSGS::PLANNERFSM")
  (make-package "PLANNER_MSGS::PLANNERFSM"))

(in-package "ROS")
;;//! \htmlinclude PlannerFSM.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass planner_msgs::PlannerFSM
  :super ros::object
  :slots (_header _planner_fsm_string _gear _planner_fsm _last_planner_fsm ))

(defmethod planner_msgs::PlannerFSM
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:planner_fsm_string __planner_fsm_string) "")
    ((:gear __gear) 0)
    ((:planner_fsm __planner_fsm) 0)
    ((:last_planner_fsm __last_planner_fsm) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _planner_fsm_string (string __planner_fsm_string))
   (setq _gear (round __gear))
   (setq _planner_fsm (round __planner_fsm))
   (setq _last_planner_fsm (round __last_planner_fsm))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:planner_fsm_string
   (&optional __planner_fsm_string)
   (if __planner_fsm_string (setq _planner_fsm_string __planner_fsm_string)) _planner_fsm_string)
  (:gear
   (&optional __gear)
   (if __gear (setq _gear __gear)) _gear)
  (:planner_fsm
   (&optional __planner_fsm)
   (if __planner_fsm (setq _planner_fsm __planner_fsm)) _planner_fsm)
  (:last_planner_fsm
   (&optional __last_planner_fsm)
   (if __last_planner_fsm (setq _last_planner_fsm __last_planner_fsm)) _last_planner_fsm)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _planner_fsm_string
    4 (length _planner_fsm_string)
    ;; int32 _gear
    4
    ;; int32 _planner_fsm
    4
    ;; int32 _last_planner_fsm
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _planner_fsm_string
       (write-long (length _planner_fsm_string) s) (princ _planner_fsm_string s)
     ;; int32 _gear
       (write-long _gear s)
     ;; int32 _planner_fsm
       (write-long _planner_fsm s)
     ;; int32 _last_planner_fsm
       (write-long _last_planner_fsm s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _planner_fsm_string
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _planner_fsm_string (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _gear
     (setq _gear (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _planner_fsm
     (setq _planner_fsm (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _last_planner_fsm
     (setq _last_planner_fsm (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get planner_msgs::PlannerFSM :md5sum-) "17792b6358bfdffcd755358b31a0d229")
(setf (get planner_msgs::PlannerFSM :datatype-) "planner_msgs/PlannerFSM")
(setf (get planner_msgs::PlannerFSM :definition-)
      "Header header

string planner_fsm_string
int32 gear
int32 planner_fsm
int32 last_planner_fsm
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



(provide :planner_msgs/PlannerFSM "17792b6358bfdffcd755358b31a0d229")


