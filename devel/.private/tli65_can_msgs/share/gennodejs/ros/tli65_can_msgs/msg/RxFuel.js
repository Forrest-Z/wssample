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

class RxFuel {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.fuel_consumption = null;
      this.ins_fuel_consumption = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('fuel_consumption')) {
        this.fuel_consumption = initObj.fuel_consumption
      }
      else {
        this.fuel_consumption = 0;
      }
      if (initObj.hasOwnProperty('ins_fuel_consumption')) {
        this.ins_fuel_consumption = initObj.ins_fuel_consumption
      }
      else {
        this.ins_fuel_consumption = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RxFuel
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [fuel_consumption]
    bufferOffset = _serializer.uint16(obj.fuel_consumption, buffer, bufferOffset);
    // Serialize message field [ins_fuel_consumption]
    bufferOffset = _serializer.uint16(obj.ins_fuel_consumption, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RxFuel
    let len;
    let data = new RxFuel(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [fuel_consumption]
    data.fuel_consumption = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [ins_fuel_consumption]
    data.ins_fuel_consumption = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tli65_can_msgs/RxFuel';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '846c3d8c296609ca08f2215de0373f81';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    uint16 fuel_consumption
    uint16 ins_fuel_consumption
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
    const resolved = new RxFuel(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.fuel_consumption !== undefined) {
      resolved.fuel_consumption = msg.fuel_consumption;
    }
    else {
      resolved.fuel_consumption = 0
    }

    if (msg.ins_fuel_consumption !== undefined) {
      resolved.ins_fuel_consumption = msg.ins_fuel_consumption;
    }
    else {
      resolved.ins_fuel_consumption = 0
    }

    return resolved;
    }
};

module.exports = RxFuel;
