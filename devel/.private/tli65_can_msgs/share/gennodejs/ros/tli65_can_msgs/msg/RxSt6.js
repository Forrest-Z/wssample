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

class RxSt6 {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.gear = null;
      this.max_forward_gear = null;
      this.speed_from_gear = null;
      this.check_sum = null;
      this.msg_count = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('gear')) {
        this.gear = initObj.gear
      }
      else {
        this.gear = 0;
      }
      if (initObj.hasOwnProperty('max_forward_gear')) {
        this.max_forward_gear = initObj.max_forward_gear
      }
      else {
        this.max_forward_gear = 0;
      }
      if (initObj.hasOwnProperty('speed_from_gear')) {
        this.speed_from_gear = initObj.speed_from_gear
      }
      else {
        this.speed_from_gear = 0.0;
      }
      if (initObj.hasOwnProperty('check_sum')) {
        this.check_sum = initObj.check_sum
      }
      else {
        this.check_sum = 0;
      }
      if (initObj.hasOwnProperty('msg_count')) {
        this.msg_count = initObj.msg_count
      }
      else {
        this.msg_count = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RxSt6
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [gear]
    bufferOffset = _serializer.int8(obj.gear, buffer, bufferOffset);
    // Serialize message field [max_forward_gear]
    bufferOffset = _serializer.int8(obj.max_forward_gear, buffer, bufferOffset);
    // Serialize message field [speed_from_gear]
    bufferOffset = _serializer.float64(obj.speed_from_gear, buffer, bufferOffset);
    // Serialize message field [check_sum]
    bufferOffset = _serializer.uint8(obj.check_sum, buffer, bufferOffset);
    // Serialize message field [msg_count]
    bufferOffset = _serializer.uint8(obj.msg_count, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RxSt6
    let len;
    let data = new RxSt6(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [gear]
    data.gear = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [max_forward_gear]
    data.max_forward_gear = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [speed_from_gear]
    data.speed_from_gear = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [check_sum]
    data.check_sum = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [msg_count]
    data.msg_count = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tli65_can_msgs/RxSt6';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7e92144d475c554c1ac37c95adff72a8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    int8 gear
    int8 max_forward_gear
    float64 speed_from_gear
    uint8 check_sum
    uint8 msg_count
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
    const resolved = new RxSt6(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.gear !== undefined) {
      resolved.gear = msg.gear;
    }
    else {
      resolved.gear = 0
    }

    if (msg.max_forward_gear !== undefined) {
      resolved.max_forward_gear = msg.max_forward_gear;
    }
    else {
      resolved.max_forward_gear = 0
    }

    if (msg.speed_from_gear !== undefined) {
      resolved.speed_from_gear = msg.speed_from_gear;
    }
    else {
      resolved.speed_from_gear = 0.0
    }

    if (msg.check_sum !== undefined) {
      resolved.check_sum = msg.check_sum;
    }
    else {
      resolved.check_sum = 0
    }

    if (msg.msg_count !== undefined) {
      resolved.msg_count = msg.msg_count;
    }
    else {
      resolved.msg_count = 0
    }

    return resolved;
    }
};

module.exports = RxSt6;
