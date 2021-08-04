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

class RxMaintain {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.emergency_input_backup = null;
      this.air_filter_warning = null;
      this.steer_oil_filter_warning = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('emergency_input_backup')) {
        this.emergency_input_backup = initObj.emergency_input_backup
      }
      else {
        this.emergency_input_backup = 0;
      }
      if (initObj.hasOwnProperty('air_filter_warning')) {
        this.air_filter_warning = initObj.air_filter_warning
      }
      else {
        this.air_filter_warning = 0;
      }
      if (initObj.hasOwnProperty('steer_oil_filter_warning')) {
        this.steer_oil_filter_warning = initObj.steer_oil_filter_warning
      }
      else {
        this.steer_oil_filter_warning = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RxMaintain
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [emergency_input_backup]
    bufferOffset = _serializer.uint8(obj.emergency_input_backup, buffer, bufferOffset);
    // Serialize message field [air_filter_warning]
    bufferOffset = _serializer.uint8(obj.air_filter_warning, buffer, bufferOffset);
    // Serialize message field [steer_oil_filter_warning]
    bufferOffset = _serializer.uint8(obj.steer_oil_filter_warning, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RxMaintain
    let len;
    let data = new RxMaintain(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [emergency_input_backup]
    data.emergency_input_backup = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [air_filter_warning]
    data.air_filter_warning = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [steer_oil_filter_warning]
    data.steer_oil_filter_warning = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 3;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tli65_can_msgs/RxMaintain';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0e06a3f2866bea393708628f10277bb0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    uint8 emergency_input_backup
    uint8 air_filter_warning
    uint8 steer_oil_filter_warning
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
    const resolved = new RxMaintain(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.emergency_input_backup !== undefined) {
      resolved.emergency_input_backup = msg.emergency_input_backup;
    }
    else {
      resolved.emergency_input_backup = 0
    }

    if (msg.air_filter_warning !== undefined) {
      resolved.air_filter_warning = msg.air_filter_warning;
    }
    else {
      resolved.air_filter_warning = 0
    }

    if (msg.steer_oil_filter_warning !== undefined) {
      resolved.steer_oil_filter_warning = msg.steer_oil_filter_warning;
    }
    else {
      resolved.steer_oil_filter_warning = 0
    }

    return resolved;
    }
};

module.exports = RxMaintain;
