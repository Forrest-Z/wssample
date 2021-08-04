;; Auto-generated. Do not edit!


(when (boundp 'tli65_can_msgs::RxFt)
  (if (not (find-package "TLI65_CAN_MSGS"))
    (make-package "TLI65_CAN_MSGS"))
  (shadow 'RxFt (find-package "TLI65_CAN_MSGS")))
(unless (find-package "TLI65_CAN_MSGS::RXFT")
  (make-package "TLI65_CAN_MSGS::RXFT"))

(in-package "ROS")
;;//! \htmlinclude RxFt.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass tli65_can_msgs::RxFt
  :super ros::object
  :slots (_header _engine_fault _gear_fault _EBS_fault _EPS_fault _EPB_fault _truck_fault_level _engine_fault_code _gear_fault_code _EPS_fault_code _EBS_fault_code _electric_fault_code ))

(defmethod tli65_can_msgs::RxFt
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:engine_fault __engine_fault) 0)
    ((:gear_fault __gear_fault) 0)
    ((:EBS_fault __EBS_fault) 0)
    ((:EPS_fault __EPS_fault) 0)
    ((:EPB_fault __EPB_fault) 0)
    ((:truck_fault_level __truck_fault_level) 0)
    ((:engine_fault_code __engine_fault_code) 0)
    ((:gear_fault_code __gear_fault_code) 0)
    ((:EPS_fault_code __EPS_fault_code) 0)
    ((:EBS_fault_code __EBS_fault_code) 0)
    ((:electric_fault_code __electric_fault_code) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _engine_fault (round __engine_fault))
   (setq _gear_fault (round __gear_fault))
   (setq _EBS_fault (round __EBS_fault))
   (setq _EPS_fault (round __EPS_fault))
   (setq _EPB_fault (round __EPB_fault))
   (setq _truck_fault_level (round __truck_fault_level))
   (setq _engine_fault_code (round __engine_fault_code))
   (setq _gear_fault_code (round __gear_fault_code))
   (setq _EPS_fault_code (round __EPS_fault_code))
   (setq _EBS_fault_code (round __EBS_fault_code))
   (setq _electric_fault_code (round __electric_fault_code))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:engine_fault
   (&optional __engine_fault)
   (if __engine_fault (setq _engine_fault __engine_fault)) _engine_fault)
  (:gear_fault
   (&optional __gear_fault)
   (if __gear_fault (setq _gear_fault __gear_fault)) _gear_fault)
  (:EBS_fault
   (&optional __EBS_fault)
   (if __EBS_fault (setq _EBS_fault __EBS_fault)) _EBS_fault)
  (:EPS_fault
   (&optional __EPS_fault)
   (if __EPS_fault (setq _EPS_fault __EPS_fault)) _EPS_fault)
  (:EPB_fault
   (&optional __EPB_fault)
   (if __EPB_fault (setq _EPB_fault __EPB_fault)) _EPB_fault)
  (:truck_fault_level
   (&optional __truck_fault_level)
   (if __truck_fault_level (setq _truck_fault_level __truck_fault_level)) _truck_fault_level)
  (:engine_fault_code
   (&optional __engine_fault_code)
   (if __engine_fault_code (setq _engine_fault_code __engine_fault_code)) _engine_fault_code)
  (:gear_fault_code
   (&optional __gear_fault_code)
   (if __gear_fault_code (setq _gear_fault_code __gear_fault_code)) _gear_fault_code)
  (:EPS_fault_code
   (&optional __EPS_fault_code)
   (if __EPS_fault_code (setq _EPS_fault_code __EPS_fault_code)) _EPS_fault_code)
  (:EBS_fault_code
   (&optional __EBS_fault_code)
   (if __EBS_fault_code (setq _EBS_fault_code __EBS_fault_code)) _EBS_fault_code)
  (:electric_fault_code
   (&optional __electric_fault_code)
   (if __electric_fault_code (setq _electric_fault_code __electric_fault_code)) _electric_fault_code)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _engine_fault
    1
    ;; uint8 _gear_fault
    1
    ;; uint8 _EBS_fault
    1
    ;; uint8 _EPS_fault
    1
    ;; uint8 _EPB_fault
    1
    ;; uint8 _truck_fault_level
    1
    ;; uint8 _engine_fault_code
    1
    ;; uint8 _gear_fault_code
    1
    ;; uint8 _EPS_fault_code
    1
    ;; uint8 _EBS_fault_code
    1
    ;; uint8 _electric_fault_code
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _engine_fault
       (write-byte _engine_fault s)
     ;; uint8 _gear_fault
       (write-byte _gear_fault s)
     ;; uint8 _EBS_fault
       (write-byte _EBS_fault s)
     ;; uint8 _EPS_fault
       (write-byte _EPS_fault s)
     ;; uint8 _EPB_fault
       (write-byte _EPB_fault s)
     ;; uint8 _truck_fault_level
       (write-byte _truck_fault_level s)
     ;; uint8 _engine_fault_code
       (write-byte _engine_fault_code s)
     ;; uint8 _gear_fault_code
       (write-byte _gear_fault_code s)
     ;; uint8 _EPS_fault_code
       (write-byte _EPS_fault_code s)
     ;; uint8 _EBS_fault_code
       (write-byte _EBS_fault_code s)
     ;; uint8 _electric_fault_code
       (write-byte _electric_fault_code s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _engine_fault
     (setq _engine_fault (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _gear_fault
     (setq _gear_fault (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _EBS_fault
     (setq _EBS_fault (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _EPS_fault
     (setq _EPS_fault (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _EPB_fault
     (setq _EPB_fault (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _truck_fault_level
     (setq _truck_fault_level (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _engine_fault_code
     (setq _engine_fault_code (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _gear_fault_code
     (setq _gear_fault_code (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _EPS_fault_code
     (setq _EPS_fault_code (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _EBS_fault_code
     (setq _EBS_fault_code (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _electric_fault_code
     (setq _electric_fault_code (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get tli65_can_msgs::RxFt :md5sum-) "cced9dfa61b3727cda06b24391589f3a")
(setf (get tli65_can_msgs::RxFt :datatype-) "tli65_can_msgs/RxFt")
(setf (get tli65_can_msgs::RxFt :definition-)
      "Header header

# ft1
uint8 engine_fault
uint8 gear_fault
uint8 EBS_fault
uint8 EPS_fault
uint8 EPB_fault

# ft2
uint8 truck_fault_level
uint8 engine_fault_code
uint8 gear_fault_code

# ft3
uint8 EPS_fault_code
uint8 EBS_fault_code
uint8 electric_fault_code
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



(provide :tli65_can_msgs/RxFt "cced9dfa61b3727cda06b24391589f3a")


