;; Auto-generated. Do not edit!


(when (boundp 'tli65_can_msgs::RxHands)
  (if (not (find-package "TLI65_CAN_MSGS"))
    (make-package "TLI65_CAN_MSGS"))
  (shadow 'RxHands (find-package "TLI65_CAN_MSGS")))
(unless (find-package "TLI65_CAN_MSGS::RXHANDS")
  (make-package "TLI65_CAN_MSGS::RXHANDS"))

(in-package "ROS")
;;//! \htmlinclude RxHands.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass tli65_can_msgs::RxHands
  :super ros::object
  :slots (_header _shake_hands ))

(defmethod tli65_can_msgs::RxHands
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:shake_hands __shake_hands) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _shake_hands (string __shake_hands))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:shake_hands
   (&optional __shake_hands)
   (if __shake_hands (setq _shake_hands __shake_hands)) _shake_hands)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _shake_hands
    4 (length _shake_hands)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _shake_hands
       (write-long (length _shake_hands) s) (princ _shake_hands s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _shake_hands
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _shake_hands (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get tli65_can_msgs::RxHands :md5sum-) "0d67e1825abc26179d982f84d634df4a")
(setf (get tli65_can_msgs::RxHands :datatype-) "tli65_can_msgs/RxHands")
(setf (get tli65_can_msgs::RxHands :definition-)
      "Header header

string shake_hands
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



(provide :tli65_can_msgs/RxHands "0d67e1825abc26179d982f84d634df4a")


