;; Auto-generated. Do not edit!


(when (boundp 'teledrive_msgs::Tli65Teledrive)
  (if (not (find-package "TELEDRIVE_MSGS"))
    (make-package "TELEDRIVE_MSGS"))
  (shadow 'Tli65Teledrive (find-package "TELEDRIVE_MSGS")))
(unless (find-package "TELEDRIVE_MSGS::TLI65TELEDRIVE")
  (make-package "TELEDRIVE_MSGS::TLI65TELEDRIVE"))

(in-package "ROS")
;;//! \htmlinclude Tli65Teledrive.msg.html


(defclass teledrive_msgs::Tli65Teledrive
  :super ros::object
  :slots (_control_type _steer _throttle_pedal _xbr _gear _epb _hang _air_beep _left_light _right_light _near_light _far_light _top_warning_light _front_fog_light _front_work_light _back_work_light _side_light _position_light _emergency_light _brake_light _reverse_light ))

(defmethod teledrive_msgs::Tli65Teledrive
  (:init
   (&key
    ((:control_type __control_type) "")
    ((:steer __steer) 0.0)
    ((:throttle_pedal __throttle_pedal) 0.0)
    ((:xbr __xbr) 0.0)
    ((:gear __gear) 0)
    ((:epb __epb) 0)
    ((:hang __hang) 0)
    ((:air_beep __air_beep) nil)
    ((:left_light __left_light) nil)
    ((:right_light __right_light) nil)
    ((:near_light __near_light) nil)
    ((:far_light __far_light) nil)
    ((:top_warning_light __top_warning_light) nil)
    ((:front_fog_light __front_fog_light) nil)
    ((:front_work_light __front_work_light) nil)
    ((:back_work_light __back_work_light) nil)
    ((:side_light __side_light) nil)
    ((:position_light __position_light) nil)
    ((:emergency_light __emergency_light) nil)
    ((:brake_light __brake_light) nil)
    ((:reverse_light __reverse_light) nil)
    )
   (send-super :init)
   (setq _control_type (string __control_type))
   (setq _steer (float __steer))
   (setq _throttle_pedal (float __throttle_pedal))
   (setq _xbr (float __xbr))
   (setq _gear (round __gear))
   (setq _epb (round __epb))
   (setq _hang (round __hang))
   (setq _air_beep __air_beep)
   (setq _left_light __left_light)
   (setq _right_light __right_light)
   (setq _near_light __near_light)
   (setq _far_light __far_light)
   (setq _top_warning_light __top_warning_light)
   (setq _front_fog_light __front_fog_light)
   (setq _front_work_light __front_work_light)
   (setq _back_work_light __back_work_light)
   (setq _side_light __side_light)
   (setq _position_light __position_light)
   (setq _emergency_light __emergency_light)
   (setq _brake_light __brake_light)
   (setq _reverse_light __reverse_light)
   self)
  (:control_type
   (&optional __control_type)
   (if __control_type (setq _control_type __control_type)) _control_type)
  (:steer
   (&optional __steer)
   (if __steer (setq _steer __steer)) _steer)
  (:throttle_pedal
   (&optional __throttle_pedal)
   (if __throttle_pedal (setq _throttle_pedal __throttle_pedal)) _throttle_pedal)
  (:xbr
   (&optional __xbr)
   (if __xbr (setq _xbr __xbr)) _xbr)
  (:gear
   (&optional __gear)
   (if __gear (setq _gear __gear)) _gear)
  (:epb
   (&optional __epb)
   (if __epb (setq _epb __epb)) _epb)
  (:hang
   (&optional __hang)
   (if __hang (setq _hang __hang)) _hang)
  (:air_beep
   (&optional __air_beep)
   (if __air_beep (setq _air_beep __air_beep)) _air_beep)
  (:left_light
   (&optional __left_light)
   (if __left_light (setq _left_light __left_light)) _left_light)
  (:right_light
   (&optional __right_light)
   (if __right_light (setq _right_light __right_light)) _right_light)
  (:near_light
   (&optional __near_light)
   (if __near_light (setq _near_light __near_light)) _near_light)
  (:far_light
   (&optional __far_light)
   (if __far_light (setq _far_light __far_light)) _far_light)
  (:top_warning_light
   (&optional __top_warning_light)
   (if __top_warning_light (setq _top_warning_light __top_warning_light)) _top_warning_light)
  (:front_fog_light
   (&optional __front_fog_light)
   (if __front_fog_light (setq _front_fog_light __front_fog_light)) _front_fog_light)
  (:front_work_light
   (&optional __front_work_light)
   (if __front_work_light (setq _front_work_light __front_work_light)) _front_work_light)
  (:back_work_light
   (&optional __back_work_light)
   (if __back_work_light (setq _back_work_light __back_work_light)) _back_work_light)
  (:side_light
   (&optional __side_light)
   (if __side_light (setq _side_light __side_light)) _side_light)
  (:position_light
   (&optional __position_light)
   (if __position_light (setq _position_light __position_light)) _position_light)
  (:emergency_light
   (&optional __emergency_light)
   (if __emergency_light (setq _emergency_light __emergency_light)) _emergency_light)
  (:brake_light
   (&optional __brake_light)
   (if __brake_light (setq _brake_light __brake_light)) _brake_light)
  (:reverse_light
   (&optional __reverse_light)
   (if __reverse_light (setq _reverse_light __reverse_light)) _reverse_light)
  (:serialization-length
   ()
   (+
    ;; string _control_type
    4 (length _control_type)
    ;; float64 _steer
    8
    ;; float64 _throttle_pedal
    8
    ;; float64 _xbr
    8
    ;; int32 _gear
    4
    ;; int32 _epb
    4
    ;; int32 _hang
    4
    ;; bool _air_beep
    1
    ;; bool _left_light
    1
    ;; bool _right_light
    1
    ;; bool _near_light
    1
    ;; bool _far_light
    1
    ;; bool _top_warning_light
    1
    ;; bool _front_fog_light
    1
    ;; bool _front_work_light
    1
    ;; bool _back_work_light
    1
    ;; bool _side_light
    1
    ;; bool _position_light
    1
    ;; bool _emergency_light
    1
    ;; bool _brake_light
    1
    ;; bool _reverse_light
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _control_type
       (write-long (length _control_type) s) (princ _control_type s)
     ;; float64 _steer
       (sys::poke _steer (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _throttle_pedal
       (sys::poke _throttle_pedal (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _xbr
       (sys::poke _xbr (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _gear
       (write-long _gear s)
     ;; int32 _epb
       (write-long _epb s)
     ;; int32 _hang
       (write-long _hang s)
     ;; bool _air_beep
       (if _air_beep (write-byte -1 s) (write-byte 0 s))
     ;; bool _left_light
       (if _left_light (write-byte -1 s) (write-byte 0 s))
     ;; bool _right_light
       (if _right_light (write-byte -1 s) (write-byte 0 s))
     ;; bool _near_light
       (if _near_light (write-byte -1 s) (write-byte 0 s))
     ;; bool _far_light
       (if _far_light (write-byte -1 s) (write-byte 0 s))
     ;; bool _top_warning_light
       (if _top_warning_light (write-byte -1 s) (write-byte 0 s))
     ;; bool _front_fog_light
       (if _front_fog_light (write-byte -1 s) (write-byte 0 s))
     ;; bool _front_work_light
       (if _front_work_light (write-byte -1 s) (write-byte 0 s))
     ;; bool _back_work_light
       (if _back_work_light (write-byte -1 s) (write-byte 0 s))
     ;; bool _side_light
       (if _side_light (write-byte -1 s) (write-byte 0 s))
     ;; bool _position_light
       (if _position_light (write-byte -1 s) (write-byte 0 s))
     ;; bool _emergency_light
       (if _emergency_light (write-byte -1 s) (write-byte 0 s))
     ;; bool _brake_light
       (if _brake_light (write-byte -1 s) (write-byte 0 s))
     ;; bool _reverse_light
       (if _reverse_light (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _control_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _control_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _steer
     (setq _steer (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _throttle_pedal
     (setq _throttle_pedal (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _xbr
     (setq _xbr (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _gear
     (setq _gear (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _epb
     (setq _epb (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _hang
     (setq _hang (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _air_beep
     (setq _air_beep (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _left_light
     (setq _left_light (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _right_light
     (setq _right_light (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _near_light
     (setq _near_light (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _far_light
     (setq _far_light (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _top_warning_light
     (setq _top_warning_light (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _front_fog_light
     (setq _front_fog_light (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _front_work_light
     (setq _front_work_light (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _back_work_light
     (setq _back_work_light (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _side_light
     (setq _side_light (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _position_light
     (setq _position_light (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _emergency_light
     (setq _emergency_light (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _brake_light
     (setq _brake_light (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _reverse_light
     (setq _reverse_light (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get teledrive_msgs::Tli65Teledrive :md5sum-) "2039e574d82f1c10ec3f95ef9b8ec5ce")
(setf (get teledrive_msgs::Tli65Teledrive :datatype-) "teledrive_msgs/Tli65Teledrive")
(setf (get teledrive_msgs::Tli65Teledrive :definition-)
      "string control_type

float64 steer
float64 throttle_pedal
float64 xbr
int32 gear
int32 epb
int32 hang
bool air_beep
bool left_light
bool right_light
bool near_light
bool far_light

#TL lights state
bool top_warning_light
bool front_fog_light
bool front_work_light
bool back_work_light
bool side_light
bool position_light
bool emergency_light
bool brake_light
bool reverse_light
")



(provide :teledrive_msgs/Tli65Teledrive "2039e574d82f1c10ec3f95ef9b8ec5ce")


