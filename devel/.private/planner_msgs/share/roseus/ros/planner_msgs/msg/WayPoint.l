;; Auto-generated. Do not edit!


(when (boundp 'planner_msgs::WayPoint)
  (if (not (find-package "PLANNER_MSGS"))
    (make-package "PLANNER_MSGS"))
  (shadow 'WayPoint (find-package "PLANNER_MSGS")))
(unless (find-package "PLANNER_MSGS::WAYPOINT")
  (make-package "PLANNER_MSGS::WAYPOINT"))

(in-package "ROS")
;;//! \htmlinclude WayPoint.msg.html


(defclass planner_msgs::WayPoint
  :super ros::object
  :slots (_lock_down_index _aim_pt_index _x _y _z _roll _pitch _yaw _kalman_yawrate _kalman_vx _acceleration _steer _throttle_percentage _xbr _gear _left_light _right_light _air_beep _time_to_last_point _current_lat_error _flag_lock_down_index_offload ))

(defmethod planner_msgs::WayPoint
  (:init
   (&key
    ((:lock_down_index __lock_down_index) 0)
    ((:aim_pt_index __aim_pt_index) 0)
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:roll __roll) 0.0)
    ((:pitch __pitch) 0.0)
    ((:yaw __yaw) 0.0)
    ((:kalman_yawrate __kalman_yawrate) 0.0)
    ((:kalman_vx __kalman_vx) 0.0)
    ((:acceleration __acceleration) 0.0)
    ((:steer __steer) 0.0)
    ((:throttle_percentage __throttle_percentage) 0.0)
    ((:xbr __xbr) 0.0)
    ((:gear __gear) 0)
    ((:left_light __left_light) 0)
    ((:right_light __right_light) 0)
    ((:air_beep __air_beep) 0)
    ((:time_to_last_point __time_to_last_point) 0.0)
    ((:current_lat_error __current_lat_error) 0.0)
    ((:flag_lock_down_index_offload __flag_lock_down_index_offload) nil)
    )
   (send-super :init)
   (setq _lock_down_index (round __lock_down_index))
   (setq _aim_pt_index (round __aim_pt_index))
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _roll (float __roll))
   (setq _pitch (float __pitch))
   (setq _yaw (float __yaw))
   (setq _kalman_yawrate (float __kalman_yawrate))
   (setq _kalman_vx (float __kalman_vx))
   (setq _acceleration (float __acceleration))
   (setq _steer (float __steer))
   (setq _throttle_percentage (float __throttle_percentage))
   (setq _xbr (float __xbr))
   (setq _gear (round __gear))
   (setq _left_light (round __left_light))
   (setq _right_light (round __right_light))
   (setq _air_beep (round __air_beep))
   (setq _time_to_last_point (float __time_to_last_point))
   (setq _current_lat_error (float __current_lat_error))
   (setq _flag_lock_down_index_offload __flag_lock_down_index_offload)
   self)
  (:lock_down_index
   (&optional __lock_down_index)
   (if __lock_down_index (setq _lock_down_index __lock_down_index)) _lock_down_index)
  (:aim_pt_index
   (&optional __aim_pt_index)
   (if __aim_pt_index (setq _aim_pt_index __aim_pt_index)) _aim_pt_index)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:roll
   (&optional __roll)
   (if __roll (setq _roll __roll)) _roll)
  (:pitch
   (&optional __pitch)
   (if __pitch (setq _pitch __pitch)) _pitch)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:kalman_yawrate
   (&optional __kalman_yawrate)
   (if __kalman_yawrate (setq _kalman_yawrate __kalman_yawrate)) _kalman_yawrate)
  (:kalman_vx
   (&optional __kalman_vx)
   (if __kalman_vx (setq _kalman_vx __kalman_vx)) _kalman_vx)
  (:acceleration
   (&optional __acceleration)
   (if __acceleration (setq _acceleration __acceleration)) _acceleration)
  (:steer
   (&optional __steer)
   (if __steer (setq _steer __steer)) _steer)
  (:throttle_percentage
   (&optional __throttle_percentage)
   (if __throttle_percentage (setq _throttle_percentage __throttle_percentage)) _throttle_percentage)
  (:xbr
   (&optional __xbr)
   (if __xbr (setq _xbr __xbr)) _xbr)
  (:gear
   (&optional __gear)
   (if __gear (setq _gear __gear)) _gear)
  (:left_light
   (&optional __left_light)
   (if __left_light (setq _left_light __left_light)) _left_light)
  (:right_light
   (&optional __right_light)
   (if __right_light (setq _right_light __right_light)) _right_light)
  (:air_beep
   (&optional __air_beep)
   (if __air_beep (setq _air_beep __air_beep)) _air_beep)
  (:time_to_last_point
   (&optional __time_to_last_point)
   (if __time_to_last_point (setq _time_to_last_point __time_to_last_point)) _time_to_last_point)
  (:current_lat_error
   (&optional __current_lat_error)
   (if __current_lat_error (setq _current_lat_error __current_lat_error)) _current_lat_error)
  (:flag_lock_down_index_offload
   (&optional __flag_lock_down_index_offload)
   (if __flag_lock_down_index_offload (setq _flag_lock_down_index_offload __flag_lock_down_index_offload)) _flag_lock_down_index_offload)
  (:serialization-length
   ()
   (+
    ;; int32 _lock_down_index
    4
    ;; int32 _aim_pt_index
    4
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _z
    8
    ;; float64 _roll
    8
    ;; float64 _pitch
    8
    ;; float64 _yaw
    8
    ;; float64 _kalman_yawrate
    8
    ;; float64 _kalman_vx
    8
    ;; float64 _acceleration
    8
    ;; float64 _steer
    8
    ;; float64 _throttle_percentage
    8
    ;; float64 _xbr
    8
    ;; int8 _gear
    1
    ;; uint8 _left_light
    1
    ;; uint8 _right_light
    1
    ;; uint8 _air_beep
    1
    ;; float64 _time_to_last_point
    8
    ;; float64 _current_lat_error
    8
    ;; bool _flag_lock_down_index_offload
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _lock_down_index
       (write-long _lock_down_index s)
     ;; int32 _aim_pt_index
       (write-long _aim_pt_index s)
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _z
       (sys::poke _z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _roll
       (sys::poke _roll (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pitch
       (sys::poke _pitch (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _kalman_yawrate
       (sys::poke _kalman_yawrate (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _kalman_vx
       (sys::poke _kalman_vx (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _acceleration
       (sys::poke _acceleration (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _steer
       (sys::poke _steer (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _throttle_percentage
       (sys::poke _throttle_percentage (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _xbr
       (sys::poke _xbr (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int8 _gear
       (write-byte _gear s)
     ;; uint8 _left_light
       (write-byte _left_light s)
     ;; uint8 _right_light
       (write-byte _right_light s)
     ;; uint8 _air_beep
       (write-byte _air_beep s)
     ;; float64 _time_to_last_point
       (sys::poke _time_to_last_point (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _current_lat_error
       (sys::poke _current_lat_error (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _flag_lock_down_index_offload
       (if _flag_lock_down_index_offload (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _lock_down_index
     (setq _lock_down_index (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _aim_pt_index
     (setq _aim_pt_index (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _z
     (setq _z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _roll
     (setq _roll (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pitch
     (setq _pitch (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yaw
     (setq _yaw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _kalman_yawrate
     (setq _kalman_yawrate (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _kalman_vx
     (setq _kalman_vx (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _acceleration
     (setq _acceleration (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _steer
     (setq _steer (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _throttle_percentage
     (setq _throttle_percentage (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _xbr
     (setq _xbr (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int8 _gear
     (setq _gear (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _gear 127) (setq _gear (- _gear 256)))
   ;; uint8 _left_light
     (setq _left_light (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _right_light
     (setq _right_light (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _air_beep
     (setq _air_beep (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _time_to_last_point
     (setq _time_to_last_point (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _current_lat_error
     (setq _current_lat_error (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _flag_lock_down_index_offload
     (setq _flag_lock_down_index_offload (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get planner_msgs::WayPoint :md5sum-) "347035a0432cd4d05535eedeba88125a")
(setf (get planner_msgs::WayPoint :datatype-) "planner_msgs/WayPoint")
(setf (get planner_msgs::WayPoint :definition-)
      "# point has no Header

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



(provide :planner_msgs/WayPoint "347035a0432cd4d05535eedeba88125a")


