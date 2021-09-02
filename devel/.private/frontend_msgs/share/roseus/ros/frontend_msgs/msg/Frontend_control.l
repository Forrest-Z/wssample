;; Auto-generated. Do not edit!


(when (boundp 'frontend_msgs::Frontend_control)
  (if (not (find-package "FRONTEND_MSGS"))
    (make-package "FRONTEND_MSGS"))
  (shadow 'Frontend_control (find-package "FRONTEND_MSGS")))
(unless (find-package "FRONTEND_MSGS::FRONTEND_CONTROL")
  (make-package "FRONTEND_MSGS::FRONTEND_CONTROL"))

(in-package "ROS")
;;//! \htmlinclude Frontend_control.msg.html


(defclass frontend_msgs::Frontend_control
  :super ros::object
  :slots (_top_warn _air_beep _front_fog _front_work _side _position _emergency _brake _reverse _back_work ))

(defmethod frontend_msgs::Frontend_control
  (:init
   (&key
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
    )
   (send-super :init)
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
   self)
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
  (:serialization-length
   ()
   (+
    ;; int32 _top_warn
    4
    ;; int32 _air_beep
    4
    ;; int32 _front_fog
    4
    ;; int32 _front_work
    4
    ;; int32 _side
    4
    ;; int32 _position
    4
    ;; int32 _emergency
    4
    ;; int32 _brake
    4
    ;; int32 _reverse
    4
    ;; int32 _back_work
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _top_warn
       (write-long _top_warn s)
     ;; int32 _air_beep
       (write-long _air_beep s)
     ;; int32 _front_fog
       (write-long _front_fog s)
     ;; int32 _front_work
       (write-long _front_work s)
     ;; int32 _side
       (write-long _side s)
     ;; int32 _position
       (write-long _position s)
     ;; int32 _emergency
       (write-long _emergency s)
     ;; int32 _brake
       (write-long _brake s)
     ;; int32 _reverse
       (write-long _reverse s)
     ;; int32 _back_work
       (write-long _back_work s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _top_warn
     (setq _top_warn (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _air_beep
     (setq _air_beep (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _front_fog
     (setq _front_fog (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _front_work
     (setq _front_work (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _side
     (setq _side (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _position
     (setq _position (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _emergency
     (setq _emergency (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _brake
     (setq _brake (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _reverse
     (setq _reverse (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _back_work
     (setq _back_work (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get frontend_msgs::Frontend_control :md5sum-) "07e96978fad44d955264fd804f0af5ca")
(setf (get frontend_msgs::Frontend_control :datatype-) "frontend_msgs/Frontend_control")
(setf (get frontend_msgs::Frontend_control :definition-)
      "# frontend lights control
# int32 left
# int32 right
# int32 near
# int32 far
int32 top_warn
int32 air_beep
int32 front_fog
int32 front_work
int32 side
int32 position
int32 emergency
int32 brake
int32 reverse
int32 back_work
")



(provide :frontend_msgs/Frontend_control "07e96978fad44d955264fd804f0af5ca")


