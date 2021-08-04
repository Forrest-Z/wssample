;; Auto-generated. Do not edit!


(when (boundp 'perception_msgs::Obj)
  (if (not (find-package "PERCEPTION_MSGS"))
    (make-package "PERCEPTION_MSGS"))
  (shadow 'Obj (find-package "PERCEPTION_MSGS")))
(unless (find-package "PERCEPTION_MSGS::OBJ")
  (make-package "PERCEPTION_MSGS::OBJ"))

(in-package "ROS")
;;//! \htmlinclude Obj.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass perception_msgs::Obj
  :super ros::object
  :slots (_id _confidence _age _left_time _left_bottom _right_bottom _left_top _right_top _v_north _v_east _v_ground ))

(defmethod perception_msgs::Obj
  (:init
   (&key
    ((:id __id) 0)
    ((:confidence __confidence) 0.0)
    ((:age __age) 0)
    ((:left_time __left_time) 0)
    ((:left_bottom __left_bottom) (instance geometry_msgs::Point32 :init))
    ((:right_bottom __right_bottom) (instance geometry_msgs::Point32 :init))
    ((:left_top __left_top) (instance geometry_msgs::Point32 :init))
    ((:right_top __right_top) (instance geometry_msgs::Point32 :init))
    ((:v_north __v_north) 0.0)
    ((:v_east __v_east) 0.0)
    ((:v_ground __v_ground) 0.0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _confidence (float __confidence))
   (setq _age (round __age))
   (setq _left_time (round __left_time))
   (setq _left_bottom __left_bottom)
   (setq _right_bottom __right_bottom)
   (setq _left_top __left_top)
   (setq _right_top __right_top)
   (setq _v_north (float __v_north))
   (setq _v_east (float __v_east))
   (setq _v_ground (float __v_ground))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:confidence
   (&optional __confidence)
   (if __confidence (setq _confidence __confidence)) _confidence)
  (:age
   (&optional __age)
   (if __age (setq _age __age)) _age)
  (:left_time
   (&optional __left_time)
   (if __left_time (setq _left_time __left_time)) _left_time)
  (:left_bottom
   (&rest __left_bottom)
   (if (keywordp (car __left_bottom))
       (send* _left_bottom __left_bottom)
     (progn
       (if __left_bottom (setq _left_bottom (car __left_bottom)))
       _left_bottom)))
  (:right_bottom
   (&rest __right_bottom)
   (if (keywordp (car __right_bottom))
       (send* _right_bottom __right_bottom)
     (progn
       (if __right_bottom (setq _right_bottom (car __right_bottom)))
       _right_bottom)))
  (:left_top
   (&rest __left_top)
   (if (keywordp (car __left_top))
       (send* _left_top __left_top)
     (progn
       (if __left_top (setq _left_top (car __left_top)))
       _left_top)))
  (:right_top
   (&rest __right_top)
   (if (keywordp (car __right_top))
       (send* _right_top __right_top)
     (progn
       (if __right_top (setq _right_top (car __right_top)))
       _right_top)))
  (:v_north
   (&optional __v_north)
   (if __v_north (setq _v_north __v_north)) _v_north)
  (:v_east
   (&optional __v_east)
   (if __v_east (setq _v_east __v_east)) _v_east)
  (:v_ground
   (&optional __v_ground)
   (if __v_ground (setq _v_ground __v_ground)) _v_ground)
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ;; float32 _confidence
    4
    ;; int32 _age
    4
    ;; int32 _left_time
    4
    ;; geometry_msgs/Point32 _left_bottom
    (send _left_bottom :serialization-length)
    ;; geometry_msgs/Point32 _right_bottom
    (send _right_bottom :serialization-length)
    ;; geometry_msgs/Point32 _left_top
    (send _left_top :serialization-length)
    ;; geometry_msgs/Point32 _right_top
    (send _right_top :serialization-length)
    ;; float32 _v_north
    4
    ;; float32 _v_east
    4
    ;; float32 _v_ground
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;; float32 _confidence
       (sys::poke _confidence (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _age
       (write-long _age s)
     ;; int32 _left_time
       (write-long _left_time s)
     ;; geometry_msgs/Point32 _left_bottom
       (send _left_bottom :serialize s)
     ;; geometry_msgs/Point32 _right_bottom
       (send _right_bottom :serialize s)
     ;; geometry_msgs/Point32 _left_top
       (send _left_top :serialize s)
     ;; geometry_msgs/Point32 _right_top
       (send _right_top :serialize s)
     ;; float32 _v_north
       (sys::poke _v_north (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _v_east
       (sys::poke _v_east (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _v_ground
       (sys::poke _v_ground (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _confidence
     (setq _confidence (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _age
     (setq _age (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _left_time
     (setq _left_time (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Point32 _left_bottom
     (send _left_bottom :deserialize buf ptr-) (incf ptr- (send _left_bottom :serialization-length))
   ;; geometry_msgs/Point32 _right_bottom
     (send _right_bottom :deserialize buf ptr-) (incf ptr- (send _right_bottom :serialization-length))
   ;; geometry_msgs/Point32 _left_top
     (send _left_top :deserialize buf ptr-) (incf ptr- (send _left_top :serialization-length))
   ;; geometry_msgs/Point32 _right_top
     (send _right_top :deserialize buf ptr-) (incf ptr- (send _right_top :serialization-length))
   ;; float32 _v_north
     (setq _v_north (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _v_east
     (setq _v_east (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _v_ground
     (setq _v_ground (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get perception_msgs::Obj :md5sum-) "bad9b664cc24929ab35b00e428cc0976")
(setf (get perception_msgs::Obj :datatype-) "perception_msgs/Obj")
(setf (get perception_msgs::Obj :definition-)
      "int32 id

float32 confidence
int32 age
int32 left_time

geometry_msgs/Point32 left_bottom
geometry_msgs/Point32 right_bottom
geometry_msgs/Point32 left_top
geometry_msgs/Point32 right_top

# v north, east, to ground
float32 v_north
float32 v_east
float32 v_ground
================================================================================
MSG: geometry_msgs/Point32
# This contains the position of a point in free space(with 32 bits of precision).
# It is recommeded to use Point wherever possible instead of Point32.  
# 
# This recommendation is to promote interoperability.  
#
# This message is designed to take up less space when sending
# lots of points at once, as in the case of a PointCloud.  

float32 x
float32 y
float32 z
")



(provide :perception_msgs/Obj "bad9b664cc24929ab35b00e428cc0976")


