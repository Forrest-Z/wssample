;; Auto-generated. Do not edit!


(when (boundp 'displaydata_msgs::DisplayData)
  (if (not (find-package "DISPLAYDATA_MSGS"))
    (make-package "DISPLAYDATA_MSGS"))
  (shadow 'DisplayData (find-package "DISPLAYDATA_MSGS")))
(unless (find-package "DISPLAYDATA_MSGS::DISPLAYDATA")
  (make-package "DISPLAYDATA_MSGS::DISPLAYDATA"))

(in-package "ROS")
;;//! \htmlinclude DisplayData.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass displaydata_msgs::DisplayData
  :super ros::object
  :slots (_header _rtk_state _lat _lng _alt _x_enu _y_enu _z_enu _xy_std_enu _heading_angle _NumSate _vx _auto_mode _current_steer _current_brake_pedal_pos _current_throttle_percentage _current_retarder_torque_percentage _current_EPB _current_gear _current_hang_angle _air_pressure1 _air_pressure2 _left_light _right_light _near_light _far_light _air_beep _top_warning_light _front_fog_light _front_work_light _side_light _position_light _back_left_light _back_right_light _back_position_light _brake_light _reverse_light _back_work_light _fuel_consumption _planner_fsm_state _lock_down_index _pt_index _wpt_x _wpt_y _control_fsm_state _control_steer _control_throttle_percentage _control_xbr _control_EPB _control_gear _control_hang _engine_fault _gear_fault _EBS_fault _EPS_fault _EPB_fault _tyre_pressure_leftfront _tyre_pressure_rightfront _front_left_temperature _front_right_temperature ))

(defmethod displaydata_msgs::DisplayData
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:rtk_state __rtk_state) 0)
    ((:lat __lat) 0.0)
    ((:lng __lng) 0.0)
    ((:alt __alt) 0.0)
    ((:x_enu __x_enu) 0.0)
    ((:y_enu __y_enu) 0.0)
    ((:z_enu __z_enu) 0.0)
    ((:xy_std_enu __xy_std_enu) 0.0)
    ((:heading_angle __heading_angle) 0.0)
    ((:NumSate __NumSate) 0)
    ((:vx __vx) 0.0)
    ((:auto_mode __auto_mode) 0)
    ((:current_steer __current_steer) 0.0)
    ((:current_brake_pedal_pos __current_brake_pedal_pos) 0.0)
    ((:current_throttle_percentage __current_throttle_percentage) 0)
    ((:current_retarder_torque_percentage __current_retarder_torque_percentage) 0)
    ((:current_EPB __current_EPB) 0)
    ((:current_gear __current_gear) 0)
    ((:current_hang_angle __current_hang_angle) 0)
    ((:air_pressure1 __air_pressure1) 0)
    ((:air_pressure2 __air_pressure2) 0)
    ((:left_light __left_light) 0)
    ((:right_light __right_light) 0)
    ((:near_light __near_light) 0)
    ((:far_light __far_light) 0)
    ((:air_beep __air_beep) 0)
    ((:top_warning_light __top_warning_light) 0)
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
    ((:fuel_consumption __fuel_consumption) 0)
    ((:planner_fsm_state __planner_fsm_state) "")
    ((:lock_down_index __lock_down_index) 0)
    ((:pt_index __pt_index) (make-array 0 :initial-element 0 :element-type :integer))
    ((:wpt_x __wpt_x) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:wpt_y __wpt_y) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:control_fsm_state __control_fsm_state) "")
    ((:control_steer __control_steer) 0.0)
    ((:control_throttle_percentage __control_throttle_percentage) 0)
    ((:control_xbr __control_xbr) 0.0)
    ((:control_EPB __control_EPB) 0)
    ((:control_gear __control_gear) "")
    ((:control_hang __control_hang) "")
    ((:engine_fault __engine_fault) 0)
    ((:gear_fault __gear_fault) 0)
    ((:EBS_fault __EBS_fault) 0)
    ((:EPS_fault __EPS_fault) 0)
    ((:EPB_fault __EPB_fault) 0)
    ((:tyre_pressure_leftfront __tyre_pressure_leftfront) 0)
    ((:tyre_pressure_rightfront __tyre_pressure_rightfront) 0)
    ((:front_left_temperature __front_left_temperature) 0.0)
    ((:front_right_temperature __front_right_temperature) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _rtk_state (round __rtk_state))
   (setq _lat (float __lat))
   (setq _lng (float __lng))
   (setq _alt (float __alt))
   (setq _x_enu (float __x_enu))
   (setq _y_enu (float __y_enu))
   (setq _z_enu (float __z_enu))
   (setq _xy_std_enu (float __xy_std_enu))
   (setq _heading_angle (float __heading_angle))
   (setq _NumSate (round __NumSate))
   (setq _vx (float __vx))
   (setq _auto_mode (round __auto_mode))
   (setq _current_steer (float __current_steer))
   (setq _current_brake_pedal_pos (float __current_brake_pedal_pos))
   (setq _current_throttle_percentage (round __current_throttle_percentage))
   (setq _current_retarder_torque_percentage (round __current_retarder_torque_percentage))
   (setq _current_EPB (round __current_EPB))
   (setq _current_gear (round __current_gear))
   (setq _current_hang_angle (round __current_hang_angle))
   (setq _air_pressure1 (round __air_pressure1))
   (setq _air_pressure2 (round __air_pressure2))
   (setq _left_light (round __left_light))
   (setq _right_light (round __right_light))
   (setq _near_light (round __near_light))
   (setq _far_light (round __far_light))
   (setq _air_beep (round __air_beep))
   (setq _top_warning_light (round __top_warning_light))
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
   (setq _fuel_consumption (round __fuel_consumption))
   (setq _planner_fsm_state (string __planner_fsm_state))
   (setq _lock_down_index (round __lock_down_index))
   (setq _pt_index __pt_index)
   (setq _wpt_x __wpt_x)
   (setq _wpt_y __wpt_y)
   (setq _control_fsm_state (string __control_fsm_state))
   (setq _control_steer (float __control_steer))
   (setq _control_throttle_percentage (round __control_throttle_percentage))
   (setq _control_xbr (float __control_xbr))
   (setq _control_EPB (round __control_EPB))
   (setq _control_gear (string __control_gear))
   (setq _control_hang (string __control_hang))
   (setq _engine_fault (round __engine_fault))
   (setq _gear_fault (round __gear_fault))
   (setq _EBS_fault (round __EBS_fault))
   (setq _EPS_fault (round __EPS_fault))
   (setq _EPB_fault (round __EPB_fault))
   (setq _tyre_pressure_leftfront (round __tyre_pressure_leftfront))
   (setq _tyre_pressure_rightfront (round __tyre_pressure_rightfront))
   (setq _front_left_temperature (float __front_left_temperature))
   (setq _front_right_temperature (float __front_right_temperature))
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
  (:heading_angle
   (&optional __heading_angle)
   (if __heading_angle (setq _heading_angle __heading_angle)) _heading_angle)
  (:NumSate
   (&optional __NumSate)
   (if __NumSate (setq _NumSate __NumSate)) _NumSate)
  (:vx
   (&optional __vx)
   (if __vx (setq _vx __vx)) _vx)
  (:auto_mode
   (&optional __auto_mode)
   (if __auto_mode (setq _auto_mode __auto_mode)) _auto_mode)
  (:current_steer
   (&optional __current_steer)
   (if __current_steer (setq _current_steer __current_steer)) _current_steer)
  (:current_brake_pedal_pos
   (&optional __current_brake_pedal_pos)
   (if __current_brake_pedal_pos (setq _current_brake_pedal_pos __current_brake_pedal_pos)) _current_brake_pedal_pos)
  (:current_throttle_percentage
   (&optional __current_throttle_percentage)
   (if __current_throttle_percentage (setq _current_throttle_percentage __current_throttle_percentage)) _current_throttle_percentage)
  (:current_retarder_torque_percentage
   (&optional __current_retarder_torque_percentage)
   (if __current_retarder_torque_percentage (setq _current_retarder_torque_percentage __current_retarder_torque_percentage)) _current_retarder_torque_percentage)
  (:current_EPB
   (&optional __current_EPB)
   (if __current_EPB (setq _current_EPB __current_EPB)) _current_EPB)
  (:current_gear
   (&optional __current_gear)
   (if __current_gear (setq _current_gear __current_gear)) _current_gear)
  (:current_hang_angle
   (&optional __current_hang_angle)
   (if __current_hang_angle (setq _current_hang_angle __current_hang_angle)) _current_hang_angle)
  (:air_pressure1
   (&optional __air_pressure1)
   (if __air_pressure1 (setq _air_pressure1 __air_pressure1)) _air_pressure1)
  (:air_pressure2
   (&optional __air_pressure2)
   (if __air_pressure2 (setq _air_pressure2 __air_pressure2)) _air_pressure2)
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
  (:air_beep
   (&optional __air_beep)
   (if __air_beep (setq _air_beep __air_beep)) _air_beep)
  (:top_warning_light
   (&optional __top_warning_light)
   (if __top_warning_light (setq _top_warning_light __top_warning_light)) _top_warning_light)
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
  (:fuel_consumption
   (&optional __fuel_consumption)
   (if __fuel_consumption (setq _fuel_consumption __fuel_consumption)) _fuel_consumption)
  (:planner_fsm_state
   (&optional __planner_fsm_state)
   (if __planner_fsm_state (setq _planner_fsm_state __planner_fsm_state)) _planner_fsm_state)
  (:lock_down_index
   (&optional __lock_down_index)
   (if __lock_down_index (setq _lock_down_index __lock_down_index)) _lock_down_index)
  (:pt_index
   (&optional __pt_index)
   (if __pt_index (setq _pt_index __pt_index)) _pt_index)
  (:wpt_x
   (&optional __wpt_x)
   (if __wpt_x (setq _wpt_x __wpt_x)) _wpt_x)
  (:wpt_y
   (&optional __wpt_y)
   (if __wpt_y (setq _wpt_y __wpt_y)) _wpt_y)
  (:control_fsm_state
   (&optional __control_fsm_state)
   (if __control_fsm_state (setq _control_fsm_state __control_fsm_state)) _control_fsm_state)
  (:control_steer
   (&optional __control_steer)
   (if __control_steer (setq _control_steer __control_steer)) _control_steer)
  (:control_throttle_percentage
   (&optional __control_throttle_percentage)
   (if __control_throttle_percentage (setq _control_throttle_percentage __control_throttle_percentage)) _control_throttle_percentage)
  (:control_xbr
   (&optional __control_xbr)
   (if __control_xbr (setq _control_xbr __control_xbr)) _control_xbr)
  (:control_EPB
   (&optional __control_EPB)
   (if __control_EPB (setq _control_EPB __control_EPB)) _control_EPB)
  (:control_gear
   (&optional __control_gear)
   (if __control_gear (setq _control_gear __control_gear)) _control_gear)
  (:control_hang
   (&optional __control_hang)
   (if __control_hang (setq _control_hang __control_hang)) _control_hang)
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
  (:tyre_pressure_leftfront
   (&optional __tyre_pressure_leftfront)
   (if __tyre_pressure_leftfront (setq _tyre_pressure_leftfront __tyre_pressure_leftfront)) _tyre_pressure_leftfront)
  (:tyre_pressure_rightfront
   (&optional __tyre_pressure_rightfront)
   (if __tyre_pressure_rightfront (setq _tyre_pressure_rightfront __tyre_pressure_rightfront)) _tyre_pressure_rightfront)
  (:front_left_temperature
   (&optional __front_left_temperature)
   (if __front_left_temperature (setq _front_left_temperature __front_left_temperature)) _front_left_temperature)
  (:front_right_temperature
   (&optional __front_right_temperature)
   (if __front_right_temperature (setq _front_right_temperature __front_right_temperature)) _front_right_temperature)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _rtk_state
    4
    ;; float64 _lat
    8
    ;; float64 _lng
    8
    ;; float64 _alt
    8
    ;; float64 _x_enu
    8
    ;; float64 _y_enu
    8
    ;; float64 _z_enu
    8
    ;; float64 _xy_std_enu
    8
    ;; float64 _heading_angle
    8
    ;; int32 _NumSate
    4
    ;; float64 _vx
    8
    ;; int32 _auto_mode
    4
    ;; float64 _current_steer
    8
    ;; float64 _current_brake_pedal_pos
    8
    ;; int32 _current_throttle_percentage
    4
    ;; int32 _current_retarder_torque_percentage
    4
    ;; int32 _current_EPB
    4
    ;; int32 _current_gear
    4
    ;; int32 _current_hang_angle
    4
    ;; int32 _air_pressure1
    4
    ;; int32 _air_pressure2
    4
    ;; int32 _left_light
    4
    ;; int32 _right_light
    4
    ;; int32 _near_light
    4
    ;; int32 _far_light
    4
    ;; int32 _air_beep
    4
    ;; int32 _top_warning_light
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
    ;; int32 _fuel_consumption
    4
    ;; string _planner_fsm_state
    4 (length _planner_fsm_state)
    ;; int32 _lock_down_index
    4
    ;; int32[] _pt_index
    (* 4    (length _pt_index)) 4
    ;; float64[] _wpt_x
    (* 8    (length _wpt_x)) 4
    ;; float64[] _wpt_y
    (* 8    (length _wpt_y)) 4
    ;; string _control_fsm_state
    4 (length _control_fsm_state)
    ;; float64 _control_steer
    8
    ;; int32 _control_throttle_percentage
    4
    ;; float64 _control_xbr
    8
    ;; int32 _control_EPB
    4
    ;; string _control_gear
    4 (length _control_gear)
    ;; string _control_hang
    4 (length _control_hang)
    ;; int32 _engine_fault
    4
    ;; int32 _gear_fault
    4
    ;; int32 _EBS_fault
    4
    ;; int32 _EPS_fault
    4
    ;; int32 _EPB_fault
    4
    ;; int32 _tyre_pressure_leftfront
    4
    ;; int32 _tyre_pressure_rightfront
    4
    ;; float64 _front_left_temperature
    8
    ;; float64 _front_right_temperature
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _rtk_state
       (write-long _rtk_state s)
     ;; float64 _lat
       (sys::poke _lat (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _lng
       (sys::poke _lng (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _alt
       (sys::poke _alt (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _x_enu
       (sys::poke _x_enu (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y_enu
       (sys::poke _y_enu (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _z_enu
       (sys::poke _z_enu (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _xy_std_enu
       (sys::poke _xy_std_enu (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _heading_angle
       (sys::poke _heading_angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _NumSate
       (write-long _NumSate s)
     ;; float64 _vx
       (sys::poke _vx (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _auto_mode
       (write-long _auto_mode s)
     ;; float64 _current_steer
       (sys::poke _current_steer (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _current_brake_pedal_pos
       (sys::poke _current_brake_pedal_pos (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _current_throttle_percentage
       (write-long _current_throttle_percentage s)
     ;; int32 _current_retarder_torque_percentage
       (write-long _current_retarder_torque_percentage s)
     ;; int32 _current_EPB
       (write-long _current_EPB s)
     ;; int32 _current_gear
       (write-long _current_gear s)
     ;; int32 _current_hang_angle
       (write-long _current_hang_angle s)
     ;; int32 _air_pressure1
       (write-long _air_pressure1 s)
     ;; int32 _air_pressure2
       (write-long _air_pressure2 s)
     ;; int32 _left_light
       (write-long _left_light s)
     ;; int32 _right_light
       (write-long _right_light s)
     ;; int32 _near_light
       (write-long _near_light s)
     ;; int32 _far_light
       (write-long _far_light s)
     ;; int32 _air_beep
       (write-long _air_beep s)
     ;; int32 _top_warning_light
       (write-long _top_warning_light s)
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
     ;; int32 _fuel_consumption
       (write-long _fuel_consumption s)
     ;; string _planner_fsm_state
       (write-long (length _planner_fsm_state) s) (princ _planner_fsm_state s)
     ;; int32 _lock_down_index
       (write-long _lock_down_index s)
     ;; int32[] _pt_index
     (write-long (length _pt_index) s)
     (dotimes (i (length _pt_index))
       (write-long (elt _pt_index i) s)
       )
     ;; float64[] _wpt_x
     (write-long (length _wpt_x) s)
     (dotimes (i (length _wpt_x))
       (sys::poke (elt _wpt_x i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _wpt_y
     (write-long (length _wpt_y) s)
     (dotimes (i (length _wpt_y))
       (sys::poke (elt _wpt_y i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; string _control_fsm_state
       (write-long (length _control_fsm_state) s) (princ _control_fsm_state s)
     ;; float64 _control_steer
       (sys::poke _control_steer (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _control_throttle_percentage
       (write-long _control_throttle_percentage s)
     ;; float64 _control_xbr
       (sys::poke _control_xbr (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _control_EPB
       (write-long _control_EPB s)
     ;; string _control_gear
       (write-long (length _control_gear) s) (princ _control_gear s)
     ;; string _control_hang
       (write-long (length _control_hang) s) (princ _control_hang s)
     ;; int32 _engine_fault
       (write-long _engine_fault s)
     ;; int32 _gear_fault
       (write-long _gear_fault s)
     ;; int32 _EBS_fault
       (write-long _EBS_fault s)
     ;; int32 _EPS_fault
       (write-long _EPS_fault s)
     ;; int32 _EPB_fault
       (write-long _EPB_fault s)
     ;; int32 _tyre_pressure_leftfront
       (write-long _tyre_pressure_leftfront s)
     ;; int32 _tyre_pressure_rightfront
       (write-long _tyre_pressure_rightfront s)
     ;; float64 _front_left_temperature
       (sys::poke _front_left_temperature (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _front_right_temperature
       (sys::poke _front_right_temperature (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _rtk_state
     (setq _rtk_state (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _lat
     (setq _lat (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _lng
     (setq _lng (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _alt
     (setq _alt (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _x_enu
     (setq _x_enu (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y_enu
     (setq _y_enu (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _z_enu
     (setq _z_enu (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _xy_std_enu
     (setq _xy_std_enu (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _heading_angle
     (setq _heading_angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _NumSate
     (setq _NumSate (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _vx
     (setq _vx (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _auto_mode
     (setq _auto_mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _current_steer
     (setq _current_steer (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _current_brake_pedal_pos
     (setq _current_brake_pedal_pos (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _current_throttle_percentage
     (setq _current_throttle_percentage (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _current_retarder_torque_percentage
     (setq _current_retarder_torque_percentage (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _current_EPB
     (setq _current_EPB (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _current_gear
     (setq _current_gear (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _current_hang_angle
     (setq _current_hang_angle (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _air_pressure1
     (setq _air_pressure1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _air_pressure2
     (setq _air_pressure2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _left_light
     (setq _left_light (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _right_light
     (setq _right_light (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _near_light
     (setq _near_light (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _far_light
     (setq _far_light (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _air_beep
     (setq _air_beep (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _top_warning_light
     (setq _top_warning_light (sys::peek buf ptr- :integer)) (incf ptr- 4)
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
   ;; int32 _fuel_consumption
     (setq _fuel_consumption (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _planner_fsm_state
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _planner_fsm_state (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _lock_down_index
     (setq _lock_down_index (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32[] _pt_index
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pt_index (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _pt_index i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; float64[] _wpt_x
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _wpt_x (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _wpt_x i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _wpt_y
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _wpt_y (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _wpt_y i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; string _control_fsm_state
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _control_fsm_state (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _control_steer
     (setq _control_steer (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _control_throttle_percentage
     (setq _control_throttle_percentage (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _control_xbr
     (setq _control_xbr (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _control_EPB
     (setq _control_EPB (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _control_gear
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _control_gear (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _control_hang
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _control_hang (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _engine_fault
     (setq _engine_fault (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _gear_fault
     (setq _gear_fault (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _EBS_fault
     (setq _EBS_fault (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _EPS_fault
     (setq _EPS_fault (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _EPB_fault
     (setq _EPB_fault (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _tyre_pressure_leftfront
     (setq _tyre_pressure_leftfront (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _tyre_pressure_rightfront
     (setq _tyre_pressure_rightfront (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _front_left_temperature
     (setq _front_left_temperature (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _front_right_temperature
     (setq _front_right_temperature (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get displaydata_msgs::DisplayData :md5sum-) "4ffa05f2036a9bdc4fea667a8a91fa8a")
(setf (get displaydata_msgs::DisplayData :datatype-) "displaydata_msgs/DisplayData")
(setf (get displaydata_msgs::DisplayData :definition-)
      "Header header

# RTK state
# -1 : no gnss
# 0 : 2D or 3D gnss fix
# 1 : SBAS or Starfire gnss fix
# 2 : Diff or rtk fix
int32 rtk_state 

float64 lat
float64 lng
float64 alt

# enu coord
float64 x_enu
float64 y_enu
float64 z_enu
float64 xy_std_enu

#GPS HEADING 
float64 heading_angle

# number of satellite
int32 NumSate

# kalman velocity
float64 vx

# Tli65 vehicle can_rx
int32 auto_mode
float64 current_steer
float64 current_brake_pedal_pos
int32 current_throttle_percentage
int32 current_retarder_torque_percentage
int32 current_EPB
int32 current_gear
int32 current_hang_angle

int32 air_pressure1
int32 air_pressure2

int32 left_light
int32 right_light
int32 near_light
int32 far_light
int32 air_beep
int32 top_warning_light
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
int32 fuel_consumption

# planner waypoints
string planner_fsm_state
int32 lock_down_index
int32[] pt_index
float64[] wpt_x
float64[] wpt_y

# control
string control_fsm_state
float64 control_steer
int32 control_throttle_percentage
float64 control_xbr
int32 control_EPB
string control_gear
string control_hang
 
# ft1
int32 engine_fault
int32 gear_fault
int32 EBS_fault
int32 EPS_fault
int32 EPB_fault

# tyre
int32 tyre_pressure_leftfront
int32 tyre_pressure_rightfront
float64 front_left_temperature
float64 front_right_temperature
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



(provide :displaydata_msgs/DisplayData "4ffa05f2036a9bdc4fea667a8a91fa8a")


