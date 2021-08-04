// Auto-generated. Do not edit!

// (in-package tli65_can_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class RxStLowspeed {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.auto_mode = null;
      this.engine_active = null;
      this.hand_brake_active = null;
      this.EBS_active = null;
      this.retarder_active = null;
      this.EPS_active = null;
      this.hang_active = null;
      this.left_light = null;
      this.right_light = null;
      this.near_light = null;
      this.far_light = null;
      this.top_warning_light = null;
      this.air_beep = null;
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
      this.air_pressure1 = null;
      this.air_pressure2 = null;
      this.oil_percentage = null;
      this.cooler1 = null;
      this.cooler2 = null;
      this.axle_diff_switch = null;
      this.drier_power = null;
      this.inclinometer_power = null;
      this.cold_water_treasure_power = null;
      this.exhaust_brake_switch = null;
      this.sweeper_power = null;
      this.EBS_power = null;
      this.air_pressure_power = null;
      this.hang_up_power = null;
      this.hang_down_power = null;
      this.hang_manual_power = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('auto_mode')) {
        this.auto_mode = initObj.auto_mode
      }
      else {
        this.auto_mode = 0;
      }
      if (initObj.hasOwnProperty('engine_active')) {
        this.engine_active = initObj.engine_active
      }
      else {
        this.engine_active = 0;
      }
      if (initObj.hasOwnProperty('hand_brake_active')) {
        this.hand_brake_active = initObj.hand_brake_active
      }
      else {
        this.hand_brake_active = 0;
      }
      if (initObj.hasOwnProperty('EBS_active')) {
        this.EBS_active = initObj.EBS_active
      }
      else {
        this.EBS_active = 0;
      }
      if (initObj.hasOwnProperty('retarder_active')) {
        this.retarder_active = initObj.retarder_active
      }
      else {
        this.retarder_active = 0;
      }
      if (initObj.hasOwnProperty('EPS_active')) {
        this.EPS_active = initObj.EPS_active
      }
      else {
        this.EPS_active = 0;
      }
      if (initObj.hasOwnProperty('hang_active')) {
        this.hang_active = initObj.hang_active
      }
      else {
        this.hang_active = 0;
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
      if (initObj.hasOwnProperty('top_warning_light')) {
        this.top_warning_light = initObj.top_warning_light
      }
      else {
        this.top_warning_light = 0;
      }
      if (initObj.hasOwnProperty('air_beep')) {
        this.air_beep = initObj.air_beep
      }
      else {
        this.air_beep = 0;
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
      if (initObj.hasOwnProperty('air_pressure1')) {
        this.air_pressure1 = initObj.air_pressure1
      }
      else {
        this.air_pressure1 = 0.0;
      }
      if (initObj.hasOwnProperty('air_pressure2')) {
        this.air_pressure2 = initObj.air_pressure2
      }
      else {
        this.air_pressure2 = 0.0;
      }
      if (initObj.hasOwnProperty('oil_percentage')) {
        this.oil_percentage = initObj.oil_percentage
      }
      else {
        this.oil_percentage = 0.0;
      }
      if (initObj.hasOwnProperty('cooler1')) {
        this.cooler1 = initObj.cooler1
      }
      else {
        this.cooler1 = 0;
      }
      if (initObj.hasOwnProperty('cooler2')) {
        this.cooler2 = initObj.cooler2
      }
      else {
        this.cooler2 = 0;
      }
      if (initObj.hasOwnProperty('axle_diff_switch')) {
        this.axle_diff_switch = initObj.axle_diff_switch
      }
      else {
        this.axle_diff_switch = 0;
      }
      if (initObj.hasOwnProperty('drier_power')) {
        this.drier_power = initObj.drier_power
      }
      else {
        this.drier_power = 0;
      }
      if (initObj.hasOwnProperty('inclinometer_power')) {
        this.inclinometer_power = initObj.inclinometer_power
      }
      else {
        this.inclinometer_power = 0;
      }
      if (initObj.hasOwnProperty('cold_water_treasure_power')) {
        this.cold_water_treasure_power = initObj.cold_water_treasure_power
      }
      else {
        this.cold_water_treasure_power = 0;
      }
      if (initObj.hasOwnProperty('exhaust_brake_switch')) {
        this.exhaust_brake_switch = initObj.exhaust_brake_switch
      }
      else {
        this.exhaust_brake_switch = 0;
      }
      if (initObj.hasOwnProperty('sweeper_power')) {
        this.sweeper_power = initObj.sweeper_power
      }
      else {
        this.sweeper_power = 0;
      }
      if (initObj.hasOwnProperty('EBS_power')) {
        this.EBS_power = initObj.EBS_power
      }
      else {
        this.EBS_power = 0;
      }
      if (initObj.hasOwnProperty('air_pressure_power')) {
        this.air_pressure_power = initObj.air_pressure_power
      }
      else {
        this.air_pressure_power = 0;
      }
      if (initObj.hasOwnProperty('hang_up_power')) {
        this.hang_up_power = initObj.hang_up_power
      }
      else {
        this.hang_up_power = 0;
      }
      if (initObj.hasOwnProperty('hang_down_power')) {
        this.hang_down_power = initObj.hang_down_power
      }
      else {
        this.hang_down_power = 0;
      }
      if (initObj.hasOwnProperty('hang_manual_power')) {
        this.hang_manual_power = initObj.hang_manual_power
      }
      else {
        this.hang_manual_power = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RxStLowspeed
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [auto_mode]
    bufferOffset = _serializer.uint8(obj.auto_mode, buffer, bufferOffset);
    // Serialize message field [engine_active]
    bufferOffset = _serializer.uint8(obj.engine_active, buffer, bufferOffset);
    // Serialize message field [hand_brake_active]
    bufferOffset = _serializer.uint8(obj.hand_brake_active, buffer, bufferOffset);
    // Serialize message field [EBS_active]
    bufferOffset = _serializer.uint8(obj.EBS_active, buffer, bufferOffset);
    // Serialize message field [retarder_active]
    bufferOffset = _serializer.uint8(obj.retarder_active, buffer, bufferOffset);
    // Serialize message field [EPS_active]
    bufferOffset = _serializer.uint8(obj.EPS_active, buffer, bufferOffset);
    // Serialize message field [hang_active]
    bufferOffset = _serializer.uint8(obj.hang_active, buffer, bufferOffset);
    // Serialize message field [left_light]
    bufferOffset = _serializer.uint8(obj.left_light, buffer, bufferOffset);
    // Serialize message field [right_light]
    bufferOffset = _serializer.uint8(obj.right_light, buffer, bufferOffset);
    // Serialize message field [near_light]
    bufferOffset = _serializer.uint8(obj.near_light, buffer, bufferOffset);
    // Serialize message field [far_light]
    bufferOffset = _serializer.uint8(obj.far_light, buffer, bufferOffset);
    // Serialize message field [top_warning_light]
    bufferOffset = _serializer.uint8(obj.top_warning_light, buffer, bufferOffset);
    // Serialize message field [air_beep]
    bufferOffset = _serializer.uint8(obj.air_beep, buffer, bufferOffset);
    // Serialize message field [front_fog_light]
    bufferOffset = _serializer.uint8(obj.front_fog_light, buffer, bufferOffset);
    // Serialize message field [front_work_light]
    bufferOffset = _serializer.uint8(obj.front_work_light, buffer, bufferOffset);
    // Serialize message field [side_light]
    bufferOffset = _serializer.uint8(obj.side_light, buffer, bufferOffset);
    // Serialize message field [position_light]
    bufferOffset = _serializer.uint8(obj.position_light, buffer, bufferOffset);
    // Serialize message field [back_left_light]
    bufferOffset = _serializer.uint8(obj.back_left_light, buffer, bufferOffset);
    // Serialize message field [back_right_light]
    bufferOffset = _serializer.uint8(obj.back_right_light, buffer, bufferOffset);
    // Serialize message field [back_position_light]
    bufferOffset = _serializer.uint8(obj.back_position_light, buffer, bufferOffset);
    // Serialize message field [brake_light]
    bufferOffset = _serializer.uint8(obj.brake_light, buffer, bufferOffset);
    // Serialize message field [reverse_light]
    bufferOffset = _serializer.uint8(obj.reverse_light, buffer, bufferOffset);
    // Serialize message field [back_work_light]
    bufferOffset = _serializer.uint8(obj.back_work_light, buffer, bufferOffset);
    // Serialize message field [air_pressure1]
    bufferOffset = _serializer.float64(obj.air_pressure1, buffer, bufferOffset);
    // Serialize message field [air_pressure2]
    bufferOffset = _serializer.float64(obj.air_pressure2, buffer, bufferOffset);
    // Serialize message field [oil_percentage]
    bufferOffset = _serializer.float64(obj.oil_percentage, buffer, bufferOffset);
    // Serialize message field [cooler1]
    bufferOffset = _serializer.uint8(obj.cooler1, buffer, bufferOffset);
    // Serialize message field [cooler2]
    bufferOffset = _serializer.uint8(obj.cooler2, buffer, bufferOffset);
    // Serialize message field [axle_diff_switch]
    bufferOffset = _serializer.uint8(obj.axle_diff_switch, buffer, bufferOffset);
    // Serialize message field [drier_power]
    bufferOffset = _serializer.uint8(obj.drier_power, buffer, bufferOffset);
    // Serialize message field [inclinometer_power]
    bufferOffset = _serializer.uint8(obj.inclinometer_power, buffer, bufferOffset);
    // Serialize message field [cold_water_treasure_power]
    bufferOffset = _serializer.uint8(obj.cold_water_treasure_power, buffer, bufferOffset);
    // Serialize message field [exhaust_brake_switch]
    bufferOffset = _serializer.uint8(obj.exhaust_brake_switch, buffer, bufferOffset);
    // Serialize message field [sweeper_power]
    bufferOffset = _serializer.uint8(obj.sweeper_power, buffer, bufferOffset);
    // Serialize message field [EBS_power]
    bufferOffset = _serializer.uint8(obj.EBS_power, buffer, bufferOffset);
    // Serialize message field [air_pressure_power]
    bufferOffset = _serializer.uint8(obj.air_pressure_power, buffer, bufferOffset);
    // Serialize message field [hang_up_power]
    bufferOffset = _serializer.uint8(obj.hang_up_power, buffer, bufferOffset);
    // Serialize message field [hang_down_power]
    bufferOffset = _serializer.uint8(obj.hang_down_power, buffer, bufferOffset);
    // Serialize message field [hang_manual_power]
    bufferOffset = _serializer.uint8(obj.hang_manual_power, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RxStLowspeed
    let len;
    let data = new RxStLowspeed(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [auto_mode]
    data.auto_mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [engine_active]
    data.engine_active = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [hand_brake_active]
    data.hand_brake_active = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [EBS_active]
    data.EBS_active = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [retarder_active]
    data.retarder_active = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [EPS_active]
    data.EPS_active = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [hang_active]
    data.hang_active = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [left_light]
    data.left_light = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [right_light]
    data.right_light = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [near_light]
    data.near_light = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [far_light]
    data.far_light = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [top_warning_light]
    data.top_warning_light = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [air_beep]
    data.air_beep = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [front_fog_light]
    data.front_fog_light = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [front_work_light]
    data.front_work_light = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [side_light]
    data.side_light = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [position_light]
    data.position_light = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [back_left_light]
    data.back_left_light = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [back_right_light]
    data.back_right_light = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [back_position_light]
    data.back_position_light = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [brake_light]
    data.brake_light = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [reverse_light]
    data.reverse_light = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [back_work_light]
    data.back_work_light = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [air_pressure1]
    data.air_pressure1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [air_pressure2]
    data.air_pressure2 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [oil_percentage]
    data.oil_percentage = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [cooler1]
    data.cooler1 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [cooler2]
    data.cooler2 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [axle_diff_switch]
    data.axle_diff_switch = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [drier_power]
    data.drier_power = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [inclinometer_power]
    data.inclinometer_power = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [cold_water_treasure_power]
    data.cold_water_treasure_power = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [exhaust_brake_switch]
    data.exhaust_brake_switch = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [sweeper_power]
    data.sweeper_power = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [EBS_power]
    data.EBS_power = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [air_pressure_power]
    data.air_pressure_power = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [hang_up_power]
    data.hang_up_power = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [hang_down_power]
    data.hang_down_power = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [hang_manual_power]
    data.hang_manual_power = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 60;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tli65_can_msgs/RxStLowspeed';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c2e3c35f27ca2535b83cdc42bd76a652';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    uint8 auto_mode
    uint8 engine_active
    uint8 hand_brake_active
    uint8 EBS_active
    uint8 retarder_active
    uint8 EPS_active
    uint8 hang_active
    
    uint8 left_light
    uint8 right_light
    uint8 near_light
    uint8 far_light
    uint8 top_warning_light
    uint8 air_beep
    uint8 front_fog_light
    uint8 front_work_light
    uint8 side_light
    uint8 position_light
    uint8 back_left_light
    uint8 back_right_light
    uint8 back_position_light
    uint8 brake_light
    uint8 reverse_light
    uint8 back_work_light
    
    float64 air_pressure1
    float64 air_pressure2
    float64 oil_percentage
    
    uint8 cooler1
    uint8 cooler2
    uint8 axle_diff_switch
    uint8 drier_power
    uint8 inclinometer_power
    uint8 cold_water_treasure_power
    uint8 exhaust_brake_switch
    uint8 sweeper_power
    uint8 EBS_power
    uint8 air_pressure_power
    uint8 hang_up_power
    uint8 hang_down_power
    uint8 hang_manual_power
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
    const resolved = new RxStLowspeed(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.auto_mode !== undefined) {
      resolved.auto_mode = msg.auto_mode;
    }
    else {
      resolved.auto_mode = 0
    }

    if (msg.engine_active !== undefined) {
      resolved.engine_active = msg.engine_active;
    }
    else {
      resolved.engine_active = 0
    }

    if (msg.hand_brake_active !== undefined) {
      resolved.hand_brake_active = msg.hand_brake_active;
    }
    else {
      resolved.hand_brake_active = 0
    }

    if (msg.EBS_active !== undefined) {
      resolved.EBS_active = msg.EBS_active;
    }
    else {
      resolved.EBS_active = 0
    }

    if (msg.retarder_active !== undefined) {
      resolved.retarder_active = msg.retarder_active;
    }
    else {
      resolved.retarder_active = 0
    }

    if (msg.EPS_active !== undefined) {
      resolved.EPS_active = msg.EPS_active;
    }
    else {
      resolved.EPS_active = 0
    }

    if (msg.hang_active !== undefined) {
      resolved.hang_active = msg.hang_active;
    }
    else {
      resolved.hang_active = 0
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

    if (msg.top_warning_light !== undefined) {
      resolved.top_warning_light = msg.top_warning_light;
    }
    else {
      resolved.top_warning_light = 0
    }

    if (msg.air_beep !== undefined) {
      resolved.air_beep = msg.air_beep;
    }
    else {
      resolved.air_beep = 0
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

    if (msg.air_pressure1 !== undefined) {
      resolved.air_pressure1 = msg.air_pressure1;
    }
    else {
      resolved.air_pressure1 = 0.0
    }

    if (msg.air_pressure2 !== undefined) {
      resolved.air_pressure2 = msg.air_pressure2;
    }
    else {
      resolved.air_pressure2 = 0.0
    }

    if (msg.oil_percentage !== undefined) {
      resolved.oil_percentage = msg.oil_percentage;
    }
    else {
      resolved.oil_percentage = 0.0
    }

    if (msg.cooler1 !== undefined) {
      resolved.cooler1 = msg.cooler1;
    }
    else {
      resolved.cooler1 = 0
    }

    if (msg.cooler2 !== undefined) {
      resolved.cooler2 = msg.cooler2;
    }
    else {
      resolved.cooler2 = 0
    }

    if (msg.axle_diff_switch !== undefined) {
      resolved.axle_diff_switch = msg.axle_diff_switch;
    }
    else {
      resolved.axle_diff_switch = 0
    }

    if (msg.drier_power !== undefined) {
      resolved.drier_power = msg.drier_power;
    }
    else {
      resolved.drier_power = 0
    }

    if (msg.inclinometer_power !== undefined) {
      resolved.inclinometer_power = msg.inclinometer_power;
    }
    else {
      resolved.inclinometer_power = 0
    }

    if (msg.cold_water_treasure_power !== undefined) {
      resolved.cold_water_treasure_power = msg.cold_water_treasure_power;
    }
    else {
      resolved.cold_water_treasure_power = 0
    }

    if (msg.exhaust_brake_switch !== undefined) {
      resolved.exhaust_brake_switch = msg.exhaust_brake_switch;
    }
    else {
      resolved.exhaust_brake_switch = 0
    }

    if (msg.sweeper_power !== undefined) {
      resolved.sweeper_power = msg.sweeper_power;
    }
    else {
      resolved.sweeper_power = 0
    }

    if (msg.EBS_power !== undefined) {
      resolved.EBS_power = msg.EBS_power;
    }
    else {
      resolved.EBS_power = 0
    }

    if (msg.air_pressure_power !== undefined) {
      resolved.air_pressure_power = msg.air_pressure_power;
    }
    else {
      resolved.air_pressure_power = 0
    }

    if (msg.hang_up_power !== undefined) {
      resolved.hang_up_power = msg.hang_up_power;
    }
    else {
      resolved.hang_up_power = 0
    }

    if (msg.hang_down_power !== undefined) {
      resolved.hang_down_power = msg.hang_down_power;
    }
    else {
      resolved.hang_down_power = 0
    }

    if (msg.hang_manual_power !== undefined) {
      resolved.hang_manual_power = msg.hang_manual_power;
    }
    else {
      resolved.hang_manual_power = 0
    }

    return resolved;
    }
};

module.exports = RxStLowspeed;
