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
  :slots (_control_type _steer _throttle_pedal _xbr _gear _epb _hang _air_beep _left_light _right_light _near_light _far_light _TL_rotate_warning_light _TL_front_fog_light _TL_front_work_light _TL_back_work_light _TL_side_light _TL_back_position_light _TL_hazard_indicator_light _TL_brake_light _TL_return_light ))

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
    ((:TL_rotate_warning_light __TL_rotate_warning_light) nil)
    ((:TL_front_fog_light __TL_front_fog_light) nil)
    ((:TL_front_work_light __TL_front_work_light) nil)
    ((:TL_back_work_light __TL_back_work_light) nil)
    ((:TL_side_light __TL_side_light) nil)
    ((:TL_back_position_light __TL_back_position_light) nil)
    ((:TL_hazard_indicator_light __TL_hazard_indicator_light) nil)
    ((:TL_brake_light __TL_brake_light) nil)
    ((:TL_return_light __TL_return_light) nil)
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
   (setq _TL_rotate_warning_light __TL_rotate_warning_light)
   (setq _TL_front_fog_light __TL_front_fog_light)
   (setq _TL_front_work_light __TL_front_work_light)
   (setq _TL_back_work_light __TL_back_work_light)
   (setq _TL_side_light __TL_side_light)
   (setq _TL_back_position_light __TL_back_position_light)
   (setq _TL_hazard_indicator_light __TL_hazard_indicator_light)
   (setq _TL_brake_light __TL_brake_light)
   (setq _TL_return_light __TL_return_light)
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
  (:TL_rotate_warning_light
   (&optional __TL_rotate_warning_light)
   (if __TL_rotate_warning_light (setq _TL_rotate_warning_light __TL_rotate_warning_light)) _TL_rotate_warning_light)
  (:TL_front_fog_light
   (&optional __TL_front_fog_light)
   (if __TL_front_fog_light (setq _TL_front_fog_light __TL_front_fog_light)) _TL_front_fog_light)
  (:TL_front_work_light
   (&optional __TL_front_work_light)
   (if __TL_front_work_light (setq _TL_front_work_light __TL_front_work_light)) _TL_front_work_light)
  (:TL_back_work_light
   (&optional __TL_back_work_light)
   (if __TL_back_work_light (setq _TL_back_work_light __TL_back_work_light)) _TL_back_work_light)
  (:TL_side_light
   (&optional __TL_side_light)
   (if __TL_side_light (setq _TL_side_light __TL_side_light)) _TL_side_light)
  (:TL_back_position_light
   (&optional __TL_back_position_light)
   (if __TL_back_position_light (setq _TL_back_position_light __TL_back_position_light)) _TL_back_position_light)
  (:TL_hazard_indicator_light
   (&optional __TL_hazard_indicator_light)
   (if __TL_hazard_indicator_light (setq _TL_hazard_indicator_light __TL_hazard_indicator_light)) _TL_hazard_indicator_light)
  (:TL_brake_light
   (&optional __TL_brake_light)
   (if __TL_brake_light (setq _TL_brake_light __TL_brake_light)) _TL_brake_light)
  (:TL_return_light
   (&optional __TL_return_light)
   (if __TL_return_light (setq _TL_return_light __TL_return_light)) _TL_return_light)
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
    ;; bool _TL_rotate_warning_light
    1
    ;; bool _TL_front_fog_light
    1
    ;; bool _TL_front_work_light
    1
    ;; bool _TL_back_work_light
    1
    ;; bool _TL_side_light
    1
    ;; bool _TL_back_position_light
    1
    ;; bool _TL_hazard_indicator_light
    1
    ;; bool _TL_brake_light
    1
    ;; bool _TL_return_light
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
     ;; bool _TL_rotate_warning_light
       (if _TL_rotate_warning_light (write-byte -1 s) (write-byte 0 s))
     ;; bool _TL_front_fog_light
       (if _TL_front_fog_light (write-byte -1 s) (write-byte 0 s))
     ;; bool _TL_front_work_light
       (if _TL_front_work_light (write-byte -1 s) (write-byte 0 s))
     ;; bool _TL_back_work_light
       (if _TL_back_work_light (write-byte -1 s) (write-byte 0 s))
     ;; bool _TL_side_light
       (if _TL_side_light (write-byte -1 s) (write-byte 0 s))
     ;; bool _TL_back_position_light
       (if _TL_back_position_light (write-byte -1 s) (write-byte 0 s))
     ;; bool _TL_hazard_indicator_light
       (if _TL_hazard_indicator_light (write-byte -1 s) (write-byte 0 s))
     ;; bool _TL_brake_light
       (if _TL_brake_light (write-byte -1 s) (write-byte 0 s))
     ;; bool _TL_return_light
       (if _TL_return_light (write-byte -1 s) (write-byte 0 s))
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
   ;; bool _TL_rotate_warning_light
     (setq _TL_rotate_warning_light (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _TL_front_fog_light
     (setq _TL_front_fog_light (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _TL_front_work_light
     (setq _TL_front_work_light (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _TL_back_work_light
     (setq _TL_back_work_light (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _TL_side_light
     (setq _TL_side_light (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _TL_back_position_light
     (setq _TL_back_position_light (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _TL_hazard_indicator_light
     (setq _TL_hazard_indicator_light (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _TL_brake_light
     (setq _TL_brake_light (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _TL_return_light
     (setq _TL_return_light (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get teledrive_msgs::Tli65Teledrive :md5sum-) "ff9fc773e79bfc906f0ea2de32f97922")
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
bool TL_rotate_warning_light
bool TL_front_fog_light
bool TL_front_work_light
bool TL_back_work_light
bool TL_side_light
bool TL_back_position_light
bool TL_hazard_indicator_light
bool TL_brake_light
bool TL_return_light
")



(provide :teledrive_msgs/Tli65Teledrive "ff9fc773e79bfc906f0ea2de32f97922")


