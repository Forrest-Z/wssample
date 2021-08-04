;; Auto-generated. Do not edit!


(when (boundp 'g29_force_feedback::ForceFeedback)
  (if (not (find-package "G29_FORCE_FEEDBACK"))
    (make-package "G29_FORCE_FEEDBACK"))
  (shadow 'ForceFeedback (find-package "G29_FORCE_FEEDBACK")))
(unless (find-package "G29_FORCE_FEEDBACK::FORCEFEEDBACK")
  (make-package "G29_FORCE_FEEDBACK::FORCEFEEDBACK"))

(in-package "ROS")
;;//! \htmlinclude ForceFeedback.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass g29_force_feedback::ForceFeedback
  :super ros::object
  :slots (_header _angle _force _pid_mode ))

(defmethod g29_force_feedback::ForceFeedback
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:angle __angle) 0.0)
    ((:force __force) 0.0)
    ((:pid_mode __pid_mode) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _angle (float __angle))
   (setq _force (float __force))
   (setq _pid_mode __pid_mode)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:force
   (&optional __force)
   (if __force (setq _force __force)) _force)
  (:pid_mode
   (&optional __pid_mode)
   (if __pid_mode (setq _pid_mode __pid_mode)) _pid_mode)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _angle
    4
    ;; float32 _force
    4
    ;; bool _pid_mode
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _angle
       (sys::poke _angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _force
       (sys::poke _force (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _pid_mode
       (if _pid_mode (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _angle
     (setq _angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _force
     (setq _force (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _pid_mode
     (setq _pid_mode (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get g29_force_feedback::ForceFeedback :md5sum-) "fb014a30f774bc7e39f4d28ab88f6b28")
(setf (get g29_force_feedback::ForceFeedback :datatype-) "g29_force_feedback/ForceFeedback")
(setf (get g29_force_feedback::ForceFeedback :definition-)
      "std_msgs/Header header
float32 angle
float32 force
bool pid_mode

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



(provide :g29_force_feedback/ForceFeedback "fb014a30f774bc7e39f4d28ab88f6b28")


