;; Auto-generated. Do not edit!


(when (boundp 'planner_msgs::WayPoints)
  (if (not (find-package "PLANNER_MSGS"))
    (make-package "PLANNER_MSGS"))
  (shadow 'WayPoints (find-package "PLANNER_MSGS")))
(unless (find-package "PLANNER_MSGS::WAYPOINTS")
  (make-package "PLANNER_MSGS::WAYPOINTS"))

(in-package "ROS")
;;//! \htmlinclude WayPoints.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass planner_msgs::WayPoints
  :super ros::object
  :slots (_header _coord_type _control_type _planner_fsm _points ))

(defmethod planner_msgs::WayPoints
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:coord_type __coord_type) "")
    ((:control_type __control_type) "")
    ((:planner_fsm __planner_fsm) "")
    ((:points __points) (let (r) (dotimes (i 0) (push (instance planner_msgs::WayPoint :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _coord_type (string __coord_type))
   (setq _control_type (string __control_type))
   (setq _planner_fsm (string __planner_fsm))
   (setq _points __points)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:coord_type
   (&optional __coord_type)
   (if __coord_type (setq _coord_type __coord_type)) _coord_type)
  (:control_type
   (&optional __control_type)
   (if __control_type (setq _control_type __control_type)) _control_type)
  (:planner_fsm
   (&optional __planner_fsm)
   (if __planner_fsm (setq _planner_fsm __planner_fsm)) _planner_fsm)
  (:points
   (&rest __points)
   (if (keywordp (car __points))
       (send* _points __points)
     (progn
       (if __points (setq _points (car __points)))
       _points)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _coord_type
    4 (length _coord_type)
    ;; string _control_type
    4 (length _control_type)
    ;; string _planner_fsm
    4 (length _planner_fsm)
    ;; planner_msgs/WayPoint[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _coord_type
       (write-long (length _coord_type) s) (princ _coord_type s)
     ;; string _control_type
       (write-long (length _control_type) s) (princ _control_type s)
     ;; string _planner_fsm
       (write-long (length _planner_fsm) s) (princ _planner_fsm s)
     ;; planner_msgs/WayPoint[] _points
     (write-long (length _points) s)
     (dolist (elem _points)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _coord_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _coord_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _control_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _control_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _planner_fsm
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _planner_fsm (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; planner_msgs/WayPoint[] _points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points (let (r) (dotimes (i n) (push (instance planner_msgs::WayPoint :init) r)) r))
     (dolist (elem- _points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get planner_msgs::WayPoints :md5sum-) "573e1dc003839203bc6a8d30ca76058b")
(setf (get planner_msgs::WayPoints :datatype-) "planner_msgs/WayPoints")
(setf (get planner_msgs::WayPoints :definition-)
      "Header header

# all of the waypoints are in ego coordinate system
# coord_type = \"ego\"
# track use enu, and is sended to rviz
# coord_type = \"enu\"
string coord_type

# teledrive
# follow_tracks
string control_type

string planner_fsm

WayPoint[] points
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

================================================================================
MSG: planner_msgs/WayPoint
# point has no Header

int32 lock_down_index
int32 aim_pt_index

float64 x
float64 y 
float64 z

float64 roll
float64 pitch
float64 yaw
float64 kalman_yawrate

float64 kalman_vx
float64 acceleration

# teledrive, share gear, xbr
float64 steer
float64 throttle_percentage
float64 xbr
int8 gear

uint8 left_light
uint8 right_light
#uint8 emergency_light
uint8 air_beep

float64 time_to_last_point
float64 current_lat_error
bool flag_lock_down_index_offload
")



(provide :planner_msgs/WayPoints "573e1dc003839203bc6a8d30ca76058b")


