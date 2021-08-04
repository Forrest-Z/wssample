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

class RxSt3 {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.brake_pedal_pos = null;
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
      if (initObj.hasOwnProperty('brake_pedal_pos')) {
        this.brake_pedal_pos = initObj.brake_pedal_pos
      }
      else {
        this.brake_pedal_pos = 0.0;
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
    // Serializes a message object of type RxSt3
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [brake_pedal_pos]
    bufferOffset = _serializer.float64(obj.brake_pedal_pos, buffer, bufferOffset);
    // Serialize message field [check_sum]
    bufferOffset = _serializer.uint8(obj.check_sum, buffer, bufferOffset);
    // Serialize message field [msg_count]
    bufferOffset = _serializer.uint8(obj.msg_count, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RxSt3
    let len;
    let data = new RxSt3(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [brake_pedal_pos]
    data.brake_pedal_pos = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [check_sum]
    data.check_sum = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [msg_count]
    data.msg_count = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 10;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tli65_can_msgs/RxSt3';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '212d091e04d72844ef8a23023c5cba15';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    float64 brake_pedal_pos
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
    const resolved = new RxSt3(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.brake_pedal_pos !== undefined) {
      resolved.brake_pedal_pos = msg.brake_pedal_pos;
    }
    else {
      resolved.brake_pedal_pos = 0.0
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

module.exports = RxSt3;
