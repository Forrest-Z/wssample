;; Auto-generated. Do not edit!


(when (boundp 'g29_teledrive_msgs::G29_teledrive)
  (if (not (find-package "G29_TELEDRIVE_MSGS"))
    (make-package "G29_TELEDRIVE_MSGS"))
  (shadow 'G29_teledrive (find-package "G29_TELEDRIVE_MSGS")))
(unless (find-package "G29_TELEDRIVE_MSGS::G29_TELEDRIVE")
  (make-package "G29_TELEDRIVE_MSGS::G29_TELEDRIVE"))

(in-package "ROS")
;;//! \htmlinclude G29_teledrive.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass g29_teledrive_msgs::G29_teledrive
  :super ros::object
  :slots (_header _steer _throttle _xbr _hang _epb _gear ))

(defmethod g29_teledrive_msgs::G29_teledrive
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:steer __steer) 0.0)
    ((:throttle __throttle) 0.0)
    ((:xbr __xbr) 0.0)
    ((:hang __hang) 0.0)
    ((:epb __epb) 0)
    ((:gear __gear) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _steer (float __steer))
   (setq _throttle (float __throttle))
   (setq _xbr (float __xbr))
   (setq _hang (float __hang))
   (setq _epb (round __epb))
   (setq _gear (round __gear))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:steer
   (&optional __steer)
   (if __steer (setq _steer __steer)) _steer)
  (:throttle
   (&optional __throttle)
   (if __throttle (setq _throttle __throttle)) _throttle)
  (:xbr
   (&optional __xbr)
   (if __xbr (setq _xbr __xbr)) _xbr)
  (:hang
   (&optional __hang)
   (if __hang (setq _hang __hang)) _hang)
  (:epb
   (&optional __epb)
   (if __epb (setq _epb __epb)) _epb)
  (:gear
   (&optional __gear)
   (if __gear (setq _gear __gear)) _gear)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _steer
    8
    ;; float64 _throttle
    8
    ;; float64 _xbr
    8
    ;; float64 _hang
    8
    ;; int8 _epb
    1
    ;; int8 _gear
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _steer
       (sys::poke _steer (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _throttle
       (sys::poke _throttle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _xbr
       (sys::poke _xbr (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _hang
       (sys::poke _hang (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int8 _epb
       (write-byte _epb s)
     ;; int8 _gear
       (write-byte _gear s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _steer
     (setq _steer (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _throttle
     (setq _throttle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _xbr
     (setq _xbr (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _hang
     (setq _hang (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int8 _epb
     (setq _epb (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _epb 127) (setq _epb (- _epb 256)))
   ;; int8 _gear
     (setq _gear (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _gear 127) (setq _gear (- _gear 256)))
   ;;
   self)
  )

(setf (get g29_teledrive_msgs::G29_teledrive :md5sum-) "499a726284cbe0d6a1daa981a1060bff")
(setf (get g29_teledrive_msgs::G29_teledrive :datatype-) "g29_teledrive_msgs/G29_teledrive")
(setf (get g29_teledrive_msgs::G29_teledrive :definition-)
      "Header header

float64 steer
float64 throttle
float64 xbr
float64 hang
int8 epb
int8 gear

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



(provide :g29_teledrive_msgs/G29_teledrive "499a726284cbe0d6a1daa981a1060bff")


