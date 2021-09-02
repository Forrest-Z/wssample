;; Auto-generated. Do not edit!


(when (boundp 'frontend_msgs::Frontend_TLdisplay)
  (if (not (find-package "FRONTEND_MSGS"))
    (make-package "FRONTEND_MSGS"))
  (shadow 'Frontend_TLdisplay (find-package "FRONTEND_MSGS")))
(unless (find-package "FRONTEND_MSGS::FRONTEND_TLDISPLAY")
  (make-package "FRONTEND_MSGS::FRONTEND_TLDISPLAY"))

(in-package "ROS")
;;//! \htmlinclude Frontend_TLdisplay.msg.html


(defclass frontend_msgs::Frontend_TLdisplay
  :super ros::object
  :slots (_left_light _right_light _near_light _far_light _top_warning_light _air_beep _front_fog_light _front_work_light _side_light _position_light _back_left_light _back_right_light _back_position_light _brake_light _reverse_light _back_work_light ))

(defmethod frontend_msgs::Frontend_TLdisplay
  (:init
   (&key
    ((:left_light __left_light) 0)
    ((:right_light __right_light) 0)
    ((:near_light __near_light) 0)
    ((:far_light __far_light) 0)
    ((:top_warning_light __top_warning_light) 0)
    ((:air_beep __air_beep) 0)
    ((:front_fog_light __front_fog_light) 0)
    ((:front_work_light __front_work_light) 0)
    ((:side_light __side_light) 0)
    ((:position_light __position_light) 0)
    ((:back_left_light __back_left_light) 0)
    ((:back_right_light __back_right_light) 0)
    ((:back_position_light __back_position_light) 0)
    ((:brake_light __brake_light) 0)
    ((:reverse_light __reverse_light) 0)
    ((:back_work_light __back_work_light) 0)
    )
   (send-super :init)
   (setq _left_light (round __left_light))
   (setq _right_light (round __right_light))
   (setq _near_light (round __near_light))
   (setq _far_light (round __far_light))
   (setq _top_warning_light (round __top_warning_light))
   (setq _air_beep (round __air_beep))
   (setq _front_fog_light (round __front_fog_light))
   (setq _front_work_light (round __front_work_light))
   (setq _side_light (round __side_light))
   (setq _position_light (round __position_light))
   (setq _back_left_light (round __back_left_light))
   (setq _back_right_light (round __back_right_light))
   (setq _back_position_light (round __back_position_light))
   (setq _brake_light (round __brake_light))
   (setq _reverse_light (round __reverse_light))
   (setq _back_work_light (round __back_work_light))
   self)
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
  (:air_beep
   (&optional __air_beep)
   (if __air_beep (setq _air_beep __air_beep)) _air_beep)
  (:front_fog_light
   (&optional __front_fog_light)
   (if __front_fog_light (setq _front_fog_light __front_fog_light)) _front_fog_light)
  (:front_work_light
   (&optional __front_work_light)
   (if __front_work_light (setq _front_work_light __front_work_light)) _front_work_light)
  (:side_light
   (&optional __side_light)
   (if __side_light (setq _side_light __side_light)) _side_light)
  (:position_light
   (&optional __position_light)
   (if __position_light (setq _position_light __position_light)) _position_light)
  (:back_left_light
   (&optional __back_left_light)
   (if __back_left_light (setq _back_left_light __back_left_light)) _back_left_light)
  (:back_right_light
   (&optional __back_right_light)
   (if __back_right_light (setq _back_right_light __back_right_light)) _back_right_light)
  (:back_position_light
   (&optional __back_position_light)
   (if __back_position_light (setq _back_position_light __back_position_light)) _back_position_light)
  (:brake_light
   (&optional __brake_light)
   (if __brake_light (setq _brake_light __brake_light)) _brake_light)
  (:reverse_light
   (&optional __reverse_light)
   (if __reverse_light (setq _reverse_light __reverse_light)) _reverse_light)
  (:back_work_light
   (&optional __back_work_light)
   (if __back_work_light (setq _back_work_light __back_work_light)) _back_work_light)
  (:serialization-length
   ()
   (+
    ;; int32 _left_light
    4
    ;; int32 _right_light
    4
    ;; int32 _near_light
    4
    ;; int32 _far_light
    4
    ;; int32 _top_warning_light
    4
    ;; int32 _air_beep
    4
    ;; int32 _front_fog_light
    4
    ;; int32 _front_work_light
    4
    ;; int32 _side_light
    4
    ;; int32 _position_light
    4
    ;; int32 _back_left_light
    4
    ;; int32 _back_right_light
    4
    ;; int32 _back_position_light
    4
    ;; int32 _brake_light
    4
    ;; int32 _reverse_light
    4
    ;; int32 _back_work_light
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _left_light
       (write-long _left_light s)
     ;; int32 _right_light
       (write-long _right_light s)
     ;; int32 _near_light
       (write-long _near_light s)
     ;; int32 _far_light
       (write-long _far_light s)
     ;; int32 _top_warning_light
       (write-long _top_warning_light s)
     ;; int32 _air_beep
       (write-long _air_beep s)
     ;; int32 _front_fog_light
       (write-long _front_fog_light s)
     ;; int32 _front_work_light
       (write-long _front_work_light s)
     ;; int32 _side_light
       (write-long _side_light s)
     ;; int32 _position_light
       (write-long _position_light s)
     ;; int32 _back_left_light
       (write-long _back_left_light s)
     ;; int32 _back_right_light
       (write-long _back_right_light s)
     ;; int32 _back_position_light
       (write-long _back_position_light s)
     ;; int32 _brake_light
       (write-long _brake_light s)
     ;; int32 _reverse_light
       (write-long _reverse_light s)
     ;; int32 _back_work_light
       (write-long _back_work_light s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _left_light
     (setq _left_light (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _right_light
     (setq _right_light (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _near_light
     (setq _near_light (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _far_light
     (setq _far_light (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _top_warning_light
     (setq _top_warning_light (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _air_beep
     (setq _air_beep (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _front_fog_light
     (setq _front_fog_light (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _front_work_light
     (setq _front_work_light (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _side_light
     (setq _side_light (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _position_light
     (setq _position_light (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _back_left_light
     (setq _back_left_light (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _back_right_light
     (setq _back_right_light (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _back_position_light
     (setq _back_position_light (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _brake_light
     (setq _brake_light (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _reverse_light
     (setq _reverse_light (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _back_work_light
     (setq _back_work_light (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get frontend_msgs::Frontend_TLdisplay :md5sum-) "e622ba7a39d3ca14b4c60375b5cf0f77")
(setf (get frontend_msgs::Frontend_TLdisplay :datatype-) "frontend_msgs/Frontend_TLdisplay")
(setf (get frontend_msgs::Frontend_TLdisplay :definition-)
      "#TL lights feedback
int32 left_light
int32 right_light
int32 near_light
int32 far_light

int32 top_warning_light
int32 air_beep
int32 front_fog_light
int32 front_work_light
int32 side_light
int32 position_light
int32 back_left_light
int32 back_right_light
int32 back_position_light
int32 brake_light
int32 reverse_light
int32 back_work_light


")



(provide :frontend_msgs/Frontend_TLdisplay "e622ba7a39d3ca14b4c60375b5cf0f77")


