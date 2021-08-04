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

class RxSt9 {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.back_left_light = null;
      this.back_right_light = null;
      this.back_position_light = null;
      this.brake_light = null;
      this.reverse_light = null;
      this.back_work_light = null;
      this.cooler1 = null;
      this.cooler2 = null;
      this.axle_diff_switch = null;
      this.drier_power = null;
      this.inclinometer_power = null;
      this.cold_water_treasure_power = null;
      this.exhaust_brake_switch = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RxSt9
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
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
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RxSt9
    let len;
    let data = new RxSt9(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
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
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 13;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tli65_can_msgs/RxSt9';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4d003e66e4be8a30497585d13731cb44';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    uint8 back_left_light
    uint8 back_right_light
    uint8 back_position_light
    uint8 brake_light
    uint8 reverse_light
    uint8 back_work_light
    uint8 cooler1
    uint8 cooler2
    uint8 axle_diff_switch
    uint8 drier_power
    uint8 inclinometer_power
    uint8 cold_water_treasure_power
    uint8 exhaust_brake_switch
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
    const resolved = new RxSt9(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
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

    return resolved;
    }
};

module.exports = RxSt9;
