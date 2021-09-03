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
      this.x_enu = null;
      this.y_enu = null;
      this.z_enu = null;
      this.xy_std_enu = null;
      this.heading_angle = null;
      this.NumSate = null;
      this.vx = null;
      this.auto_mode = null;
      this.current_steer = null;
      this.current_brake_pedal_pos = null;
      this.current_throttle_percentage = null;
      this.current_retarder_torque_percentage = null;
      this.current_EPB = null;
      this.current_gear = null;
      this.current_hang_angle = null;
      this.air_pressure1 = null;
      this.air_pressure2 = null;
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
      this.planner_fsm_state = null;
      this.lock_down_index = null;
      this.pt_index = null;
      this.wpt_x = null;
      this.wpt_y = null;
      this.control_fsm_state = null;
      this.control_steer = null;
      this.control_throttle_percentage = null;
      this.control_xbr = null;
      this.control_EPB = null;
      this.control_gear = null;
      this.control_hang = null;
      this.engine_fault = null;
      this.gear_fault = null;
      this.EBS_fault = null;
      this.EPS_fault = null;
      this.EPB_fault = null;
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
      if (initObj.hasOwnProperty('heading_angle')) {
        this.heading_angle = initObj.heading_angle
      }
      else {
        this.heading_angle = 0.0;
      }
      if (initObj.hasOwnProperty('NumSate')) {
        this.NumSate = initObj.NumSate
      }
      else {
        this.NumSate = 0;
      }
      if (initObj.hasOwnProperty('vx')) {
        this.vx = initObj.vx
      }
      else {
        this.vx = 0.0;
      }
      if (initObj.hasOwnProperty('auto_mode')) {
        this.auto_mode = initObj.auto_mode
      }
      else {
        this.auto_mode = 0;
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
        this.current_gear = 0;
      }
      if (initObj.hasOwnProperty('current_hang_angle')) {
        this.current_hang_angle = initObj.current_hang_angle
      }
      else {
        this.current_hang_angle = 0;
      }
      if (initObj.hasOwnProperty('air_pressure1')) {
        this.air_pressure1 = initObj.air_pressure1
      }
      else {
        this.air_pressure1 = 0;
      }
      if (initObj.hasOwnProperty('air_pressure2')) {
        this.air_pressure2 = initObj.air_pressure2
      }
      else {
        this.air_pressure2 = 0;
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
      if (initObj.hasOwnProperty('planner_fsm_state')) {
        this.planner_fsm_state = initObj.planner_fsm_state
      }
      else {
        this.planner_fsm_state = '';
      }
      if (initObj.hasOwnProperty('lock_down_index')) {
        this.lock_down_index = initObj.lock_down_index
      }
      else {
        this.lock_down_index = 0;
      }
      if (initObj.hasOwnProperty('pt_index')) {
        this.pt_index = initObj.pt_index
      }
      else {
        this.pt_index = [];
      }
      if (initObj.hasOwnProperty('wpt_x')) {
        this.wpt_x = initObj.wpt_x
      }
      else {
        this.wpt_x = [];
      }
      if (initObj.hasOwnProperty('wpt_y')) {
        this.wpt_y = initObj.wpt_y
      }
      else {
        this.wpt_y = [];
      }
      if (initObj.hasOwnProperty('control_fsm_state')) {
        this.control_fsm_state = initObj.control_fsm_state
      }
      else {
        this.control_fsm_state = '';
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
    // Serialize message field [x_enu]
    bufferOffset = _serializer.float64(obj.x_enu, buffer, bufferOffset);
    // Serialize message field [y_enu]
    bufferOffset = _serializer.float64(obj.y_enu, buffer, bufferOffset);
    // Serialize message field [z_enu]
    bufferOffset = _serializer.float64(obj.z_enu, buffer, bufferOffset);
    // Serialize message field [xy_std_enu]
    bufferOffset = _serializer.float64(obj.xy_std_enu, buffer, bufferOffset);
    // Serialize message field [heading_angle]
    bufferOffset = _serializer.float64(obj.heading_angle, buffer, bufferOffset);
    // Serialize message field [NumSate]
    bufferOffset = _serializer.int32(obj.NumSate, buffer, bufferOffset);
    // Serialize message field [vx]
    bufferOffset = _serializer.float64(obj.vx, buffer, bufferOffset);
    // Serialize message field [auto_mode]
    bufferOffset = _serializer.int32(obj.auto_mode, buffer, bufferOffset);
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
    bufferOffset = _serializer.int32(obj.current_gear, buffer, bufferOffset);
    // Serialize message field [current_hang_angle]
    bufferOffset = _serializer.int32(obj.current_hang_angle, buffer, bufferOffset);
    // Serialize message field [air_pressure1]
    bufferOffset = _serializer.int32(obj.air_pressure1, buffer, bufferOffset);
    // Serialize message field [air_pressure2]
    bufferOffset = _serializer.int32(obj.air_pressure2, buffer, bufferOffset);
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
    // Serialize message field [planner_fsm_state]
    bufferOffset = _serializer.string(obj.planner_fsm_state, buffer, bufferOffset);
    // Serialize message field [lock_down_index]
    bufferOffset = _serializer.int32(obj.lock_down_index, buffer, bufferOffset);
    // Serialize message field [pt_index]
    bufferOffset = _arraySerializer.int32(obj.pt_index, buffer, bufferOffset, null);
    // Serialize message field [wpt_x]
    bufferOffset = _arraySerializer.float64(obj.wpt_x, buffer, bufferOffset, null);
    // Serialize message field [wpt_y]
    bufferOffset = _arraySerializer.float64(obj.wpt_y, buffer, bufferOffset, null);
    // Serialize message field [control_fsm_state]
    bufferOffset = _serializer.string(obj.control_fsm_state, buffer, bufferOffset);
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
    // Deserialize message field [x_enu]
    data.x_enu = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [y_enu]
    data.y_enu = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [z_enu]
    data.z_enu = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [xy_std_enu]
    data.xy_std_enu = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [heading_angle]
    data.heading_angle = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [NumSate]
    data.NumSate = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [vx]
    data.vx = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [auto_mode]
    data.auto_mode = _deserializer.int32(buffer, bufferOffset);
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
    data.current_gear = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [current_hang_angle]
    data.current_hang_angle = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [air_pressure1]
    data.air_pressure1 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [air_pressure2]
    data.air_pressure2 = _deserializer.int32(buffer, bufferOffset);
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
    // Deserialize message field [planner_fsm_state]
    data.planner_fsm_state = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [lock_down_index]
    data.lock_down_index = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [pt_index]
    data.pt_index = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [wpt_x]
    data.wpt_x = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [wpt_y]
    data.wpt_y = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [control_fsm_state]
    data.control_fsm_state = _deserializer.string(buffer, bufferOffset);
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
    length += object.planner_fsm_state.length;
    length += 4 * object.pt_index.length;
    length += 8 * object.wpt_x.length;
    length += 8 * object.wpt_y.length;
    length += object.control_fsm_state.length;
    length += object.control_gear.length;
    length += object.control_hang.length;
    return length + 296;
  }

  static datatype() {
    // Returns string type for a message object
    return 'displaydata_msgs/DisplayData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4ffa05f2036a9bdc4fea667a8a91fa8a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
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

    if (msg.heading_angle !== undefined) {
      resolved.heading_angle = msg.heading_angle;
    }
    else {
      resolved.heading_angle = 0.0
    }

    if (msg.NumSate !== undefined) {
      resolved.NumSate = msg.NumSate;
    }
    else {
      resolved.NumSate = 0
    }

    if (msg.vx !== undefined) {
      resolved.vx = msg.vx;
    }
    else {
      resolved.vx = 0.0
    }

    if (msg.auto_mode !== undefined) {
      resolved.auto_mode = msg.auto_mode;
    }
    else {
      resolved.auto_mode = 0
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
      resolved.current_gear = 0
    }

    if (msg.current_hang_angle !== undefined) {
      resolved.current_hang_angle = msg.current_hang_angle;
    }
    else {
      resolved.current_hang_angle = 0
    }

    if (msg.air_pressure1 !== undefined) {
      resolved.air_pressure1 = msg.air_pressure1;
    }
    else {
      resolved.air_pressure1 = 0
    }

    if (msg.air_pressure2 !== undefined) {
      resolved.air_pressure2 = msg.air_pressure2;
    }
    else {
      resolved.air_pressure2 = 0
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

    if (msg.planner_fsm_state !== undefined) {
      resolved.planner_fsm_state = msg.planner_fsm_state;
    }
    else {
      resolved.planner_fsm_state = ''
    }

    if (msg.lock_down_index !== undefined) {
      resolved.lock_down_index = msg.lock_down_index;
    }
    else {
      resolved.lock_down_index = 0
    }

    if (msg.pt_index !== undefined) {
      resolved.pt_index = msg.pt_index;
    }
    else {
      resolved.pt_index = []
    }

    if (msg.wpt_x !== undefined) {
      resolved.wpt_x = msg.wpt_x;
    }
    else {
      resolved.wpt_x = []
    }

    if (msg.wpt_y !== undefined) {
      resolved.wpt_y = msg.wpt_y;
    }
    else {
      resolved.wpt_y = []
    }

    if (msg.control_fsm_state !== undefined) {
      resolved.control_fsm_state = msg.control_fsm_state;
    }
    else {
      resolved.control_fsm_state = ''
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
