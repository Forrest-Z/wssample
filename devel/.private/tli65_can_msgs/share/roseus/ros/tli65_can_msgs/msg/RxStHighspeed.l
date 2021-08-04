;; Auto-generated. Do not edit!


(when (boundp 'tli65_can_msgs::RxStHighspeed)
  (if (not (find-package "TLI65_CAN_MSGS"))
    (make-package "TLI65_CAN_MSGS"))
  (shadow 'RxStHighspeed (find-package "TLI65_CAN_MSGS")))
(unless (find-package "TLI65_CAN_MSGS::RXSTHIGHSPEED")
  (make-package "TLI65_CAN_MSGS::RXSTHIGHSPEED"))

(in-package "ROS")
;;//! \htmlinclude RxStHighspeed.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass tli65_can_msgs::RxStHighspeed
  :super ros::object
  :slots (_header _throttle_pedal_pos _engine_torque_percentage _engine_speed _actual_throttle_pedal_pos _brake_pedal_pos _retarder_torque_percentage _steer_angle _electric_steer_torque _steer_angle_rate _speed_from_gear _gear_active _max_forward_gear _gear ))

(defmethod tli65_can_msgs::RxStHighspeed
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:throttle_pedal_pos __throttle_pedal_pos) 0)
    ((:engine_torque_percentage __engine_torque_percentage) 0)
    ((:engine_speed __engine_speed) 0)
    ((:actual_throttle_pedal_pos __actual_throttle_pedal_pos) 0)
    ((:brake_pedal_pos __brake_pedal_pos) 0)
    ((:retarder_torque_percentage __retarder_torque_percentage) 0)
    ((:steer_angle __steer_angle) 0)
    ((:electric_steer_torque __electric_steer_torque) 0)
    ((:steer_angle_rate __steer_angle_rate) 0)
    ((:speed_from_gear __speed_from_gear) 0.0)
    ((:gear_active __gear_active) 0)
    ((:max_forward_gear __max_forward_gear) 0)
    ((:gear __gear) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _throttle_pedal_pos (round __throttle_pedal_pos))
   (setq _engine_torque_percentage (round __engine_torque_percentage))
   (setq _engine_speed (round __engine_speed))
   (setq _actual_throttle_pedal_pos (round __actual_throttle_pedal_pos))
   (setq _brake_pedal_pos (round __brake_pedal_pos))
   (setq _retarder_torque_percentage (round __retarder_torque_percentage))
   (setq _steer_angle (round __steer_angle))
   (setq _electric_steer_torque (round __electric_steer_torque))
   (setq _steer_angle_rate (round __steer_angle_rate))
   (setq _speed_from_gear (float __speed_from_gear))
   (setq _gear_active (round __gear_active))
   (setq _max_forward_gear (round __max_forward_gear))
   (setq _gear (round __gear))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:throttle_pedal_pos
   (&optional __throttle_pedal_pos)
   (if __throttle_pedal_pos (setq _throttle_pedal_pos __throttle_pedal_pos)) _throttle_pedal_pos)
  (:engine_torque_percentage
   (&optional __engine_torque_percentage)
   (if __engine_torque_percentage (setq _engine_torque_percentage __engine_torque_percentage)) _engine_torque_percentage)
  (:engine_speed
   (&optional __engine_speed)
   (if __engine_speed (setq _engine_speed __engine_speed)) _engine_speed)
  (:actual_throttle_pedal_pos
   (&optional __actual_throttle_pedal_pos)
   (if __actual_throttle_pedal_pos (setq _actual_throttle_pedal_pos __actual_throttle_pedal_pos)) _actual_throttle_pedal_pos)
  (:brake_pedal_pos
   (&optional __brake_pedal_pos)
   (if __brake_pedal_pos (setq _brake_pedal_pos __brake_pedal_pos)) _brake_pedal_pos)
  (:retarder_torque_percentage
   (&optional __retarder_torque_percentage)
   (if __retarder_torque_percentage (setq _retarder_torque_percentage __retarder_torque_percentage)) _retarder_torque_percentage)
  (:steer_angle
   (&optional __steer_angle)
   (if __steer_angle (setq _steer_angle __steer_angle)) _steer_angle)
  (:electric_steer_torque
   (&optional __electric_steer_torque)
   (if __electric_steer_torque (setq _electric_steer_torque __electric_steer_torque)) _electric_steer_torque)
  (:steer_angle_rate
   (&optional __steer_angle_rate)
   (if __steer_angle_rate (setq _steer_angle_rate __steer_angle_rate)) _steer_angle_rate)
  (:speed_from_gear
   (&optional __speed_from_gear)
   (if __speed_from_gear (setq _speed_from_gear __speed_from_gear)) _speed_from_gear)
  (:gear_active
   (&optional __gear_active)
   (if __gear_active (setq _gear_active __gear_active)) _gear_active)
  (:max_forward_gear
   (&optional __max_forward_gear)
   (if __max_forward_gear (setq _max_forward_gear __max_forward_gear)) _max_forward_gear)
  (:gear
   (&optional __gear)
   (if __gear (setq _gear __gear)) _gear)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int8 _throttle_pedal_pos
    1
    ;; int8 _engine_torque_percentage
    1
    ;; int32 _engine_speed
    4
    ;; int8 _actual_throttle_pedal_pos
    1
    ;; int8 _brake_pedal_pos
    1
    ;; int8 _retarder_torque_percentage
    1
    ;; int32 _steer_angle
    4
    ;; int32 _electric_steer_torque
    4
    ;; int32 _steer_angle_rate
    4
    ;; float64 _speed_from_gear
    8
    ;; uint8 _gear_active
    1
    ;; int8 _max_forward_gear
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
     ;; int8 _throttle_pedal_pos
       (write-byte _throttle_pedal_pos s)
     ;; int8 _engine_torque_percentage
       (write-byte _engine_torque_percentage s)
     ;; int32 _engine_speed
       (write-long _engine_speed s)
     ;; int8 _actual_throttle_pedal_pos
       (write-byte _actual_throttle_pedal_pos s)
     ;; int8 _brake_pedal_pos
       (write-byte _brake_pedal_pos s)
     ;; int8 _retarder_torque_percentage
       (write-byte _retarder_torque_percentage s)
     ;; int32 _steer_angle
       (write-long _steer_angle s)
     ;; int32 _electric_steer_torque
       (write-long _electric_steer_torque s)
     ;; int32 _steer_angle_rate
       (write-long _steer_angle_rate s)
     ;; float64 _speed_from_gear
       (sys::poke _speed_from_gear (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _gear_active
       (write-byte _gear_active s)
     ;; int8 _max_forward_gear
       (write-byte _max_forward_gear s)
     ;; int8 _gear
       (write-byte _gear s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int8 _throttle_pedal_pos
     (setq _throttle_pedal_pos (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _throttle_pedal_pos 127) (setq _throttle_pedal_pos (- _throttle_pedal_pos 256)))
   ;; int8 _engine_torque_percentage
     (setq _engine_torque_percentage (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _engine_torque_percentage 127) (setq _engine_torque_percentage (- _engine_torque_percentage 256)))
   ;; int32 _engine_speed
     (setq _engine_speed (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int8 _actual_throttle_pedal_pos
     (setq _actual_throttle_pedal_pos (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _actual_throttle_pedal_pos 127) (setq _actual_throttle_pedal_pos (- _actual_throttle_pedal_pos 256)))
   ;; int8 _brake_pedal_pos
     (setq _brake_pedal_pos (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _brake_pedal_pos 127) (setq _brake_pedal_pos (- _brake_pedal_pos 256)))
   ;; int8 _retarder_torque_percentage
     (setq _retarder_torque_percentage (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _retarder_torque_percentage 127) (setq _retarder_torque_percentage (- _retarder_torque_percentage 256)))
   ;; int32 _steer_angle
     (setq _steer_angle (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _electric_steer_torque
     (setq _electric_steer_torque (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _steer_angle_rate
     (setq _steer_angle_rate (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _speed_from_gear
     (setq _speed_from_gear (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _gear_active
     (setq _gear_active (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int8 _max_forward_gear
     (setq _max_forward_gear (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _max_forward_gear 127) (setq _max_forward_gear (- _max_forward_gear 256)))
   ;; int8 _gear
     (setq _gear (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _gear 127) (setq _gear (- _gear 256)))
   ;;
   self)
  )

(setf (get tli65_can_msgs::RxStHighspeed :md5sum-) "d6667d21888a890c2ee6ca8cc4b0a4e9")
(setf (get tli65_can_msgs::RxStHighspeed :datatype-) "tli65_can_msgs/RxStHighspeed")
(setf (get tli65_can_msgs::RxStHighspeed :definition-)
      "Header header

int8 throttle_pedal_pos
int8 engine_torque_percentage
int32 engine_speed
int8 actual_throttle_pedal_pos
int8 brake_pedal_pos
int8 retarder_torque_percentage
int32 steer_angle
int32 electric_steer_torque
int32 steer_angle_rate
float64 speed_from_gear
uint8 gear_active
int8 max_forward_gear
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



(provide :tli65_can_msgs/RxStHighspeed "d6667d21888a890c2ee6ca8cc4b0a4e9")


