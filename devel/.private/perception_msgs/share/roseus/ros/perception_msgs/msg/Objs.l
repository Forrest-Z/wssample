;; Auto-generated. Do not edit!


(when (boundp 'perception_msgs::Objs)
  (if (not (find-package "PERCEPTION_MSGS"))
    (make-package "PERCEPTION_MSGS"))
  (shadow 'Objs (find-package "PERCEPTION_MSGS")))
(unless (find-package "PERCEPTION_MSGS::OBJS")
  (make-package "PERCEPTION_MSGS::OBJS"))

(in-package "ROS")
;;//! \htmlinclude Objs.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass perception_msgs::Objs
  :super ros::object
  :slots (_header _objs ))

(defmethod perception_msgs::Objs
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:objs __objs) (let (r) (dotimes (i 0) (push (instance perception_msgs::Obj :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _objs __objs)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:objs
   (&rest __objs)
   (if (keywordp (car __objs))
       (send* _objs __objs)
     (progn
       (if __objs (setq _objs (car __objs)))
       _objs)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; perception_msgs/Obj[] _objs
    (apply #'+ (send-all _objs :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; perception_msgs/Obj[] _objs
     (write-long (length _objs) s)
     (dolist (elem _objs)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; perception_msgs/Obj[] _objs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _objs (let (r) (dotimes (i n) (push (instance perception_msgs::Obj :init) r)) r))
     (dolist (elem- _objs)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get perception_msgs::Objs :md5sum-) "d41aae8b6289d3d5c6019e425ce539df")
(setf (get perception_msgs::Objs :datatype-) "perception_msgs/Objs")
(setf (get perception_msgs::Objs :definition-)
      "Header header

Obj[] objs
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
MSG: perception_msgs/Obj
int32 id

float32 confidence
int32 age
int32 left_time

geometry_msgs/Point32 left_bottom
geometry_msgs/Point32 right_bottom
geometry_msgs/Point32 left_top
geometry_msgs/Point32 right_top

# v north, east, to ground
float32 v_north
float32 v_east
float32 v_ground
================================================================================
MSG: geometry_msgs/Point32
# This contains the position of a point in free space(with 32 bits of precision).
# It is recommeded to use Point wherever possible instead of Point32.  
# 
# This recommendation is to promote interoperability.  
#
# This message is designed to take up less space when sending
# lots of points at once, as in the case of a PointCloud.  

float32 x
float32 y
float32 z
")



(provide :perception_msgs/Objs "d41aae8b6289d3d5c6019e425ce539df")


