;; Auto-generated. Do not edit!


(when (boundp 'frontend_msgs::Frontend)
  (if (not (find-package "FRONTEND_MSGS"))
    (make-package "FRONTEND_MSGS"))
  (shadow 'Frontend (find-package "FRONTEND_MSGS")))
(unless (find-package "FRONTEND_MSGS::FRONTEND")
  (make-package "FRONTEND_MSGS::FRONTEND"))

(in-package "ROS")
;;//! \htmlinclude Frontend.msg.html


(defclass frontend_msgs::Frontend
  :super ros::object
  :slots (_TL_left_light _TL_right_light _TL_near_light _TL_far_light _TL_top_warning_light _TL_front_fog_light _TL_front_work_light _TL_back_work_light _TL_side_light _TL_position_light _TL_back_left_light _TL_back_right_light _emergency_light _TL_back_position_light _TL_brake_light _TL_reverse_light ))

(defmethod frontend_msgs::Frontend
  (:init
   (&key
    ((:TL_left_light __TL_left_light) nil)
    ((:TL_right_light __TL_right_light) nil)
    ((:TL_near_light __TL_near_light) nil)
    ((:TL_far_light __TL_far_light) nil)
    ((:TL_top_warning_light __TL_top_warning_light) nil)
    ((:TL_front_fog_light __TL_front_fog_light) nil)
    ((:TL_front_work_light __TL_front_work_light) nil)
    ((:TL_back_work_light __TL_back_work_light) nil)
    ((:TL_side_light __TL_side_light) nil)
    ((:TL_position_light __TL_position_light) nil)
    ((:TL_back_left_light __TL_back_left_light) nil)
    ((:TL_back_right_light __TL_back_right_light) nil)
    ((:emergency_light __emergency_light) nil)
    ((:TL_back_position_light __TL_back_position_light) nil)
    ((:TL_brake_light __TL_brake_light) nil)
    ((:TL_reverse_light __TL_reverse_light) nil)
    )
   (send-super :init)
   (setq _TL_left_light __TL_left_light)
   (setq _TL_right_light __TL_right_light)
   (setq _TL_near_light __TL_near_light)
   (setq _TL_far_light __TL_far_light)
   (setq _TL_top_warning_light __TL_top_warning_light)
   (setq _TL_front_fog_light __TL_front_fog_light)
   (setq _TL_front_work_light __TL_front_work_light)
   (setq _TL_back_work_light __TL_back_work_light)
   (setq _TL_side_light __TL_side_light)
   (setq _TL_position_light __TL_position_light)
   (setq _TL_back_left_light __TL_back_left_light)
   (setq _TL_back_right_light __TL_back_right_light)
   (setq _emergency_light __emergency_light)
   (setq _TL_back_position_light __TL_back_position_light)
   (setq _TL_brake_light __TL_brake_light)
   (setq _TL_reverse_light __TL_reverse_light)
   self)
  (:TL_left_light
   (&optional __TL_left_light)
   (if __TL_left_light (setq _TL_left_light __TL_left_light)) _TL_left_light)
  (:TL_right_light
   (&optional __TL_right_light)
   (if __TL_right_light (setq _TL_right_light __TL_right_light)) _TL_right_light)
  (:TL_near_light
   (&optional __TL_near_light)
   (if __TL_near_light (setq _TL_near_light __TL_near_light)) _TL_near_light)
  (:TL_far_light
   (&optional __TL_far_light)
   (if __TL_far_light (setq _TL_far_light __TL_far_light)) _TL_far_light)
  (:TL_top_warning_light
   (&optional __TL_top_warning_light)
   (if __TL_top_warning_light (setq _TL_top_warning_light __TL_top_warning_light)) _TL_top_warning_light)
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
  (:TL_position_light
   (&optional __TL_position_light)
   (if __TL_position_light (setq _TL_position_light __TL_position_light)) _TL_position_light)
  (:TL_back_left_light
   (&optional __TL_back_left_light)
   (if __TL_back_left_light (setq _TL_back_left_light __TL_back_left_light)) _TL_back_left_light)
  (:TL_back_right_light
   (&optional __TL_back_right_light)
   (if __TL_back_right_light (setq _TL_back_right_light __TL_back_right_light)) _TL_back_right_light)
  (:emergency_light
   (&optional __emergency_light)
   (if __emergency_light (setq _emergency_light __emergency_light)) _emergency_light)
  (:TL_back_position_light
   (&optional __TL_back_position_light)
   (if __TL_back_position_light (setq _TL_back_position_light __TL_back_position_light)) _TL_back_position_light)
  (:TL_brake_light
   (&optional __TL_brake_light)
   (if __TL_brake_light (setq _TL_brake_light __TL_brake_light)) _TL_brake_light)
  (:TL_reverse_light
   (&optional __TL_reverse_light)
   (if __TL_reverse_light (setq _TL_reverse_light __TL_reverse_light)) _TL_reverse_light)
  (:serialization-length
   ()
   (+
    ;; bool _TL_left_light
    1
    ;; bool _TL_right_light
    1
    ;; bool _TL_near_light
    1
    ;; bool _TL_far_light
    1
    ;; bool _TL_top_warning_light
    1
    ;; bool _TL_front_fog_light
    1
    ;; bool _TL_front_work_light
    1
    ;; bool _TL_back_work_light
    1
    ;; bool _TL_side_light
    1
    ;; bool _TL_position_light
    1
    ;; bool _TL_back_left_light
    1
    ;; bool _TL_back_right_light
    1
    ;; bool _emergency_light
    1
    ;; bool _TL_back_position_light
    1
    ;; bool _TL_brake_light
    1
    ;; bool _TL_reverse_light
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _TL_left_light
       (if _TL_left_light (write-byte -1 s) (write-byte 0 s))
     ;; bool _TL_right_light
       (if _TL_right_light (write-byte -1 s) (write-byte 0 s))
     ;; bool _TL_near_light
       (if _TL_near_light (write-byte -1 s) (write-byte 0 s))
     ;; bool _TL_far_light
       (if _TL_far_light (write-byte -1 s) (write-byte 0 s))
     ;; bool _TL_top_warning_light
       (if _TL_top_warning_light (write-byte -1 s) (write-byte 0 s))
     ;; bool _TL_front_fog_light
       (if _TL_front_fog_light (write-byte -1 s) (write-byte 0 s))
     ;; bool _TL_front_work_light
       (if _TL_front_work_light (write-byte -1 s) (write-byte 0 s))
     ;; bool _TL_back_work_light
       (if _TL_back_work_light (write-byte -1 s) (write-byte 0 s))
     ;; bool _TL_side_light
       (if _TL_side_light (write-byte -1 s) (write-byte 0 s))
     ;; bool _TL_position_light
       (if _TL_position_light (write-byte -1 s) (write-byte 0 s))
     ;; bool _TL_back_left_light
       (if _TL_back_left_light (write-byte -1 s) (write-byte 0 s))
     ;; bool _TL_back_right_light
       (if _TL_back_right_light (write-byte -1 s) (write-byte 0 s))
     ;; bool _emergency_light
       (if _emergency_light (write-byte -1 s) (write-byte 0 s))
     ;; bool _TL_back_position_light
       (if _TL_back_position_light (write-byte -1 s) (write-byte 0 s))
     ;; bool _TL_brake_light
       (if _TL_brake_light (write-byte -1 s) (write-byte 0 s))
     ;; bool _TL_reverse_light
       (if _TL_reverse_light (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _TL_left_light
     (setq _TL_left_light (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _TL_right_light
     (setq _TL_right_light (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _TL_near_light
     (setq _TL_near_light (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _TL_far_light
     (setq _TL_far_light (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _TL_top_warning_light
     (setq _TL_top_warning_light (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _TL_front_fog_light
     (setq _TL_front_fog_light (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _TL_front_work_light
     (setq _TL_front_work_light (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _TL_back_work_light
     (setq _TL_back_work_light (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _TL_side_light
     (setq _TL_side_light (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _TL_position_light
     (setq _TL_position_light (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _TL_back_left_light
     (setq _TL_back_left_light (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _TL_back_right_light
     (setq _TL_back_right_light (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _emergency_light
     (setq _emergency_light (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _TL_back_position_light
     (setq _TL_back_position_light (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _TL_brake_light
     (setq _TL_brake_light (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _TL_reverse_light
     (setq _TL_reverse_light (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get frontend_msgs::Frontend :md5sum-) "6d69890661b416e2254fb5f08a7e73e1")
(setf (get frontend_msgs::Frontend :datatype-) "frontend_msgs/Frontend")
(setf (get frontend_msgs::Frontend :definition-)
      "bool TL_left_light
bool TL_right_light
bool TL_near_light
bool TL_far_light

bool TL_top_warning_light
bool TL_front_fog_light
bool TL_front_work_light
bool TL_back_work_light
bool TL_side_light
bool TL_position_light
bool TL_back_left_light
bool TL_back_right_light
bool emergency_light
bool TL_back_position_light
bool TL_brake_light
bool TL_reverse_light
")



(provide :frontend_msgs/Frontend "6d69890661b416e2254fb5f08a7e73e1")


