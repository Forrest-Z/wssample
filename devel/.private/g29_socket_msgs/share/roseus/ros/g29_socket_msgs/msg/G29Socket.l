;; Auto-generated. Do not edit!


(when (boundp 'g29_socket_msgs::G29Socket)
  (if (not (find-package "G29_SOCKET_MSGS"))
    (make-package "G29_SOCKET_MSGS"))
  (shadow 'G29Socket (find-package "G29_SOCKET_MSGS")))
(unless (find-package "G29_SOCKET_MSGS::G29SOCKET")
  (make-package "G29_SOCKET_MSGS::G29SOCKET"))

(in-package "ROS")
;;//! \htmlinclude G29Socket.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass g29_socket_msgs::G29Socket
  :super ros::object
  :slots (_header _axes _buttons _connect ))

(defmethod g29_socket_msgs::G29Socket
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:axes __axes) (make-array 6 :initial-element 0.0 :element-type :float))
    ((:buttons __buttons) (make-array 25 :initial-element 0.0 :element-type :float))
    ((:connect __connect) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _axes __axes)
   (setq _buttons __buttons)
   (setq _connect __connect)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:axes
   (&optional __axes)
   (if __axes (setq _axes __axes)) _axes)
  (:buttons
   (&optional __buttons)
   (if __buttons (setq _buttons __buttons)) _buttons)
  (:connect
   (&optional __connect)
   (if __connect (setq _connect __connect)) _connect)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64[6] _axes
    (* 8    6)
    ;; float64[25] _buttons
    (* 8    25)
    ;; bool _connect
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64[6] _axes
     (dotimes (i 6)
       (sys::poke (elt _axes i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[25] _buttons
     (dotimes (i 25)
       (sys::poke (elt _buttons i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; bool _connect
       (if _connect (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64[6] _axes
   (dotimes (i (length _axes))
     (setf (elt _axes i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[25] _buttons
   (dotimes (i (length _buttons))
     (setf (elt _buttons i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; bool _connect
     (setq _connect (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get g29_socket_msgs::G29Socket :md5sum-) "db2ca71d5047b4c31b84cebca554669d")
(setf (get g29_socket_msgs::G29Socket :datatype-) "g29_socket_msgs/G29Socket")
(setf (get g29_socket_msgs::G29Socket :definition-)
      "Header header

float64[6] axes
float64[25] buttons

bool connect
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



(provide :g29_socket_msgs/G29Socket "db2ca71d5047b4c31b84cebca554669d")


