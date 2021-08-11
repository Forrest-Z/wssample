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
  :slots (_header _rtk_state _lat _lng _alt _latlng_std _x_enu _y_enu _z_enu _xy_std_enu _speed _headingangle _current_steer _current_brake_pedal_pos _current_throttle_percentage _current_retarder_torque_percentage _current_EPB _current_gear _current_hangangle _auto_mode _left_light _right_light _near_light _far_light _air_beep _top_warning_light _front_fog_light _front_work_light _side_light _position_light _back_left_light _back_right_light _back_position_light _brake_light _reverse_light _back_work_light _control_steer _control_throttle_percentage _control_xbr _control_EPB _control_gear _control_hang _control_fsm_state _vehicle_auto_mode _left _right _near _far _top_warn _control_air_beep _front_fog _front_work _side _position _emergency _brake _reverse _back_work _target_x _target_y _NumSate _engine_fault _gear_fault _EBS_fault _EPS_fault _EPB_fault _truck_fault_level _engine_fault_code _gear_fault_code _EPS_fault_code _EBS_fault_code _electric_fault_code _tyre_pressure_leftfront _tyre_pressure_rightfront _front_left_temperature _front_right_temperature ))

(defmethod displaydata_msgs::DisplayData
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
    ((:speed __speed) 0.0)
    ((:headingangle __headingangle) 0.0)
    ((:current_steer __current_steer) 0.0)
    ((:current_brake_pedal_pos __current_brake_pedal_pos) 0.0)
    ((:current_throttle_percentage __current_throttle_percentage) 0)
    ((:current_retarder_torque_percentage __current_retarder_torque_percentage) 0)
    ((:current_EPB __current_EPB) 0)
    ((:current_gear __current_gear) "")
    ((:current_hangangle __current_hangangle) 0)
    ((:auto_mode __auto_mode) 0)
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
    ((:control_steer __control_steer) 0.0)
    ((:control_throttle_percentage __control_throttle_percentage) 0)
    ((:control_xbr __control_xbr) 0.0)
    ((:control_EPB __control_EPB) 0)
    ((:control_gear __control_gear) "")
    ((:control_hang __control_hang) "")
    ((:control_fsm_state __control_fsm_state) 0)
    ((:vehicle_auto_mode __vehicle_auto_mode) 0)
    ((:left __left) 0)
    ((:right __right) 0)
    ((:near __near) 0)
    ((:far __far) 0)
    ((:top_warn __top_warn) 0)
    ((:control_air_beep __control_air_beep) 0)
    ((:front_fog __front_fog) 0)
    ((:front_work __front_work) 0)
    ((:side __side) 0)
    ((:position __position) 0)
    ((:emergency __emergency) 0)
    ((:brake __brake) 0)
    ((:reverse __reverse) 0)
    ((:back_work __back_work) 0)
    ((:target_x __target_x) 0.0)
    ((:target_y __target_y) 0.0)
    ((:NumSate __NumSate) 0)
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
   (setq _latlng_std (float __latlng_std))
   (setq _x_enu (float __x_enu))
   (setq _y_enu (float __y_enu))
   (setq _z_enu (float __z_enu))
   (setq _xy_std_enu (float __xy_std_enu))
   (setq _speed (float __speed))
   (setq _headingangle (float __headingangle))
   (setq _current_steer (float __current_steer))
   (setq _current_brake_pedal_pos (float __current_brake_pedal_pos))
   (setq _current_throttle_percentage (round __current_throttle_percentage))
   (setq _current_retarder_torque_percentage (round __current_retarder_torque_percentage))
   (setq _current_EPB (round __current_EPB))
   (setq _current_gear (string __current_gear))
   (setq _current_hangangle (round __current_hangangle))
   (setq _auto_mode (round __auto_mode))
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
   (setq _control_steer (float __control_steer))
   (setq _control_throttle_percentage (round __control_throttle_percentage))
   (setq _control_xbr (float __control_xbr))
   (setq _control_EPB (round __control_EPB))
   (setq _control_gear (string __control_gear))
   (setq _control_hang (string __control_hang))
   (setq _control_fsm_state (round __control_fsm_state))
   (setq _vehicle_auto_mode (round __vehicle_auto_mode))
   (setq _left (round __left))
   (setq _right (round __right))
   (setq _near (round __near))
   (setq _far (round __far))
   (setq _top_warn (round __top_warn))
   (setq _control_air_beep (round __control_air_beep))
   (setq _front_fog (round __front_fog))
   (setq _front_work (round __front_work))
   (setq _side (round __side))
   (setq _position (round __position))
   (setq _emergency (round __emergency))
   (setq _brake (round __brake))
   (setq _reverse (round __reverse))
   (setq _back_work (round __back_work))
   (setq _target_x (float __target_x))
   (setq _target_y (float __target_y))
   (setq _NumSate (round __NumSate))
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
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:headingangle
   (&optional __headingangle)
   (if __headingangle (setq _headingangle __headingangle)) _headingangle)
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
  (:current_hangangle
   (&optional __current_hangangle)
   (if __current_hangangle (setq _current_hangangle __current_hangangle)) _current_hangangle)
  (:auto_mode
   (&optional __auto_mode)
   (if __auto_mode (setq _auto_mode __auto_mode)) _auto_mode)
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
  (:control_fsm_state
   (&optional __control_fsm_state)
   (if __control_fsm_state (setq _control_fsm_state __control_fsm_state)) _control_fsm_state)
  (:vehicle_auto_mode
   (&optional __vehicle_auto_mode)
   (if __vehicle_auto_mode (setq _vehicle_auto_mode __vehicle_auto_mode)) _vehicle_auto_mode)
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
  (:control_air_beep
   (&optional __control_air_beep)
   (if __control_air_beep (setq _control_air_beep __control_air_beep)) _control_air_beep)
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
  (:target_x
   (&optional __target_x)
   (if __target_x (setq _target_x __target_x)) _target_x)
  (:target_y
   (&optional __target_y)
   (if __target_y (setq _target_y __target_y)) _target_y)
  (:NumSate
   (&optional __NumSate)
   (if __NumSate (setq _NumSate __NumSate)) _NumSate)
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
    ;; float64 _speed
    8
    ;; float64 _headingangle
    8
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
    ;; string _current_gear
    4 (length _current_gear)
    ;; int32 _current_hangangle
    4
    ;; int32 _auto_mode
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
    ;; int32 _control_fsm_state
    4
    ;; int32 _vehicle_auto_mode
    4
    ;; int32 _left
    4
    ;; int32 _right
    4
    ;; int32 _near
    4
    ;; int32 _far
    4
    ;; int32 _top_warn
    4
    ;; int32 _control_air_beep
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
    ;; float64 _target_x
    8
    ;; float64 _target_y
    8
    ;; int32 _NumSate
    4
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
    ;; int32 _truck_fault_level
    4
    ;; int32 _engine_fault_code
    4
    ;; int32 _gear_fault_code
    4
    ;; int32 _EPS_fault_code
    4
    ;; int32 _EBS_fault_code
    4
    ;; int32 _electric_fault_code
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
     ;; float64 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _headingangle
       (sys::poke _headingangle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
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
     ;; string _current_gear
       (write-long (length _current_gear) s) (princ _current_gear s)
     ;; int32 _current_hangangle
       (write-long _current_hangangle s)
     ;; int32 _auto_mode
       (write-long _auto_mode s)
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
     ;; int32 _control_fsm_state
       (write-long _control_fsm_state s)
     ;; int32 _vehicle_auto_mode
       (write-long _vehicle_auto_mode s)
     ;; int32 _left
       (write-long _left s)
     ;; int32 _right
       (write-long _right s)
     ;; int32 _near
       (write-long _near s)
     ;; int32 _far
       (write-long _far s)
     ;; int32 _top_warn
       (write-long _top_warn s)
     ;; int32 _control_air_beep
       (write-long _control_air_beep s)
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
     ;; float64 _target_x
       (sys::poke _target_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _target_y
       (sys::poke _target_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _NumSate
       (write-long _NumSate s)
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
     ;; int32 _truck_fault_level
       (write-long _truck_fault_level s)
     ;; int32 _engine_fault_code
       (write-long _engine_fault_code s)
     ;; int32 _gear_fault_code
       (write-long _gear_fault_code s)
     ;; int32 _EPS_fault_code
       (write-long _EPS_fault_code s)
     ;; int32 _EBS_fault_code
       (write-long _EBS_fault_code s)
     ;; int32 _electric_fault_code
       (write-long _electric_fault_code s)
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
   ;; float64 _speed
     (setq _speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _headingangle
     (setq _headingangle (sys::peek buf ptr- :double)) (incf ptr- 8)
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
   ;; string _current_gear
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _current_gear (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _current_hangangle
     (setq _current_hangangle (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _auto_mode
     (setq _auto_mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
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
   ;; int32 _control_fsm_state
     (setq _control_fsm_state (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _vehicle_auto_mode
     (setq _vehicle_auto_mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _left
     (setq _left (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _right
     (setq _right (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _near
     (setq _near (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _far
     (setq _far (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _top_warn
     (setq _top_warn (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _control_air_beep
     (setq _control_air_beep (sys::peek buf ptr- :integer)) (incf ptr- 4)
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
   ;; float64 _target_x
     (setq _target_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _target_y
     (setq _target_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _NumSate
     (setq _NumSate (sys::peek buf ptr- :integer)) (incf ptr- 4)
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
   ;; int32 _truck_fault_level
     (setq _truck_fault_level (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _engine_fault_code
     (setq _engine_fault_code (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _gear_fault_code
     (setq _gear_fault_code (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _EPS_fault_code
     (setq _EPS_fault_code (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _EBS_fault_code
     (setq _EBS_fault_code (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _electric_fault_code
     (setq _electric_fault_code (sys::peek buf ptr- :integer)) (incf ptr- 4)
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

(setf (get displaydata_msgs::DisplayData :md5sum-) "46adc89bdab4634e8fe445e04537579f")
(setf (get displaydata_msgs::DisplayData :datatype-) "displaydata_msgs/DisplayData")
(setf (get displaydata_msgs::DisplayData :definition-)
      "Header header

# RTK
int32 rtk_state 
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

# kalman speed
float64 speed

#GPS HEADING 
float64 headingangle

# Tli65 vehicle parameters can_rx
float64 current_steer
float64 current_brake_pedal_pos
int32 current_throttle_percentage
int32 current_retarder_torque_percentage
int32 current_EPB
string current_gear
int32 current_hangangle
int32 auto_mode
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

# Tli65 vehicle parameters can_rx
float64 control_steer
int32 control_throttle_percentage
float64 control_xbr
int32 control_EPB
string control_gear
string control_hang
int32 control_fsm_state
int32 vehicle_auto_mode
int32 left
int32 right
int32 near
int32 far
int32 top_warn
int32 control_air_beep
int32 front_fog
int32 front_work
int32 side
int32 position
int32 emergency
int32 brake
int32 reverse
int32 back_work

# waypoints planning 
float64 target_x
float64 target_y

# number of satellite
int32 NumSate

# VEHICLE Fault Information 
# ft1
int32 engine_fault
int32 gear_fault
int32 EBS_fault
int32 EPS_fault
int32 EPB_fault

# ft2
int32 truck_fault_level
int32 engine_fault_code
int32 gear_fault_code

# ft3
int32 EPS_fault_code
int32 EBS_fault_code
int32 electric_fault_code

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



(provide :displaydata_msgs/DisplayData "46adc89bdab4634e8fe445e04537579f")


