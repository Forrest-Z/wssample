;; Auto-generated. Do not edit!


(when (boundp 'control_msgs::LowspeedControl)
  (if (not (find-package "CONTROL_MSGS"))
    (make-package "CONTROL_MSGS"))
  (shadow 'LowspeedControl (find-package "CONTROL_MSGS")))
(unless (find-package "CONTROL_MSGS::LOWSPEEDCONTROL")
  (make-package "CONTROL_MSGS::LOWSPEEDCONTROL"))

(in-package "ROS")
;;//! \htmlinclude LowspeedControl.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass control_msgs::LowspeedControl
  :super ros::object
  :slots (_header _hands _EPB_active _EPB _retarder_active _retarder _gear_active _max_forward_gear _gear _hang_active _hang _left _right _near _far _top_warn _air_beep _front_fog _front_work _side _position _emergency _brake _reverse _back_work _cooler _axle_diff _exhaust_brake ))

(defmethod control_msgs::LowspeedControl
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:hands __hands) "")
    ((:EPB_active __EPB_active) 0)
    ((:EPB __EPB) 0)
    ((:retarder_active __retarder_active) 0)
    ((:retarder __retarder) 0.0)
    ((:gear_active __gear_active) 0)
    ((:max_forward_gear __max_forward_gear) 0)
    ((:gear __gear) 0)
    ((:hang_active __hang_active) 0)
    ((:hang __hang) 0)
    ((:left __left) 0)
    ((:right __right) 0)
    ((:near __near) 0)
    ((:far __far) 0)
    ((:top_warn __top_warn) 0)
    ((:air_beep __air_beep) 0)
    ((:front_fog __front_fog) 0)
    ((:front_work __front_work) 0)
    ((:side __side) 0)
    ((:position __position) 0)
    ((:emergency __emergency) 0)
    ((:brake __brake) 0)
    ((:reverse __reverse) 0)
    ((:back_work __back_work) 0)
    ((:cooler __cooler) 0)
    ((:axle_diff __axle_diff) 0)
    ((:exhaust_brake __exhaust_brake) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _hands (string __hands))
   (setq _EPB_active (round __EPB_active))
   (setq _EPB (round __EPB))
   (setq _retarder_active (round __retarder_active))
   (setq _retarder (float __retarder))
   (setq _gear_active (round __gear_active))
   (setq _max_forward_gear (round __max_forward_gear))
   (setq _gear (round __gear))
   (setq _hang_active (round __hang_active))
   (setq _hang (round __hang))
   (setq _left (round __left))
   (setq _right (round __right))
   (setq _near (round __near))
   (setq _far (round __far))
   (setq _top_warn (round __top_warn))
   (setq _air_beep (round __air_beep))
   (setq _front_fog (round __front_fog))
   (setq _front_work (round __front_work))
   (setq _side (round __side))
   (setq _position (round __position))
   (setq _emergency (round __emergency))
   (setq _brake (round __brake))
   (setq _reverse (round __reverse))
   (setq _back_work (round __back_work))
   (setq _cooler (round __cooler))
   (setq _axle_diff (round __axle_diff))
   (setq _exhaust_brake (round __exhaust_brake))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:hands
   (&optional __hands)
   (if __hands (setq _hands __hands)) _hands)
  (:EPB_active
   (&optional __EPB_active)
   (if __EPB_active (setq _EPB_active __EPB_active)) _EPB_active)
  (:EPB
   (&optional __EPB)
   (if __EPB (setq _EPB __EPB)) _EPB)
  (:retarder_active
   (&optional __retarder_active)
   (if __retarder_active (setq _retarder_active __retarder_active)) _retarder_active)
  (:retarder
   (&optional __retarder)
   (if __retarder (setq _retarder __retarder)) _retarder)
  (:gear_active
   (&optional __gear_active)
   (if __gear_active (setq _gear_active __gear_active)) _gear_active)
  (:max_forward_gear
   (&optional __max_forward_gear)
   (if __max_forward_gear (setq _max_forward_gear __max_forward_gear)) _max_forward_gear)
  (:gear
   (&optional __gear)
   (if __gear (setq _gear __gear)) _gear)
  (:hang_active
   (&optional __hang_active)
   (if __hang_active (setq _hang_active __hang_active)) _hang_active)
  (:hang
   (&optional __hang)
   (if __hang (setq _hang __hang)) _hang)
  (:left
   (&optional __left)
   (if __left (setq _left __left)) _left)
  (:right
   (&optional __right)
   (if __right (setq _right __right)) _right)
  (:near
   (&optional __near)
   (if __near (setq _near __near)) _near)
  (:far
   (&optional __far)
   (if __far (setq _far __far)) _far)
  (:top_warn
   (&optional __top_warn)
   (if __top_warn (setq _top_warn __top_warn)) _top_warn)
  (:air_beep
   (&optional __air_beep)
   (if __air_beep (setq _air_beep __air_beep)) _air_beep)
  (:front_fog
   (&optional __front_fog)
   (if __front_fog (setq _front_fog __front_fog)) _front_fog)
  (:front_work
   (&optional __front_work)
   (if __front_work (setq _front_work __front_work)) _front_work)
  (:side
   (&optional __side)
   (if __side (setq _side __side)) _side)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:emergency
   (&optional __emergency)
   (if __emergency (setq _emergency __emergency)) _emergency)
  (:brake
   (&optional __brake)
   (if __brake (setq _brake __brake)) _brake)
  (:reverse
   (&optional __reverse)
   (if __reverse (setq _reverse __reverse)) _reverse)
  (:back_work
   (&optional __back_work)
   (if __back_work (setq _back_work __back_work)) _back_work)
  (:cooler
   (&optional __cooler)
   (if __cooler (setq _cooler __cooler)) _cooler)
  (:axle_diff
   (&optional __axle_diff)
   (if __axle_diff (setq _axle_diff __axle_diff)) _axle_diff)
  (:exhaust_brake
   (&optional __exhaust_brake)
   (if __exhaust_brake (setq _exhaust_brake __exhaust_brake)) _exhaust_brake)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _hands
    4 (length _hands)
    ;; uint8 _EPB_active
    1
    ;; uint8 _EPB
    1
    ;; uint8 _retarder_active
    1
    ;; float64 _retarder
    8
    ;; uint8 _gear_active
    1
    ;; uint8 _max_forward_gear
    1
    ;; uint8 _gear
    1
    ;; uint8 _hang_active
    1
    ;; uint8 _hang
    1
    ;; uint8 _left
    1
    ;; uint8 _right
    1
    ;; uint8 _near
    1
    ;; uint8 _far
    1
    ;; uint8 _top_warn
    1
    ;; uint8 _air_beep
    1
    ;; uint8 _front_fog
    1
    ;; uint8 _front_work
    1
    ;; uint8 _side
    1
    ;; uint8 _position
    1
    ;; uint8 _emergency
    1
    ;; uint8 _brake
    1
    ;; uint8 _reverse
    1
    ;; uint8 _back_work
    1
    ;; uint8 _cooler
    1
    ;; uint8 _axle_diff
    1
    ;; uint8 _exhaust_brake
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _hands
       (write-long (length _hands) s) (princ _hands s)
     ;; uint8 _EPB_active
       (write-byte _EPB_active s)
     ;; uint8 _EPB
       (write-byte _EPB s)
     ;; uint8 _retarder_active
       (write-byte _retarder_active s)
     ;; float64 _retarder
       (sys::poke _retarder (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _gear_active
       (write-byte _gear_active s)
     ;; uint8 _max_forward_gear
       (write-byte _max_forward_gear s)
     ;; uint8 _gear
       (write-byte _gear s)
     ;; uint8 _hang_active
       (write-byte _hang_active s)
     ;; uint8 _hang
       (write-byte _hang s)
     ;; uint8 _left
       (write-byte _left s)
     ;; uint8 _right
       (write-byte _right s)
     ;; uint8 _near
       (write-byte _near s)
     ;; uint8 _far
       (write-byte _far s)
     ;; uint8 _top_warn
       (write-byte _top_warn s)
     ;; uint8 _air_beep
       (write-byte _air_beep s)
     ;; uint8 _front_fog
       (write-byte _front_fog s)
     ;; uint8 _front_work
       (write-byte _front_work s)
     ;; uint8 _side
       (write-byte _side s)
     ;; uint8 _position
       (write-byte _position s)
     ;; uint8 _emergency
       (write-byte _emergency s)
     ;; uint8 _brake
       (write-byte _brake s)
     ;; uint8 _reverse
       (write-byte _reverse s)
     ;; uint8 _back_work
       (write-byte _back_work s)
     ;; uint8 _cooler
       (write-byte _cooler s)
     ;; uint8 _axle_diff
       (write-byte _axle_diff s)
     ;; uint8 _exhaust_brake
       (write-byte _exhaust_brake s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _hands
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _hands (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _EPB_active
     (setq _EPB_active (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _EPB
     (setq _EPB (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _retarder_active
     (setq _retarder_active (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _retarder
     (setq _retarder (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _gear_active
     (setq _gear_active (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _max_forward_gear
     (setq _max_forward_gear (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _gear
     (setq _gear (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _hang_active
     (setq _hang_active (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _hang
     (setq _hang (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _left
     (setq _left (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _right
     (setq _right (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _near
     (setq _near (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _far
     (setq _far (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _top_warn
     (setq _top_warn (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _air_beep
     (setq _air_beep (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _front_fog
     (setq _front_fog (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _front_work
     (setq _front_work (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _side
     (setq _side (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _position
     (setq _position (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _emergency
     (setq _emergency (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _brake
     (setq _brake (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _reverse
     (setq _reverse (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _back_work
     (setq _back_work (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _cooler
     (setq _cooler (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _axle_diff
     (setq _axle_diff (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _exhaust_brake
     (setq _exhaust_brake (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get control_msgs::LowspeedControl :md5sum-) "575bedbd92f3b388148e6ef92921e040")
(setf (get control_msgs::LowspeedControl :datatype-) "control_msgs/LowspeedControl")
(setf (get control_msgs::LowspeedControl :definition-)
      "Header header

string hands

uint8 EPB_active 
uint8 EPB
uint8 retarder_active
float64 retarder
uint8 gear_active
uint8 max_forward_gear
uint8 gear
uint8 hang_active
uint8 hang

# body switch
uint8 left
uint8 right
uint8 near
uint8 far
uint8 top_warn
uint8 air_beep
uint8 front_fog
uint8 front_work
uint8 side
uint8 position
uint8 emergency
uint8 brake
uint8 reverse
uint8 back_work
uint8 cooler
uint8 axle_diff
uint8 exhaust_brake
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



(provide :control_msgs/LowspeedControl "575bedbd92f3b388148e6ef92921e040")


