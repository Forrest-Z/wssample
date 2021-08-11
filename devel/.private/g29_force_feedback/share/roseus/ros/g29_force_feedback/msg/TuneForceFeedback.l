;; Auto-generated. Do not edit!


(when (boundp 'g29_force_feedback::TuneForceFeedback)
  (if (not (find-package "G29_FORCE_FEEDBACK"))
    (make-package "G29_FORCE_FEEDBACK"))
  (shadow 'TuneForceFeedback (find-package "G29_FORCE_FEEDBACK")))
(unless (find-package "G29_FORCE_FEEDBACK::TUNEFORCEFEEDBACK")
  (make-package "G29_FORCE_FEEDBACK::TUNEFORCEFEEDBACK"))

(in-package "ROS")
;;//! \htmlinclude TuneForceFeedback.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass g29_force_feedback::TuneForceFeedback
  :super ros::object
  :slots (_header _calforce _finalforce _pforce _iforce _dforce _error _current_angle _derror ))

(defmethod g29_force_feedback::TuneForceFeedback
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:calforce __calforce) 0.0)
    ((:finalforce __finalforce) 0.0)
    ((:pforce __pforce) 0.0)
    ((:iforce __iforce) 0.0)
    ((:dforce __dforce) 0.0)
    ((:error __error) 0.0)
    ((:current_angle __current_angle) 0.0)
    ((:derror __derror) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _calforce (float __calforce))
   (setq _finalforce (float __finalforce))
   (setq _pforce (float __pforce))
   (setq _iforce (float __iforce))
   (setq _dforce (float __dforce))
   (setq _error (float __error))
   (setq _current_angle (float __current_angle))
   (setq _derror (float __derror))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:calforce
   (&optional __calforce)
   (if __calforce (setq _calforce __calforce)) _calforce)
  (:finalforce
   (&optional __finalforce)
   (if __finalforce (setq _finalforce __finalforce)) _finalforce)
  (:pforce
   (&optional __pforce)
   (if __pforce (setq _pforce __pforce)) _pforce)
  (:iforce
   (&optional __iforce)
   (if __iforce (setq _iforce __iforce)) _iforce)
  (:dforce
   (&optional __dforce)
   (if __dforce (setq _dforce __dforce)) _dforce)
  (:error
   (&optional __error)
   (if __error (setq _error __error)) _error)
  (:current_angle
   (&optional __current_angle)
   (if __current_angle (setq _current_angle __current_angle)) _current_angle)
  (:derror
   (&optional __derror)
   (if __derror (setq _derror __derror)) _derror)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _calforce
    8
    ;; float64 _finalforce
    8
    ;; float64 _pforce
    8
    ;; float64 _iforce
    8
    ;; float64 _dforce
    8
    ;; float64 _error
    8
    ;; float64 _current_angle
    8
    ;; float64 _derror
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _calforce
       (sys::poke _calforce (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _finalforce
       (sys::poke _finalforce (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pforce
       (sys::poke _pforce (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _iforce
       (sys::poke _iforce (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _dforce
       (sys::poke _dforce (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _error
       (sys::poke _error (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _current_angle
       (sys::poke _current_angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _derror
       (sys::poke _derror (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _calforce
     (setq _calforce (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _finalforce
     (setq _finalforce (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pforce
     (setq _pforce (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _iforce
     (setq _iforce (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _dforce
     (setq _dforce (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _error
     (setq _error (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _current_angle
     (setq _current_angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _derror
     (setq _derror (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get g29_force_feedback::TuneForceFeedback :md5sum-) "73b36ed61cebe17e58dd228f2395a9f7")
(setf (get g29_force_feedback::TuneForceFeedback :datatype-) "g29_force_feedback/TuneForceFeedback")
(setf (get g29_force_feedback::TuneForceFeedback :definition-)
      "std_msgs/Header header
float64 calforce
float64 finalforce
float64 pforce
float64 iforce
float64 dforce
float64 error
float64 current_angle
float64 derror
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



(provide :g29_force_feedback/TuneForceFeedback "73b36ed61cebe17e58dd228f2395a9f7")


