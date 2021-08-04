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

class RxSpeed {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.front_axle_speed = null;
      this.front_left_speed = null;
      this.front_right_speed = null;
      this.back_left_speed = null;
      this.back_right_speed = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('front_axle_speed')) {
        this.front_axle_speed = initObj.front_axle_speed
      }
      else {
        this.front_axle_speed = 0.0;
      }
      if (initObj.hasOwnProperty('front_left_speed')) {
        this.front_left_speed = initObj.front_left_speed
      }
      else {
        this.front_left_speed = 0.0;
      }
      if (initObj.hasOwnProperty('front_right_speed')) {
        this.front_right_speed = initObj.front_right_speed
      }
      else {
        this.front_right_speed = 0.0;
      }
      if (initObj.hasOwnProperty('back_left_speed')) {
        this.back_left_speed = initObj.back_left_speed
      }
      else {
        this.back_left_speed = 0.0;
      }
      if (initObj.hasOwnProperty('back_right_speed')) {
        this.back_right_speed = initObj.back_right_speed
      }
      else {
        this.back_right_speed = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RxSpeed
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [front_axle_speed]
    bufferOffset = _serializer.float64(obj.front_axle_speed, buffer, bufferOffset);
    // Serialize message field [front_left_speed]
    bufferOffset = _serializer.float64(obj.front_left_speed, buffer, bufferOffset);
    // Serialize message field [front_right_speed]
    bufferOffset = _serializer.float64(obj.front_right_speed, buffer, bufferOffset);
    // Serialize message field [back_left_speed]
    bufferOffset = _serializer.float64(obj.back_left_speed, buffer, bufferOffset);
    // Serialize message field [back_right_speed]
    bufferOffset = _serializer.float64(obj.back_right_speed, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RxSpeed
    let len;
    let data = new RxSpeed(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [front_axle_speed]
    data.front_axle_speed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [front_left_speed]
    data.front_left_speed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [front_right_speed]
    data.front_right_speed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [back_left_speed]
    data.back_left_speed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [back_right_speed]
    data.back_right_speed = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tli65_can_msgs/RxSpeed';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9cd50ce112759f36a39c8f0cf8f9a854';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    float64 front_axle_speed
    float64 front_left_speed
    float64 front_right_speed
    float64 back_left_speed
    float64 back_right_speed
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
    const resolved = new RxSpeed(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.front_axle_speed !== undefined) {
      resolved.front_axle_speed = msg.front_axle_speed;
    }
    else {
      resolved.front_axle_speed = 0.0
    }

    if (msg.front_left_speed !== undefined) {
      resolved.front_left_speed = msg.front_left_speed;
    }
    else {
      resolved.front_left_speed = 0.0
    }

    if (msg.front_right_speed !== undefined) {
      resolved.front_right_speed = msg.front_right_speed;
    }
    else {
      resolved.front_right_speed = 0.0
    }

    if (msg.back_left_speed !== undefined) {
      resolved.back_left_speed = msg.back_left_speed;
    }
    else {
      resolved.back_left_speed = 0.0
    }

    if (msg.back_right_speed !== undefined) {
      resolved.back_right_speed = msg.back_right_speed;
    }
    else {
      resolved.back_right_speed = 0.0
    }

    return resolved;
    }
};

module.exports = RxSpeed;
