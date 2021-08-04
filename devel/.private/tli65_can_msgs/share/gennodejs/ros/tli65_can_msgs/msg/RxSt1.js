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

class RxSt1 {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.auto_mode = null;
      this.engine_active = null;
      this.hand_brake_active = null;
      this.EBS_active = null;
      this.retarder_active = null;
      this.gear_active = null;
      this.EPS_active = null;
      this.hang_active = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('auto_mode')) {
        this.auto_mode = initObj.auto_mode
      }
      else {
        this.auto_mode = 0;
      }
      if (initObj.hasOwnProperty('engine_active')) {
        this.engine_active = initObj.engine_active
      }
      else {
        this.engine_active = 0;
      }
      if (initObj.hasOwnProperty('hand_brake_active')) {
        this.hand_brake_active = initObj.hand_brake_active
      }
      else {
        this.hand_brake_active = 0;
      }
      if (initObj.hasOwnProperty('EBS_active')) {
        this.EBS_active = initObj.EBS_active
      }
      else {
        this.EBS_active = 0;
      }
      if (initObj.hasOwnProperty('retarder_active')) {
        this.retarder_active = initObj.retarder_active
      }
      else {
        this.retarder_active = 0;
      }
      if (initObj.hasOwnProperty('gear_active')) {
        this.gear_active = initObj.gear_active
      }
      else {
        this.gear_active = 0;
      }
      if (initObj.hasOwnProperty('EPS_active')) {
        this.EPS_active = initObj.EPS_active
      }
      else {
        this.EPS_active = 0;
      }
      if (initObj.hasOwnProperty('hang_active')) {
        this.hang_active = initObj.hang_active
      }
      else {
        this.hang_active = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RxSt1
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [auto_mode]
    bufferOffset = _serializer.uint8(obj.auto_mode, buffer, bufferOffset);
    // Serialize message field [engine_active]
    bufferOffset = _serializer.uint8(obj.engine_active, buffer, bufferOffset);
    // Serialize message field [hand_brake_active]
    bufferOffset = _serializer.uint8(obj.hand_brake_active, buffer, bufferOffset);
    // Serialize message field [EBS_active]
    bufferOffset = _serializer.uint8(obj.EBS_active, buffer, bufferOffset);
    // Serialize message field [retarder_active]
    bufferOffset = _serializer.uint8(obj.retarder_active, buffer, bufferOffset);
    // Serialize message field [gear_active]
    bufferOffset = _serializer.uint8(obj.gear_active, buffer, bufferOffset);
    // Serialize message field [EPS_active]
    bufferOffset = _serializer.uint8(obj.EPS_active, buffer, bufferOffset);
    // Serialize message field [hang_active]
    bufferOffset = _serializer.uint8(obj.hang_active, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RxSt1
    let len;
    let data = new RxSt1(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [auto_mode]
    data.auto_mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [engine_active]
    data.engine_active = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [hand_brake_active]
    data.hand_brake_active = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [EBS_active]
    data.EBS_active = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [retarder_active]
    data.retarder_active = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [gear_active]
    data.gear_active = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [EPS_active]
    data.EPS_active = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [hang_active]
    data.hang_active = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tli65_can_msgs/RxSt1';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f067e802a0fe3c15d96a577607d1f535';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    uint8 auto_mode
    uint8 engine_active
    uint8 hand_brake_active
    uint8 EBS_active
    uint8 retarder_active
    uint8 gear_active
    uint8 EPS_active
    uint8 hang_active
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
    const resolved = new RxSt1(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.auto_mode !== undefined) {
      resolved.auto_mode = msg.auto_mode;
    }
    else {
      resolved.auto_mode = 0
    }

    if (msg.engine_active !== undefined) {
      resolved.engine_active = msg.engine_active;
    }
    else {
      resolved.engine_active = 0
    }

    if (msg.hand_brake_active !== undefined) {
      resolved.hand_brake_active = msg.hand_brake_active;
    }
    else {
      resolved.hand_brake_active = 0
    }

    if (msg.EBS_active !== undefined) {
      resolved.EBS_active = msg.EBS_active;
    }
    else {
      resolved.EBS_active = 0
    }

    if (msg.retarder_active !== undefined) {
      resolved.retarder_active = msg.retarder_active;
    }
    else {
      resolved.retarder_active = 0
    }

    if (msg.gear_active !== undefined) {
      resolved.gear_active = msg.gear_active;
    }
    else {
      resolved.gear_active = 0
    }

    if (msg.EPS_active !== undefined) {
      resolved.EPS_active = msg.EPS_active;
    }
    else {
      resolved.EPS_active = 0
    }

    if (msg.hang_active !== undefined) {
      resolved.hang_active = msg.hang_active;
    }
    else {
      resolved.hang_active = 0
    }

    return resolved;
    }
};

module.exports = RxSt1;
