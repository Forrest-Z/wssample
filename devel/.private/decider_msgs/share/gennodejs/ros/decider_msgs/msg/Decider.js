// Auto-generated. Do not edit!

// (in-package decider_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Decider {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.lat_strategy = null;
      this.long_strategy = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('lat_strategy')) {
        this.lat_strategy = initObj.lat_strategy
      }
      else {
        this.lat_strategy = '';
      }
      if (initObj.hasOwnProperty('long_strategy')) {
        this.long_strategy = initObj.long_strategy
      }
      else {
        this.long_strategy = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Decider
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [lat_strategy]
    bufferOffset = _serializer.string(obj.lat_strategy, buffer, bufferOffset);
    // Serialize message field [long_strategy]
    bufferOffset = _serializer.string(obj.long_strategy, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Decider
    let len;
    let data = new Decider(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [lat_strategy]
    data.lat_strategy = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [long_strategy]
    data.long_strategy = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.lat_strategy.length;
    length += object.long_strategy.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'decider_msgs/Decider';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1e2a07bec75f3a1794cd39cc03b4fbee';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    string lat_strategy
    string long_strategy
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
    const resolved = new Decider(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.lat_strategy !== undefined) {
      resolved.lat_strategy = msg.lat_strategy;
    }
    else {
      resolved.lat_strategy = ''
    }

    if (msg.long_strategy !== undefined) {
      resolved.long_strategy = msg.long_strategy;
    }
    else {
      resolved.long_strategy = ''
    }

    return resolved;
    }
};

module.exports = Decider;
