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

class RxSt8 {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.air_pressure1 = null;
      this.air_pressure2 = null;
      this.oil_percentage = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RxSt8
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [air_pressure1]
    bufferOffset = _serializer.float64(obj.air_pressure1, buffer, bufferOffset);
    // Serialize message field [air_pressure2]
    bufferOffset = _serializer.float64(obj.air_pressure2, buffer, bufferOffset);
    // Serialize message field [oil_percentage]
    bufferOffset = _serializer.float64(obj.oil_percentage, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RxSt8
    let len;
    let data = new RxSt8(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [air_pressure1]
    data.air_pressure1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [air_pressure2]
    data.air_pressure2 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [oil_percentage]
    data.oil_percentage = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tli65_can_msgs/RxSt8';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a77ee5f9717c81618a7b44fad753529e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    float64 air_pressure1
    float64 air_pressure2
    float64 oil_percentage
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
    const resolved = new RxSt8(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
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

    return resolved;
    }
};

module.exports = RxSt8;
