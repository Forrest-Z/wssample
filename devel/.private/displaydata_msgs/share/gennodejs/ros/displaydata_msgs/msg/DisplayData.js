// Auto-generated. Do not edit!

// (in-package displaydata_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class DisplayData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.rtk_state = null;
      this.lat = null;
      this.lng = null;
      this.alt = null;
      this.latlng_std = null;
      this.x_enu = null;
      this.y_enu = null;
      this.z_enu = null;
      this.xy_std_enu = null;
      this.speed = null;
      this.headingangle = null;
      this.current_steer = null;
      this.current_brake_pedal_pos = null;
      this.current_throttle_percentage = null;
      this.current_retarder_torque_percentage = null;
      this.current_EPB = null;
      this.current_gear = null;
      this.current_hangangle = null;
      this.auto_mode = null;
      this.left_light = null;
      this.right_light = null;
      this.near_light = null;
      this.far_light = null;
      this.air_beep = null;
      this.top_warning_light = null;
      this.front_fog_light = null;
      this.front_work_light = null;
      this.side_light = null;
      this.position_light = null;
      this.back_left_light = null;
      this.back_right_light = null;
      this.back_position_light = null;
      this.brake_light = null;
      this.reverse_light = null;
      this.back_work_light = null;
      this.fuel_consumption = null;
      this.control_steer = null;
      this.control_throttle_percentage = null;
      this.control_xbr = null;
      this.control_EPB = null;
      this.control_gear = null;
      this.control_hang = null;
      this.control_fsm_state = null;
      this.vehicle_auto_mode = null;
      this.left = null;
      this.right = null;
      this.near = null;
      this.far = null;
      this.top_warn = null;
      this.control_air_beep = null;
      this.front_fog = null;
      this.front_work = null;
      this.side = null;
      this.position = null;
      this.emergency = null;
      this.brake = null;
      this.reverse = null;
      this.back_work = null;
      this.target_x = null;
      this.target_y = null;
      this.planner_fsm = null;
      this.NumSate = null;
      this.engine_fault = null;
      this.gear_fault = null;
      this.EBS_fault = null;
      this.EPS_fault = null;
      this.EPB_fault = null;
      this.truck_fault_level = null;
      this.engine_fault_code = null;
      this.gear_fault_code = null;
      this.EPS_fault_code = null;
      this.EBS_fault_code = null;
      this.electric_fault_code = null;
      this.tyre_pressure_leftfront = null;
      this.tyre_pressure_rightfront = null;
      this.front_left_temperature = null;
      this.front_right_temperature = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('rtk_state')) {
        this.rtk_state = initObj.rtk_state
      }
      else {
        this.rtk_state = 0;
      }
      if (initObj.hasOwnProperty('lat')) {
        this.lat = initObj.lat
      }
      else {
        this.lat = 0.0;
      }
      if (initObj.hasOwnProperty('lng')) {
        this.lng = initObj.lng
      }
      else {
        this.lng = 0.0;
      }
      if (initObj.hasOwnProperty('alt')) {
        this.alt = initObj.alt
      }
      else {
        this.alt = 0.0;
      }
      if (initObj.hasOwnProperty('latlng_std')) {
        this.latlng_std = initObj.latlng_std
      }
      else {
        this.latlng_std = 0.0;
      }
      if (initObj.hasOwnProperty('x_enu')) {
        this.x_enu = initObj.x_enu
      }
      else {
        this.x_enu = 0.0;
      }
      if (initObj.hasOwnProperty('y_enu')) {
        this.y_enu = initObj.y_enu
      }
      else {
        this.y_enu = 0.0;
      }
      if (initObj.hasOwnProperty('z_enu')) {
        this.z_enu = initObj.z_enu
      }
      else {
        this.z_enu = 0.0;
      }
      if (initObj.hasOwnProperty('xy_std_enu')) {
        this.xy_std_enu = initObj.xy_std_enu
      }
      else {
        this.xy_std_enu = 0.0;
      }
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = 0.0;
      }
      if (initObj.hasOwnProperty('headingangle')) {
        this.headingangle = initObj.headingangle
      }
      else {
        this.headingangle = 0.0;
      }
      if (initObj.hasOwnProperty('current_steer')) {
        this.current_steer = initObj.current_steer
      }
      else {
        this.current_steer = 0.0;
      }
      if (initObj.hasOwnProperty('current_brake_pedal_pos')) {
        this.current_brake_pedal_pos = initObj.current_brake_pedal_pos
      }
      else {
        this.current_brake_pedal_pos = 0.0;
      }
      if (initObj.hasOwnProperty('current_throttle_percentage')) {
        this.current_throttle_percentage = initObj.current_throttle_percentage
      }
      else {
        this.current_throttle_percentage = 0;
      }
      if (initObj.hasOwnProperty('current_retarder_torque_percentage')) {
        this.current_retarder_torque_percentage = initObj.current_retarder_torque_percentage
      }
      else {
        this.current_retarder_torque_percentage = 0;
      }
      if (initObj.hasOwnProperty('current_EPB')) {
        this.current_EPB = initObj.current_EPB
      }
      else {
        this.current_EPB = 0;
      }
      if (initObj.hasOwnProperty('current_gear')) {
        this.current_gear = initObj.current_gear
      }
      else {
        this.current_gear = '';
      }
      if (initObj.hasOwnProperty('current_hangangle')) {
        this.current_hangangle = initObj.current_hangangle
      }
      else {
        this.current_hangangle = 0;
      }
      if (initObj.hasOwnProperty('auto_mode')) {
        this.auto_mode = initObj.auto_mode
      }
      else {
        this.auto_mode = 0;
      }
      if (initObj.hasOwnProperty('left_light')) {
        this.left_light = initObj.left_light
      }
      else {
        this.left_light = 0;
      }
      if (initObj.hasOwnProperty('right_light')) {
        this.right_light = initObj.right_light
      }
      else {
        this.right_light = 0;
      }
      if (initObj.hasOwnProperty('near_light')) {
        this.near_light = initObj.near_light
      }
      else {
        this.near_light = 0;
      }
      if (initObj.hasOwnProperty('far_light')) {
        this.far_light = initObj.far_light
      }
      else {
        this.far_light = 0;
      }
      if (initObj.hasOwnProperty('air_beep')) {
        this.air_beep = initObj.air_beep
      }
      else {
        this.air_beep = 0;
      }
      if (initObj.hasOwnProperty('top_warning_light')) {
        this.top_warning_light = initObj.top_warning_light
      }
      else {
        this.top_warning_light = 0;
      }
      if (initObj.hasOwnProperty('front_fog_light')) {
        this.front_fog_light = initObj.front_fog_light
      }
      else {
        this.front_fog_light = 0;
      }
      if (initObj.hasOwnProperty('front_work_light')) {
        this.front_work_light = initObj.front_work_light
      }
      else {
        this.front_work_light = 0;
      }
      if (initObj.hasOwnProperty('side_light')) {
        this.side_light = initObj.side_light
      }
      else {
        this.side_light = 0;
      }
      if (initObj.hasOwnProperty('position_light')) {
        this.position_light = initObj.position_light
      }
      else {
        this.position_light = 0;
      }
      if (initObj.hasOwnProperty('back_left_light')) {
        this.back_left_light = initObj.back_left_light
      }
      else {
        this.back_left_light = 0;
      }
      if (initObj.hasOwnProperty('back_right_light')) {
        this.back_right_light = initObj.back_right_light
      }
      else {
        this.back_right_light = 0;
      }
      if (initObj.hasOwnProperty('back_position_light')) {
        this.back_position_light = initObj.back_position_light
      }
      else {
        this.back_position_light = 0;
      }
      if (initObj.hasOwnProperty('brake_light')) {
        this.brake_light = initObj.brake_light
      }
      else {
        this.brake_light = 0;
      }
      if (initObj.hasOwnProperty('reverse_light')) {
        this.reverse_light = initObj.reverse_light
      }
      else {
        this.reverse_light = 0;
      }
      if (initObj.hasOwnProperty('back_work_light')) {
        this.back_work_light = initObj.back_work_light
      }
      else {
        this.back_work_light = 0;
      }
      if (initObj.hasOwnProperty('fuel_consumption')) {
        this.fuel_consumption = initObj.fuel_consumption
      }
      else {
        this.fuel_consumption = 0;
      }
      if (initObj.hasOwnProperty('control_steer')) {
        this.control_steer = initObj.control_steer
      }
      else {
        this.control_steer = 0.0;
      }
      if (initObj.hasOwnProperty('control_throttle_percentage')) {
        this.control_throttle_percentage = initObj.control_throttle_percentage
      }
      else {
        this.control_throttle_percentage = 0;
      }
      if (initObj.hasOwnProperty('control_xbr')) {
        this.control_xbr = initObj.control_xbr
      }
      else {
        this.control_xbr = 0.0;
      }
      if (initObj.hasOwnProperty('control_EPB')) {
        this.control_EPB = initObj.control_EPB
      }
      else {
        this.control_EPB = 0;
      }
      if (initObj.hasOwnProperty('control_gear')) {
        this.control_gear = initObj.control_gear
      }
      else {
        this.control_gear = '';
      }
      if (initObj.hasOwnProperty('control_hang')) {
        this.control_hang = initObj.control_hang
      }
      else {
        this.control_hang = '';
      }
      if (initObj.hasOwnProperty('control_fsm_state')) {
        this.control_fsm_state = initObj.control_fsm_state
      }
      else {
        this.control_fsm_state = 0;
      }
      if (initObj.hasOwnProperty('vehicle_auto_mode')) {
        this.vehicle_auto_mode = initObj.vehicle_auto_mode
      }
      else {
        this.vehicle_auto_mode = 0;
      }
      if (initObj.hasOwnProperty('left')) {
        this.left = initObj.left
      }
      else {
        this.left = 0;
      }
      if (initObj.hasOwnProperty('right')) {
        this.right = initObj.right
      }
      else {
        this.right = 0;
      }
      if (initObj.hasOwnProperty('near')) {
        this.near = initObj.near
      }
      else {
        this.near = 0;
      }
      if (initObj.hasOwnProperty('far')) {
        this.far = initObj.far
      }
      else {
        this.far = 0;
      }
      if (initObj.hasOwnProperty('top_warn')) {
        this.top_warn = initObj.top_warn
      }
      else {
        this.top_warn = 0;
      }
      if (initObj.hasOwnProperty('control_air_beep')) {
        this.control_air_beep = initObj.control_air_beep
      }
      else {
        this.control_air_beep = 0;
      }
      if (initObj.hasOwnProperty('front_fog')) {
        this.front_fog = initObj.front_fog
      }
      else {
        this.front_fog = 0;
      }
      if (initObj.hasOwnProperty('front_work')) {
        this.front_work = initObj.front_work
      }
      else {
        this.front_work = 0;
      }
      if (initObj.hasOwnProperty('side')) {
        this.side = initObj.side
      }
      else {
        this.side = 0;
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = 0;
      }
      if (initObj.hasOwnProperty('emergency')) {
        this.emergency = initObj.emergency
      }
      else {
        this.emergency = 0;
      }
      if (initObj.hasOwnProperty('brake')) {
        this.brake = initObj.brake
      }
      else {
        this.brake = 0;
      }
      if (initObj.hasOwnProperty('reverse')) {
        this.reverse = initObj.reverse
      }
      else {
        this.reverse = 0;
      }
      if (initObj.hasOwnProperty('back_work')) {
        this.back_work = initObj.back_work
      }
      else {
        this.back_work = 0;
      }
      if (initObj.hasOwnProperty('target_x')) {
        this.target_x = initObj.target_x
      }
      else {
        this.target_x = 0.0;
      }
      if (initObj.hasOwnProperty('target_y')) {
        this.target_y = initObj.target_y
      }
      else {
        this.target_y = 0.0;
      }
      if (initObj.hasOwnProperty('planner_fsm')) {
        this.planner_fsm = initObj.planner_fsm
      }
      else {
        this.planner_fsm = 0;
      }
      if (initObj.hasOwnProperty('NumSate')) {
        this.NumSate = initObj.NumSate
      }
      else {
        this.NumSate = 0;
      }
      if (initObj.hasOwnProperty('engine_fault')) {
        this.engine_fault = initObj.engine_fault
      }
      else {
        this.engine_fault = 0;
      }
      if (initObj.hasOwnProperty('gear_fault')) {
        this.gear_fault = initObj.gear_fault
      }
      else {
        this.gear_fault = 0;
      }
      if (initObj.hasOwnProperty('EBS_fault')) {
        this.EBS_fault = initObj.EBS_fault
      }
      else {
        this.EBS_fault = 0;
      }
      if (initObj.hasOwnProperty('EPS_fault')) {
        this.EPS_fault = initObj.EPS_fault
      }
      else {
        this.EPS_fault = 0;
      }
      if (initObj.hasOwnProperty('EPB_fault')) {
        this.EPB_fault = initObj.EPB_fault
      }
      else {
        this.EPB_fault = 0;
      }
      if (initObj.hasOwnProperty('truck_fault_level')) {
        this.truck_fault_level = initObj.truck_fault_level
      }
      else {
        this.truck_fault_level = 0;
      }
      if (initObj.hasOwnProperty('engine_fault_code')) {
        this.engine_fault_code = initObj.engine_fault_code
      }
      else {
        this.engine_fault_code = 0;
      }
      if (initObj.hasOwnProperty('gear_fault_code')) {
        this.gear_fault_code = initObj.gear_fault_code
      }
      else {
        this.gear_fault_code = 0;
      }
      if (initObj.hasOwnProperty('EPS_fault_code')) {
        this.EPS_fault_code = initObj.EPS_fault_code
      }
      else {
        this.EPS_fault_code = 0;
      }
      if (initObj.hasOwnProperty('EBS_fault_code')) {
        this.EBS_fault_code = initObj.EBS_fault_code
      }
      else {
        this.EBS_fault_code = 0;
      }
      if (initObj.hasOwnProperty('electric_fault_code')) {
        this.electric_fault_code = initObj.electric_fault_code
      }
      else {
        this.electric_fault_code = 0;
      }
      if (initObj.hasOwnProperty('tyre_pressure_leftfront')) {
        this.tyre_pressure_leftfront = initObj.tyre_pressure_leftfront
      }
      else {
        this.tyre_pressure_leftfront = 0;
      }
      if (initObj.hasOwnProperty('tyre_pressure_rightfront')) {
        this.tyre_pressure_rightfront = initObj.tyre_pressure_rightfront
      }
      else {
        this.tyre_pressure_rightfront = 0;
      }
      if (initObj.hasOwnProperty('front_left_temperature')) {
        this.front_left_temperature = initObj.front_left_temperature
      }
      else {
        this.front_left_temperature = 0.0;
      }
      if (initObj.hasOwnProperty('front_right_temperature')) {
        this.front_right_temperature = initObj.front_right_temperature
      }
      else {
        this.front_right_temperature = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DisplayData
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [rtk_state]
    bufferOffset = _serializer.int32(obj.rtk_state, buffer, bufferOffset);
    // Serialize message field [lat]
    bufferOffset = _serializer.float64(obj.lat, buffer, bufferOffset);
    // Serialize message field [lng]
    bufferOffset = _serializer.float64(obj.lng, buffer, bufferOffset);
    // Serialize message field [alt]
    bufferOffset = _serializer.float64(obj.alt, buffer, bufferOffset);
    // Serialize message field [latlng_std]
    bufferOffset = _serializer.float64(obj.latlng_std, buffer, bufferOffset);
    // Serialize message field [x_enu]
    bufferOffset = _serializer.float64(obj.x_enu, buffer, bufferOffset);
    // Serialize message field [y_enu]
    bufferOffset = _serializer.float64(obj.y_enu, buffer, bufferOffset);
    // Serialize message field [z_enu]
    bufferOffset = _serializer.float64(obj.z_enu, buffer, bufferOffset);
    // Serialize message field [xy_std_enu]
    bufferOffset = _serializer.float64(obj.xy_std_enu, buffer, bufferOffset);
    // Serialize message field [speed]
    bufferOffset = _serializer.float64(obj.speed, buffer, bufferOffset);
    // Serialize message field [headingangle]
    bufferOffset = _serializer.float64(obj.headingangle, buffer, bufferOffset);
    // Serialize message field [current_steer]
    bufferOffset = _serializer.float64(obj.current_steer, buffer, bufferOffset);
    // Serialize message field [current_brake_pedal_pos]
    bufferOffset = _serializer.float64(obj.current_brake_pedal_pos, buffer, bufferOffset);
    // Serialize message field [current_throttle_percentage]
    bufferOffset = _serializer.int32(obj.current_throttle_percentage, buffer, bufferOffset);
    // Serialize message field [current_retarder_torque_percentage]
    bufferOffset = _serializer.int32(obj.current_retarder_torque_percentage, buffer, bufferOffset);
    // Serialize message field [current_EPB]
    bufferOffset = _serializer.int32(obj.current_EPB, buffer, bufferOffset);
    // Serialize message field [current_gear]
    bufferOffset = _serializer.string(obj.current_gear, buffer, bufferOffset);
    // Serialize message field [current_hangangle]
    bufferOffset = _serializer.int32(obj.current_hangangle, buffer, bufferOffset);
    // Serialize message field [auto_mode]
    bufferOffset = _serializer.int32(obj.auto_mode, buffer, bufferOffset);
    // Serialize message field [left_light]
    bufferOffset = _serializer.int32(obj.left_light, buffer, bufferOffset);
    // Serialize message field [right_light]
    bufferOffset = _serializer.int32(obj.right_light, buffer, bufferOffset);
    // Serialize message field [near_light]
    bufferOffset = _serializer.int32(obj.near_light, buffer, bufferOffset);
    // Serialize message field [far_light]
    bufferOffset = _serializer.int32(obj.far_light, buffer, bufferOffset);
    // Serialize message field [air_beep]
    bufferOffset = _serializer.int32(obj.air_beep, buffer, bufferOffset);
    // Serialize message field [top_warning_light]
    bufferOffset = _serializer.int32(obj.top_warning_light, buffer, bufferOffset);
    // Serialize message field [front_fog_light]
    bufferOffset = _serializer.int32(obj.front_fog_light, buffer, bufferOffset);
    // Serialize message field [front_work_light]
    bufferOffset = _serializer.int32(obj.front_work_light, buffer, bufferOffset);
    // Serialize message field [side_light]
    bufferOffset = _serializer.int32(obj.side_light, buffer, bufferOffset);
    // Serialize message field [position_light]
    bufferOffset = _serializer.int32(obj.position_light, buffer, bufferOffset);
    // Serialize message field [back_left_light]
    bufferOffset = _serializer.int32(obj.back_left_light, buffer, bufferOffset);
    // Serialize message field [back_right_light]
    bufferOffset = _serializer.int32(obj.back_right_light, buffer, bufferOffset);
    // Serialize message field [back_position_light]
    bufferOffset = _serializer.int32(obj.back_position_light, buffer, bufferOffset);
    // Serialize message field [brake_light]
    bufferOffset = _serializer.int32(obj.brake_light, buffer, bufferOffset);
    // Serialize message field [reverse_light]
    bufferOffset = _serializer.int32(obj.reverse_light, buffer, bufferOffset);
    // Serialize message field [back_work_light]
    bufferOffset = _serializer.int32(obj.back_work_light, buffer, bufferOffset);
    // Serialize message field [fuel_consumption]
    bufferOffset = _serializer.int32(obj.fuel_consumption, buffer, bufferOffset);
    // Serialize message field [control_steer]
    bufferOffset = _serializer.float64(obj.control_steer, buffer, bufferOffset);
    // Serialize message field [control_throttle_percentage]
    bufferOffset = _serializer.int32(obj.control_throttle_percentage, buffer, bufferOffset);
    // Serialize message field [control_xbr]
    bufferOffset = _serializer.float64(obj.control_xbr, buffer, bufferOffset);
    // Serialize message field [control_EPB]
    bufferOffset = _serializer.int32(obj.control_EPB, buffer, bufferOffset);
    // Serialize message field [control_gear]
    bufferOffset = _serializer.string(obj.control_gear, buffer, bufferOffset);
    // Serialize message field [control_hang]
    bufferOffset = _serializer.string(obj.control_hang, buffer, bufferOffset);
    // Serialize message field [control_fsm_state]
    bufferOffset = _serializer.int32(obj.control_fsm_state, buffer, bufferOffset);
    // Serialize message field [vehicle_auto_mode]
    bufferOffset = _serializer.int32(obj.vehicle_auto_mode, buffer, bufferOffset);
    // Serialize message field [left]
    bufferOffset = _serializer.int32(obj.left, buffer, bufferOffset);
    // Serialize message field [right]
    bufferOffset = _serializer.int32(obj.right, buffer, bufferOffset);
    // Serialize message field [near]
    bufferOffset = _serializer.int32(obj.near, buffer, bufferOffset);
    // Serialize message field [far]
    bufferOffset = _serializer.int32(obj.far, buffer, bufferOffset);
    // Serialize message field [top_warn]
    bufferOffset = _serializer.int32(obj.top_warn, buffer, bufferOffset);
    // Serialize message field [control_air_beep]
    bufferOffset = _serializer.int32(obj.control_air_beep, buffer, bufferOffset);
    // Serialize message field [front_fog]
    bufferOffset = _serializer.int32(obj.front_fog, buffer, bufferOffset);
    // Serialize message field [front_work]
    bufferOffset = _serializer.int32(obj.front_work, buffer, bufferOffset);
    // Serialize message field [side]
    bufferOffset = _serializer.int32(obj.side, buffer, bufferOffset);
    // Serialize message field [position]
    bufferOffset = _serializer.int32(obj.position, buffer, bufferOffset);
    // Serialize message field [emergency]
    bufferOffset = _serializer.int32(obj.emergency, buffer, bufferOffset);
    // Serialize message field [brake]
    bufferOffset = _serializer.int32(obj.brake, buffer, bufferOffset);
    // Serialize message field [reverse]
    bufferOffset = _serializer.int32(obj.reverse, buffer, bufferOffset);
    // Serialize message field [back_work]
    bufferOffset = _serializer.int32(obj.back_work, buffer, bufferOffset);
    // Serialize message field [target_x]
    bufferOffset = _serializer.float64(obj.target_x, buffer, bufferOffset);
    // Serialize message field [target_y]
    bufferOffset = _serializer.float64(obj.target_y, buffer, bufferOffset);
    // Serialize message field [planner_fsm]
    bufferOffset = _serializer.int32(obj.planner_fsm, buffer, bufferOffset);
    // Serialize message field [NumSate]
    bufferOffset = _serializer.int32(obj.NumSate, buffer, bufferOffset);
    // Serialize message field [engine_fault]
    bufferOffset = _serializer.int32(obj.engine_fault, buffer, bufferOffset);
    // Serialize message field [gear_fault]
    bufferOffset = _serializer.int32(obj.gear_fault, buffer, bufferOffset);
    // Serialize message field [EBS_fault]
    bufferOffset = _serializer.int32(obj.EBS_fault, buffer, bufferOffset);
    // Serialize message field [EPS_fault]
    bufferOffset = _serializer.int32(obj.EPS_fault, buffer, bufferOffset);
    // Serialize message field [EPB_fault]
    bufferOffset = _serializer.int32(obj.EPB_fault, buffer, bufferOffset);
    // Serialize message field [truck_fault_level]
    bufferOffset = _serializer.int32(obj.truck_fault_level, buffer, bufferOffset);
    // Serialize message field [engine_fault_code]
    bufferOffset = _serializer.int32(obj.engine_fault_code, buffer, bufferOffset);
    // Serialize message field [gear_fault_code]
    bufferOffset = _serializer.int32(obj.gear_fault_code, buffer, bufferOffset);
    // Serialize message field [EPS_fault_code]
    bufferOffset = _serializer.int32(obj.EPS_fault_code, buffer, bufferOffset);
    // Serialize message field [EBS_fault_code]
    bufferOffset = _serializer.int32(obj.EBS_fault_code, buffer, bufferOffset);
    // Serialize message field [electric_fault_code]
    bufferOffset = _serializer.int32(obj.electric_fault_code, buffer, bufferOffset);
    // Serialize message field [tyre_pressure_leftfront]
    bufferOffset = _serializer.int32(obj.tyre_pressure_leftfront, buffer, bufferOffset);
    // Serialize message field [tyre_pressure_rightfront]
    bufferOffset = _serializer.int32(obj.tyre_pressure_rightfront, buffer, bufferOffset);
    // Serialize message field [front_left_temperature]
    bufferOffset = _serializer.float64(obj.front_left_temperature, buffer, bufferOffset);
    // Serialize message field [front_right_temperature]
    bufferOffset = _serializer.float64(obj.front_right_temperature, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DisplayData
    let len;
    let data = new DisplayData(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [rtk_state]
    data.rtk_state = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [lat]
    data.lat = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [lng]
    data.lng = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [alt]
    data.alt = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [latlng_std]
    data.latlng_std = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [x_enu]
    data.x_enu = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [y_enu]
    data.y_enu = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [z_enu]
    data.z_enu = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [xy_std_enu]
    data.xy_std_enu = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [speed]
    data.speed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [headingangle]
    data.headingangle = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [current_steer]
    data.current_steer = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [current_brake_pedal_pos]
    data.current_brake_pedal_pos = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [current_throttle_percentage]
    data.current_throttle_percentage = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [current_retarder_torque_percentage]
    data.current_retarder_torque_percentage = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [current_EPB]
    data.current_EPB = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [current_gear]
    data.current_gear = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [current_hangangle]
    data.current_hangangle = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [auto_mode]
    data.auto_mode = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [left_light]
    data.left_light = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [right_light]
    data.right_light = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [near_light]
    data.near_light = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [far_light]
    data.far_light = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [air_beep]
    data.air_beep = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [top_warning_light]
    data.top_warning_light = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [front_fog_light]
    data.front_fog_light = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [front_work_light]
    data.front_work_light = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [side_light]
    data.side_light = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [position_light]
    data.position_light = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [back_left_light]
    data.back_left_light = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [back_right_light]
    data.back_right_light = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [back_position_light]
    data.back_position_light = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [brake_light]
    data.brake_light = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [reverse_light]
    data.reverse_light = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [back_work_light]
    data.back_work_light = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [fuel_consumption]
    data.fuel_consumption = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [control_steer]
    data.control_steer = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [control_throttle_percentage]
    data.control_throttle_percentage = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [control_xbr]
    data.control_xbr = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [control_EPB]
    data.control_EPB = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [control_gear]
    data.control_gear = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [control_hang]
    data.control_hang = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [control_fsm_state]
    data.control_fsm_state = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [vehicle_auto_mode]
    data.vehicle_auto_mode = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [left]
    data.left = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [right]
    data.right = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [near]
    data.near = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [far]
    data.far = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [top_warn]
    data.top_warn = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [control_air_beep]
    data.control_air_beep = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [front_fog]
    data.front_fog = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [front_work]
    data.front_work = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [side]
    data.side = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [emergency]
    data.emergency = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [brake]
    data.brake = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [reverse]
    data.reverse = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [back_work]
    data.back_work = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [target_x]
    data.target_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [target_y]
    data.target_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [planner_fsm]
    data.planner_fsm = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [NumSate]
    data.NumSate = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [engine_fault]
    data.engine_fault = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [gear_fault]
    data.gear_fault = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [EBS_fault]
    data.EBS_fault = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [EPS_fault]
    data.EPS_fault = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [EPB_fault]
    data.EPB_fault = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [truck_fault_level]
    data.truck_fault_level = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [engine_fault_code]
    data.engine_fault_code = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [gear_fault_code]
    data.gear_fault_code = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [EPS_fault_code]
    data.EPS_fault_code = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [EBS_fault_code]
    data.EBS_fault_code = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [electric_fault_code]
    data.electric_fault_code = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [tyre_pressure_leftfront]
    data.tyre_pressure_leftfront = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [tyre_pressure_rightfront]
    data.tyre_pressure_rightfront = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [front_left_temperature]
    data.front_left_temperature = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [front_right_temperature]
    data.front_right_temperature = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.current_gear.length;
    length += object.control_gear.length;
    length += object.control_hang.length;
    return length + 380;
  }

  static datatype() {
    // Returns string type for a message object
    return 'displaydata_msgs/DisplayData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '75ffc4b8292bc3aabb3225b01b095200';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
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
    int32 fuel_consumption
    
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
    int32 planner_fsm
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DisplayData(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.rtk_state !== undefined) {
      resolved.rtk_state = msg.rtk_state;
    }
    else {
      resolved.rtk_state = 0
    }

    if (msg.lat !== undefined) {
      resolved.lat = msg.lat;
    }
    else {
      resolved.lat = 0.0
    }

    if (msg.lng !== undefined) {
      resolved.lng = msg.lng;
    }
    else {
      resolved.lng = 0.0
    }

    if (msg.alt !== undefined) {
      resolved.alt = msg.alt;
    }
    else {
      resolved.alt = 0.0
    }

    if (msg.latlng_std !== undefined) {
      resolved.latlng_std = msg.latlng_std;
    }
    else {
      resolved.latlng_std = 0.0
    }

    if (msg.x_enu !== undefined) {
      resolved.x_enu = msg.x_enu;
    }
    else {
      resolved.x_enu = 0.0
    }

    if (msg.y_enu !== undefined) {
      resolved.y_enu = msg.y_enu;
    }
    else {
      resolved.y_enu = 0.0
    }

    if (msg.z_enu !== undefined) {
      resolved.z_enu = msg.z_enu;
    }
    else {
      resolved.z_enu = 0.0
    }

    if (msg.xy_std_enu !== undefined) {
      resolved.xy_std_enu = msg.xy_std_enu;
    }
    else {
      resolved.xy_std_enu = 0.0
    }

    if (msg.speed !== undefined) {
      resolved.speed = msg.speed;
    }
    else {
      resolved.speed = 0.0
    }

    if (msg.headingangle !== undefined) {
      resolved.headingangle = msg.headingangle;
    }
    else {
      resolved.headingangle = 0.0
    }

    if (msg.current_steer !== undefined) {
      resolved.current_steer = msg.current_steer;
    }
    else {
      resolved.current_steer = 0.0
    }

    if (msg.current_brake_pedal_pos !== undefined) {
      resolved.current_brake_pedal_pos = msg.current_brake_pedal_pos;
    }
    else {
      resolved.current_brake_pedal_pos = 0.0
    }

    if (msg.current_throttle_percentage !== undefined) {
      resolved.current_throttle_percentage = msg.current_throttle_percentage;
    }
    else {
      resolved.current_throttle_percentage = 0
    }

    if (msg.current_retarder_torque_percentage !== undefined) {
      resolved.current_retarder_torque_percentage = msg.current_retarder_torque_percentage;
    }
    else {
      resolved.current_retarder_torque_percentage = 0
    }

    if (msg.current_EPB !== undefined) {
      resolved.current_EPB = msg.current_EPB;
    }
    else {
      resolved.current_EPB = 0
    }

    if (msg.current_gear !== undefined) {
      resolved.current_gear = msg.current_gear;
    }
    else {
      resolved.current_gear = ''
    }

    if (msg.current_hangangle !== undefined) {
      resolved.current_hangangle = msg.current_hangangle;
    }
    else {
      resolved.current_hangangle = 0
    }

    if (msg.auto_mode !== undefined) {
      resolved.auto_mode = msg.auto_mode;
    }
    else {
      resolved.auto_mode = 0
    }

    if (msg.left_light !== undefined) {
      resolved.left_light = msg.left_light;
    }
    else {
      resolved.left_light = 0
    }

    if (msg.right_light !== undefined) {
      resolved.right_light = msg.right_light;
    }
    else {
      resolved.right_light = 0
    }

    if (msg.near_light !== undefined) {
      resolved.near_light = msg.near_light;
    }
    else {
      resolved.near_light = 0
    }

    if (msg.far_light !== undefined) {
      resolved.far_light = msg.far_light;
    }
    else {
      resolved.far_light = 0
    }

    if (msg.air_beep !== undefined) {
      resolved.air_beep = msg.air_beep;
    }
    else {
      resolved.air_beep = 0
    }

    if (msg.top_warning_light !== undefined) {
      resolved.top_warning_light = msg.top_warning_light;
    }
    else {
      resolved.top_warning_light = 0
    }

    if (msg.front_fog_light !== undefined) {
      resolved.front_fog_light = msg.front_fog_light;
    }
    else {
      resolved.front_fog_light = 0
    }

    if (msg.front_work_light !== undefined) {
      resolved.front_work_light = msg.front_work_light;
    }
    else {
      resolved.front_work_light = 0
    }

    if (msg.side_light !== undefined) {
      resolved.side_light = msg.side_light;
    }
    else {
      resolved.side_light = 0
    }

    if (msg.position_light !== undefined) {
      resolved.position_light = msg.position_light;
    }
    else {
      resolved.position_light = 0
    }

    if (msg.back_left_light !== undefined) {
      resolved.back_left_light = msg.back_left_light;
    }
    else {
      resolved.back_left_light = 0
    }

    if (msg.back_right_light !== undefined) {
      resolved.back_right_light = msg.back_right_light;
    }
    else {
      resolved.back_right_light = 0
    }

    if (msg.back_position_light !== undefined) {
      resolved.back_position_light = msg.back_position_light;
    }
    else {
      resolved.back_position_light = 0
    }

    if (msg.brake_light !== undefined) {
      resolved.brake_light = msg.brake_light;
    }
    else {
      resolved.brake_light = 0
    }

    if (msg.reverse_light !== undefined) {
      resolved.reverse_light = msg.reverse_light;
    }
    else {
      resolved.reverse_light = 0
    }

    if (msg.back_work_light !== undefined) {
      resolved.back_work_light = msg.back_work_light;
    }
    else {
      resolved.back_work_light = 0
    }

    if (msg.fuel_consumption !== undefined) {
      resolved.fuel_consumption = msg.fuel_consumption;
    }
    else {
      resolved.fuel_consumption = 0
    }

    if (msg.control_steer !== undefined) {
      resolved.control_steer = msg.control_steer;
    }
    else {
      resolved.control_steer = 0.0
    }

    if (msg.control_throttle_percentage !== undefined) {
      resolved.control_throttle_percentage = msg.control_throttle_percentage;
    }
    else {
      resolved.control_throttle_percentage = 0
    }

    if (msg.control_xbr !== undefined) {
      resolved.control_xbr = msg.control_xbr;
    }
    else {
      resolved.control_xbr = 0.0
    }

    if (msg.control_EPB !== undefined) {
      resolved.control_EPB = msg.control_EPB;
    }
    else {
      resolved.control_EPB = 0
    }

    if (msg.control_gear !== undefined) {
      resolved.control_gear = msg.control_gear;
    }
    else {
      resolved.control_gear = ''
    }

    if (msg.control_hang !== undefined) {
      resolved.control_hang = msg.control_hang;
    }
    else {
      resolved.control_hang = ''
    }

    if (msg.control_fsm_state !== undefined) {
      resolved.control_fsm_state = msg.control_fsm_state;
    }
    else {
      resolved.control_fsm_state = 0
    }

    if (msg.vehicle_auto_mode !== undefined) {
      resolved.vehicle_auto_mode = msg.vehicle_auto_mode;
    }
    else {
      resolved.vehicle_auto_mode = 0
    }

    if (msg.left !== undefined) {
      resolved.left = msg.left;
    }
    else {
      resolved.left = 0
    }

    if (msg.right !== undefined) {
      resolved.right = msg.right;
    }
    else {
      resolved.right = 0
    }

    if (msg.near !== undefined) {
      resolved.near = msg.near;
    }
    else {
      resolved.near = 0
    }

    if (msg.far !== undefined) {
      resolved.far = msg.far;
    }
    else {
      resolved.far = 0
    }

    if (msg.top_warn !== undefined) {
      resolved.top_warn = msg.top_warn;
    }
    else {
      resolved.top_warn = 0
    }

    if (msg.control_air_beep !== undefined) {
      resolved.control_air_beep = msg.control_air_beep;
    }
    else {
      resolved.control_air_beep = 0
    }

    if (msg.front_fog !== undefined) {
      resolved.front_fog = msg.front_fog;
    }
    else {
      resolved.front_fog = 0
    }

    if (msg.front_work !== undefined) {
      resolved.front_work = msg.front_work;
    }
    else {
      resolved.front_work = 0
    }

    if (msg.side !== undefined) {
      resolved.side = msg.side;
    }
    else {
      resolved.side = 0
    }

    if (msg.position !== undefined) {
      resolved.position = msg.position;
    }
    else {
      resolved.position = 0
    }

    if (msg.emergency !== undefined) {
      resolved.emergency = msg.emergency;
    }
    else {
      resolved.emergency = 0
    }

    if (msg.brake !== undefined) {
      resolved.brake = msg.brake;
    }
    else {
      resolved.brake = 0
    }

    if (msg.reverse !== undefined) {
      resolved.reverse = msg.reverse;
    }
    else {
      resolved.reverse = 0
    }

    if (msg.back_work !== undefined) {
      resolved.back_work = msg.back_work;
    }
    else {
      resolved.back_work = 0
    }

    if (msg.target_x !== undefined) {
      resolved.target_x = msg.target_x;
    }
    else {
      resolved.target_x = 0.0
    }

    if (msg.target_y !== undefined) {
      resolved.target_y = msg.target_y;
    }
    else {
      resolved.target_y = 0.0
    }

    if (msg.planner_fsm !== undefined) {
      resolved.planner_fsm = msg.planner_fsm;
    }
    else {
      resolved.planner_fsm = 0
    }

    if (msg.NumSate !== undefined) {
      resolved.NumSate = msg.NumSate;
    }
    else {
      resolved.NumSate = 0
    }

    if (msg.engine_fault !== undefined) {
      resolved.engine_fault = msg.engine_fault;
    }
    else {
      resolved.engine_fault = 0
    }

    if (msg.gear_fault !== undefined) {
      resolved.gear_fault = msg.gear_fault;
    }
    else {
      resolved.gear_fault = 0
    }

    if (msg.EBS_fault !== undefined) {
      resolved.EBS_fault = msg.EBS_fault;
    }
    else {
      resolved.EBS_fault = 0
    }

    if (msg.EPS_fault !== undefined) {
      resolved.EPS_fault = msg.EPS_fault;
    }
    else {
      resolved.EPS_fault = 0
    }

    if (msg.EPB_fault !== undefined) {
      resolved.EPB_fault = msg.EPB_fault;
    }
    else {
      resolved.EPB_fault = 0
    }

    if (msg.truck_fault_level !== undefined) {
      resolved.truck_fault_level = msg.truck_fault_level;
    }
    else {
      resolved.truck_fault_level = 0
    }

    if (msg.engine_fault_code !== undefined) {
      resolved.engine_fault_code = msg.engine_fault_code;
    }
    else {
      resolved.engine_fault_code = 0
    }

    if (msg.gear_fault_code !== undefined) {
      resolved.gear_fault_code = msg.gear_fault_code;
    }
    else {
      resolved.gear_fault_code = 0
    }

    if (msg.EPS_fault_code !== undefined) {
      resolved.EPS_fault_code = msg.EPS_fault_code;
    }
    else {
      resolved.EPS_fault_code = 0
    }

    if (msg.EBS_fault_code !== undefined) {
      resolved.EBS_fault_code = msg.EBS_fault_code;
    }
    else {
      resolved.EBS_fault_code = 0
    }

    if (msg.electric_fault_code !== undefined) {
      resolved.electric_fault_code = msg.electric_fault_code;
    }
    else {
      resolved.electric_fault_code = 0
    }

    if (msg.tyre_pressure_leftfront !== undefined) {
      resolved.tyre_pressure_leftfront = msg.tyre_pressure_leftfront;
    }
    else {
      resolved.tyre_pressure_leftfront = 0
    }

    if (msg.tyre_pressure_rightfront !== undefined) {
      resolved.tyre_pressure_rightfront = msg.tyre_pressure_rightfront;
    }
    else {
      resolved.tyre_pressure_rightfront = 0
    }

    if (msg.front_left_temperature !== undefined) {
      resolved.front_left_temperature = msg.front_left_temperature;
    }
    else {
      resolved.front_left_temperature = 0.0
    }

    if (msg.front_right_temperature !== undefined) {
      resolved.front_right_temperature = msg.front_right_temperature;
    }
    else {
      resolved.front_right_temperature = 0.0
    }

    return resolved;
    }
};

module.exports = DisplayData;
