;; Auto-generated. Do not edit!


(when (boundp 'decider_msgs::Decider)
  (if (not (find-package "DECIDER_MSGS"))
    (make-package "DECIDER_MSGS"))
  (shadow 'Decider (find-package "DECIDER_MSGS")))
(unless (find-package "DECIDER_MSGS::DECIDER")
  (make-package "DECIDER_MSGS::DECIDER"))

(in-package "ROS")
;;//! \htmlinclude Decider.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass decider_msgs::Decider
  :super ros::object
  :slots (_header _lat_strategy _long_strategy ))

(defmethod decider_msgs::Decider
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:lat_strategy __lat_strategy) "")
    ((:long_strategy __long_strategy) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _lat_strategy (string __lat_strategy))
   (setq _long_strategy (string __long_strategy))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:lat_strategy
   (&optional __lat_strategy)
   (if __lat_strategy (setq _lat_strategy __lat_strategy)) _lat_strategy)
  (:long_strategy
   (&optional __long_strategy)
   (if __long_strategy (setq _long_strategy __long_strategy)) _long_strategy)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _lat_strategy
    4 (length _lat_strategy)
    ;; string _long_strategy
    4 (length _long_strategy)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _lat_strategy
       (write-long (length _lat_strategy) s) (princ _lat_strategy s)
     ;; string _long_strategy
       (write-long (length _long_strategy) s) (princ _long_strategy s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _lat_strategy
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _lat_strategy (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _long_strategy
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _long_strategy (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get decider_msgs::Decider :md5sum-) "1e2a07bec75f3a1794cd39cc03b4fbee")
(setf (get decider_msgs::Decider :datatype-) "decider_msgs/Decider")
(setf (get decider_msgs::Decider :definition-)
      "Header header

string lat_strategy
string long_strategy
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



(provide :decider_msgs/Decider "1e2a07bec75f3a1794cd39cc03b4fbee")


