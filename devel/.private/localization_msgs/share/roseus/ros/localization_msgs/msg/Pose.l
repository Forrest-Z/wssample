;; Auto-generated. Do not edit!


(when (boundp 'localization_msgs::Pose)
  (if (not (find-package "LOCALIZATION_MSGS"))
    (make-package "LOCALIZATION_MSGS"))
  (shadow 'Pose (find-package "LOCALIZATION_MSGS")))
(unless (find-package "LOCALIZATION_MSGS::POSE")
  (make-package "LOCALIZATION_MSGS::POSE"))

(in-package "ROS")
;;//! \htmlinclude Pose.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass localization_msgs::Pose
  :super ros::object
  :slots (_header _rtk_state _lat _lng _alt _latlng_std _x_enu _y_enu _z_enu _xy_std_enu _vx_ego _vy_ego _vz_ego _speed _ax_ego _ay_ego _az_ego _roll _pitch _yaw _yaw_rate _orientation ))

(defmethod localization_msgs::Pose
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:rtk_state __rtk_state) 0)
    ((:lat __lat) 0.0)
    ((:lng __lng) 0.0)
    ((:alt __alt) 0.0)
    ((:latlng_std __latlng_std) 0.0)
    ((:x_enu __x_enu) 0.0)
    ((:y_enu __y_enu) 0.0)
    ((:z_enu __z_enu) 0.0)
    ((:xy_std_enu __xy_std_enu) 0.0)
    ((:vx_ego __vx_ego) 0.0)
    ((:vy_ego __vy_ego) 0.0)
    ((:vz_ego __vz_ego) 0.0)
    ((:speed __speed) 0.0)
    ((:ax_ego __ax_ego) 0.0)
    ((:ay_ego __ay_ego) 0.0)
    ((:az_ego __az_ego) 0.0)
    ((:roll __roll) 0.0)
    ((:pitch __pitch) 0.0)
    ((:yaw __yaw) 0.0)
    ((:yaw_rate __yaw_rate) 0.0)
    ((:orientation __orientation) (instance geometry_msgs::Quaternion :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _rtk_state (round __rtk_state))
   (setq _lat (float __lat))
   (setq _lng (float __lng))
   (setq _alt (float __alt))
   (setq _latlng_std (float __latlng_std))
   (setq _x_enu (float __x_enu))
   (setq _y_enu (float __y_enu))
   (setq _z_enu (float __z_enu))
   (setq _xy_std_enu (float __xy_std_enu))
   (setq _vx_ego (float __vx_ego))
   (setq _vy_ego (float __vy_ego))
   (setq _vz_ego (float __vz_ego))
   (setq _speed (float __speed))
   (setq _ax_ego (float __ax_ego))
   (setq _ay_ego (float __ay_ego))
   (setq _az_ego (float __az_ego))
   (setq _roll (float __roll))
   (setq _pitch (float __pitch))
   (setq _yaw (float __yaw))
   (setq _yaw_rate (float __yaw_rate))
   (setq _orientation __orientation)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:rtk_state
   (&optional __rtk_state)
   (if __rtk_state (setq _rtk_state __rtk_state)) _rtk_state)
  (:lat
   (&optional __lat)
   (if __lat (setq _lat __lat)) _lat)
  (:lng
   (&optional __lng)
   (if __lng (setq _lng __lng)) _lng)
  (:alt
   (&optional __alt)
   (if __alt (setq _alt __alt)) _alt)
  (:latlng_std
   (&optional __latlng_std)
   (if __latlng_std (setq _latlng_std __latlng_std)) _latlng_std)
  (:x_enu
   (&optional __x_enu)
   (if __x_enu (setq _x_enu __x_enu)) _x_enu)
  (:y_enu
   (&optional __y_enu)
   (if __y_enu (setq _y_enu __y_enu)) _y_enu)
  (:z_enu
   (&optional __z_enu)
   (if __z_enu (setq _z_enu __z_enu)) _z_enu)
  (:xy_std_enu
   (&optional __xy_std_enu)
   (if __xy_std_enu (setq _xy_std_enu __xy_std_enu)) _xy_std_enu)
  (:vx_ego
   (&optional __vx_ego)
   (if __vx_ego (setq _vx_ego __vx_ego)) _vx_ego)
  (:vy_ego
   (&optional __vy_ego)
   (if __vy_ego (setq _vy_ego __vy_ego)) _vy_ego)
  (:vz_ego
   (&optional __vz_ego)
   (if __vz_ego (setq _vz_ego __vz_ego)) _vz_ego)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:ax_ego
   (&optional __ax_ego)
   (if __ax_ego (setq _ax_ego __ax_ego)) _ax_ego)
  (:ay_ego
   (&optional __ay_ego)
   (if __ay_ego (setq _ay_ego __ay_ego)) _ay_ego)
  (:az_ego
   (&optional __az_ego)
   (if __az_ego (setq _az_ego __az_ego)) _az_ego)
  (:roll
   (&optional __roll)
   (if __roll (setq _roll __roll)) _roll)
  (:pitch
   (&optional __pitch)
   (if __pitch (setq _pitch __pitch)) _pitch)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:yaw_rate
   (&optional __yaw_rate)
   (if __yaw_rate (setq _yaw_rate __yaw_rate)) _yaw_rate)
  (:orientation
   (&rest __orientation)
   (if (keywordp (car __orientation))
       (send* _orientation __orientation)
     (progn
       (if __orientation (setq _orientation (car __orientation)))
       _orientation)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int8 _rtk_state
    1
    ;; float64 _lat
    8
    ;; float64 _lng
    8
    ;; float64 _alt
    8
    ;; float64 _latlng_std
    8
    ;; float64 _x_enu
    8
    ;; float64 _y_enu
    8
    ;; float64 _z_enu
    8
    ;; float64 _xy_std_enu
    8
    ;; float64 _vx_ego
    8
    ;; float64 _vy_ego
    8
    ;; float64 _vz_ego
    8
    ;; float64 _speed
    8
    ;; float64 _ax_ego
    8
    ;; float64 _ay_ego
    8
    ;; float64 _az_ego
    8
    ;; float64 _roll
    8
    ;; float64 _pitch
    8
    ;; float64 _yaw
    8
    ;; float64 _yaw_rate
    8
    ;; geometry_msgs/Quaternion _orientation
    (send _orientation :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int8 _rtk_state
       (write-byte _rtk_state s)
     ;; float64 _lat
       (sys::poke _lat (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _lng
       (sys::poke _lng (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _alt
       (sys::poke _alt (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _latlng_std
       (sys::poke _latlng_std (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _x_enu
       (sys::poke _x_enu (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y_enu
       (sys::poke _y_enu (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _z_enu
       (sys::poke _z_enu (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _xy_std_enu
       (sys::poke _xy_std_enu (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _vx_ego
       (sys::poke _vx_ego (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _vy_ego
       (sys::poke _vy_ego (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _vz_ego
       (sys::poke _vz_ego (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ax_ego
       (sys::poke _ax_ego (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ay_ego
       (sys::poke _ay_ego (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _az_ego
       (sys::poke _az_ego (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _roll
       (sys::poke _roll (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pitch
       (sys::poke _pitch (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yaw_rate
       (sys::poke _yaw_rate (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; geometry_msgs/Quaternion _orientation
       (send _orientation :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int8 _rtk_state
     (setq _rtk_state (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _rtk_state 127) (setq _rtk_state (- _rtk_state 256)))
   ;; float64 _lat
     (setq _lat (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _lng
     (setq _lng (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _alt
     (setq _alt (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _latlng_std
     (setq _latlng_std (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _x_enu
     (setq _x_enu (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y_enu
     (setq _y_enu (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _z_enu
     (setq _z_enu (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _xy_std_enu
     (setq _xy_std_enu (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _vx_ego
     (setq _vx_ego (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _vy_ego
     (setq _vy_ego (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _vz_ego
     (setq _vz_ego (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _speed
     (setq _speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ax_ego
     (setq _ax_ego (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ay_ego
     (setq _ay_ego (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _az_ego
     (setq _az_ego (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _roll
     (setq _roll (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pitch
     (setq _pitch (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yaw
     (setq _yaw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yaw_rate
     (setq _yaw_rate (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; geometry_msgs/Quaternion _orientation
     (send _orientation :deserialize buf ptr-) (incf ptr- (send _orientation :serialization-length))
   ;;
   self)
  )

(setf (get localization_msgs::Pose :md5sum-) "3e81e5554b4c298442f33329f73e80ce")
(setf (get localization_msgs::Pose :datatype-) "localization_msgs/Pose")
(setf (get localization_msgs::Pose :definition-)
      "Header header

int8 rtk_state 
# -1 : no gnss
# 0 : 2D or 3D gnss fix
# 1 : SBAS or Starfire gnss fix
# 2 : Diff or rtk fix

# wgs84
float64 lat
float64 lng
float64 alt
float64 latlng_std

# enu coord
float64 x_enu
float64 y_enu
float64 z_enu
float64 xy_std_enu

# v north, east, to ground
float64 vx_ego
float64 vy_ego
float64 vz_ego
float64 speed
float64 ax_ego
float64 ay_ego
float64 az_ego

# ego coord, in rad
float64 roll
float64 pitch
float64 yaw
float64 yaw_rate
geometry_msgs/Quaternion orientation
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
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :localization_msgs/Pose "3e81e5554b4c298442f33329f73e80ce")


