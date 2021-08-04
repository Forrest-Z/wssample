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

class RxStHighspeed {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.throttle_pedal_pos = null;
      this.engine_torque_percentage = null;
      this.engine_speed = null;
      this.actual_throttle_pedal_pos = null;
      this.brake_pedal_pos = null;
      this.retarder_torque_percentage = null;
      this.steer_angle = null;
      this.electric_steer_torque = null;
      this.steer_angle_rate = null;
      this.speed_from_gear = null;
      this.gear_active = null;
      this.max_forward_gear = null;
      this.gear = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('throttle_pedal_pos')) {
        this.throttle_pedal_pos = initObj.throttle_pedal_pos
      }
      else {
        this.throttle_pedal_pos = 0;
      }
      if (initObj.hasOwnProperty('engine_torque_percentage')) {
        this.engine_torque_percentage = initObj.engine_torque_percentage
      }
      else {
        this.engine_torque_percentage = 0;
      }
      if (initObj.hasOwnProperty('engine_speed')) {
        this.engine_speed = initObj.engine_speed
      }
      else {
        this.engine_speed = 0;
      }
      if (initObj.hasOwnProperty('actual_throttle_pedal_pos')) {
        this.actual_throttle_pedal_pos = initObj.actual_throttle_pedal_pos
      }
      else {
        this.actual_throttle_pedal_pos = 0;
      }
      if (initObj.hasOwnProperty('brake_pedal_pos')) {
        this.brake_pedal_pos = initObj.brake_pedal_pos
      }
      else {
        this.brake_pedal_pos = 0;
      }
      if (initObj.hasOwnProperty('retarder_torque_percentage')) {
        this.retarder_torque_percentage = initObj.retarder_torque_percentage
      }
      else {
        this.retarder_torque_percentage = 0;
      }
      if (initObj.hasOwnProperty('steer_angle')) {
        this.steer_angle = initObj.steer_angle
      }
      else {
        this.steer_angle = 0;
      }
      if (initObj.hasOwnProperty('electric_steer_torque')) {
        this.electric_steer_torque = initObj.electric_steer_torque
      }
      else {
        this.electric_steer_torque = 0;
      }
      if (initObj.hasOwnProperty('steer_angle_rate')) {
        this.steer_angle_rate = initObj.steer_angle_rate
      }
      else {
        this.steer_angle_rate = 0;
      }
      if (initObj.hasOwnProperty('speed_from_gear')) {
        this.speed_from_gear = initObj.speed_from_gear
      }
      else {
        this.speed_from_gear = 0.0;
      }
      if (initObj.hasOwnProperty('gear_active')) {
        this.gear_active = initObj.gear_active
      }
      else {
        this.gear_active = 0;
      }
      if (initObj.hasOwnProperty('max_forward_gear')) {
        this.max_forward_gear = initObj.max_forward_gear
      }
      else {
        this.max_forward_gear = 0;
      }
      if (initObj.hasOwnProperty('gear')) {
        this.gear = initObj.gear
      }
      else {
        this.gear = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RxStHighspeed
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [throttle_pedal_pos]
    bufferOffset = _serializer.int8(obj.throttle_pedal_pos, buffer, bufferOffset);
    // Serialize message field [engine_torque_percentage]
    bufferOffset = _serializer.int8(obj.engine_torque_percentage, buffer, bufferOffset);
    // Serialize message field [engine_speed]
    bufferOffset = _serializer.int32(obj.engine_speed, buffer, bufferOffset);
    // Serialize message field [actual_throttle_pedal_pos]
    bufferOffset = _serializer.int8(obj.actual_throttle_pedal_pos, buffer, bufferOffset);
    // Serialize message field [brake_pedal_pos]
    bufferOffset = _serializer.int8(obj.brake_pedal_pos, buffer, bufferOffset);
    // Serialize message field [retarder_torque_percentage]
    bufferOffset = _serializer.int8(obj.retarder_torque_percentage, buffer, bufferOffset);
    // Serialize message field [steer_angle]
    bufferOffset = _serializer.int32(obj.steer_angle, buffer, bufferOffset);
    // Serialize message field [electric_steer_torque]
    bufferOffset = _serializer.int32(obj.electric_steer_torque, buffer, bufferOffset);
    // Serialize message field [steer_angle_rate]
    bufferOffset = _serializer.int32(obj.steer_angle_rate, buffer, bufferOffset);
    // Serialize message field [speed_from_gear]
    bufferOffset = _serializer.float64(obj.speed_from_gear, buffer, bufferOffset);
    // Serialize message field [gear_active]
    bufferOffset = _serializer.uint8(obj.gear_active, buffer, bufferOffset);
    // Serialize message field [max_forward_gear]
    bufferOffset = _serializer.int8(obj.max_forward_gear, buffer, bufferOffset);
    // Serialize message field [gear]
    bufferOffset = _serializer.int8(obj.gear, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RxStHighspeed
    let len;
    let data = new RxStHighspeed(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [throttle_pedal_pos]
    data.throttle_pedal_pos = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [engine_torque_percentage]
    data.engine_torque_percentage = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [engine_speed]
    data.engine_speed = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [actual_throttle_pedal_pos]
    data.actual_throttle_pedal_pos = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [brake_pedal_pos]
    data.brake_pedal_pos = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [retarder_torque_percentage]
    data.retarder_torque_percentage = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [steer_angle]
    data.steer_angle = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [electric_steer_torque]
    data.electric_steer_torque = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [steer_angle_rate]
    data.steer_angle_rate = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [speed_from_gear]
    data.speed_from_gear = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [gear_active]
    data.gear_active = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [max_forward_gear]
    data.max_forward_gear = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [gear]
    data.gear = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tli65_can_msgs/RxStHighspeed';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd6667d21888a890c2ee6ca8cc4b0a4e9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    int8 throttle_pedal_pos
    int8 engine_torque_percentage
    int32 engine_speed
    int8 actual_throttle_pedal_pos
    int8 brake_pedal_pos
    int8 retarder_torque_percentage
    int32 steer_angle
    int32 electric_steer_torque
    int32 steer_angle_rate
    float64 speed_from_gear
    uint8 gear_active
    int8 max_forward_gear
    int8 gear
    
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
    const resolved = new RxStHighspeed(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.throttle_pedal_pos !== undefined) {
      resolved.throttle_pedal_pos = msg.throttle_pedal_pos;
    }
    else {
      resolved.throttle_pedal_pos = 0
    }

    if (msg.engine_torque_percentage !== undefined) {
      resolved.engine_torque_percentage = msg.engine_torque_percentage;
    }
    else {
      resolved.engine_torque_percentage = 0
    }

    if (msg.engine_speed !== undefined) {
      resolved.engine_speed = msg.engine_speed;
    }
    else {
      resolved.engine_speed = 0
    }

    if (msg.actual_throttle_pedal_pos !== undefined) {
      resolved.actual_throttle_pedal_pos = msg.actual_throttle_pedal_pos;
    }
    else {
      resolved.actual_throttle_pedal_pos = 0
    }

    if (msg.brake_pedal_pos !== undefined) {
      resolved.brake_pedal_pos = msg.brake_pedal_pos;
    }
    else {
      resolved.brake_pedal_pos = 0
    }

    if (msg.retarder_torque_percentage !== undefined) {
      resolved.retarder_torque_percentage = msg.retarder_torque_percentage;
    }
    else {
      resolved.retarder_torque_percentage = 0
    }

    if (msg.steer_angle !== undefined) {
      resolved.steer_angle = msg.steer_angle;
    }
    else {
      resolved.steer_angle = 0
    }

    if (msg.electric_steer_torque !== undefined) {
      resolved.electric_steer_torque = msg.electric_steer_torque;
    }
    else {
      resolved.electric_steer_torque = 0
    }

    if (msg.steer_angle_rate !== undefined) {
      resolved.steer_angle_rate = msg.steer_angle_rate;
    }
    else {
      resolved.steer_angle_rate = 0
    }

    if (msg.speed_from_gear !== undefined) {
      resolved.speed_from_gear = msg.speed_from_gear;
    }
    else {
      resolved.speed_from_gear = 0.0
    }

    if (msg.gear_active !== undefined) {
      resolved.gear_active = msg.gear_active;
    }
    else {
      resolved.gear_active = 0
    }

    if (msg.max_forward_gear !== undefined) {
      resolved.max_forward_gear = msg.max_forward_gear;
    }
    else {
      resolved.max_forward_gear = 0
    }

    if (msg.gear !== undefined) {
      resolved.gear = msg.gear;
    }
    else {
      resolved.gear = 0
    }

    return resolved;
    }
};

module.exports = RxStHighspeed;
