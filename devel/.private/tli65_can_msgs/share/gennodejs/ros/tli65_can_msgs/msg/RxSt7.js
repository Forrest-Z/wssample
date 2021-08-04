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

class RxSt7 {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
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
    // Serializes a message object of type RxSt7
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
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
    //deserializes a message object of type RxSt7
    let len;
    let data = new RxSt7(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
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
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tli65_can_msgs/RxSt7';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a534ca6f7b38ad0e102e1d9218e5253e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
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
    const resolved = new RxSt7(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
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

module.exports = RxSt7;
