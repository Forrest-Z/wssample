;; Auto-generated. Do not edit!


(when (boundp 'control_msgs::ControlFSM)
  (if (not (find-package "CONTROL_MSGS"))
    (make-package "CONTROL_MSGS"))
  (shadow 'ControlFSM (find-package "CONTROL_MSGS")))
(unless (find-package "CONTROL_MSGS::CONTROLFSM")
  (make-package "CONTROL_MSGS::CONTROLFSM"))

(in-package "ROS")
;;//! \htmlinclude ControlFSM.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass control_msgs::ControlFSM
  :super ros::object
  :slots (_header _control_fsm _last_control_fsm _flag_follow_tracks_plannerON _gear _planner_fsm ))

(defmethod control_msgs::ControlFSM
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:control_fsm __control_fsm) 0)
    ((:last_control_fsm __last_control_fsm) 0)
    ((:flag_follow_tracks_plannerON __flag_follow_tracks_plannerON) nil)
    ((:gear __gear) 0)
    ((:planner_fsm __planner_fsm) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _control_fsm (round __control_fsm))
   (setq _last_control_fsm (round __last_control_fsm))
   (setq _flag_follow_tracks_plannerON __flag_follow_tracks_plannerON)
   (setq _gear (round __gear))
   (setq _planner_fsm (round __planner_fsm))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:control_fsm
   (&optional __control_fsm)
   (if __control_fsm (setq _control_fsm __control_fsm)) _control_fsm)
  (:last_control_fsm
   (&optional __last_control_fsm)
   (if __last_control_fsm (setq _last_control_fsm __last_control_fsm)) _last_control_fsm)
  (:flag_follow_tracks_plannerON
   (&optional __flag_follow_tracks_plannerON)
   (if __flag_follow_tracks_plannerON (setq _flag_follow_tracks_plannerON __flag_follow_tracks_plannerON)) _flag_follow_tracks_plannerON)
  (:gear
   (&optional __gear)
   (if __gear (setq _gear __gear)) _gear)
  (:planner_fsm
   (&optional __planner_fsm)
   (if __planner_fsm (setq _planner_fsm __planner_fsm)) _planner_fsm)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _control_fsm
    4
    ;; int32 _last_control_fsm
    4
    ;; bool _flag_follow_tracks_plannerON
    1
    ;; int32 _gear
    4
    ;; int32 _planner_fsm
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _control_fsm
       (write-long _control_fsm s)
     ;; int32 _last_control_fsm
       (write-long _last_control_fsm s)
     ;; bool _flag_follow_tracks_plannerON
       (if _flag_follow_tracks_plannerON (write-byte -1 s) (write-byte 0 s))
     ;; int32 _gear
       (write-long _gear s)
     ;; int32 _planner_fsm
       (write-long _planner_fsm s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _control_fsm
     (setq _control_fsm (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _last_control_fsm
     (setq _last_control_fsm (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _flag_follow_tracks_plannerON
     (setq _flag_follow_tracks_plannerON (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _gear
     (setq _gear (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _planner_fsm
     (setq _planner_fsm (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get control_msgs::ControlFSM :md5sum-) "03aa97f9d8b6f93933703b58d329f026")
(setf (get control_msgs::ControlFSM :datatype-) "control_msgs/ControlFSM")
(setf (get control_msgs::ControlFSM :definition-)
      "Header header

int32 control_fsm
int32 last_control_fsm
bool flag_follow_tracks_plannerON
int32 gear
int32 planner_fsm
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



(provide :control_msgs/ControlFSM "03aa97f9d8b6f93933703b58d329f026")


