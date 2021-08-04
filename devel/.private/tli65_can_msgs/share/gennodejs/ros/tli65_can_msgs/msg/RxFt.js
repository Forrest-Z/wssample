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

class RxFt {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.engine_fault = null;
      this.gear_fault = null;
      this.EBS_fault = null;
      this.EPS_fault = null;
      this.EPB_fault = null;
      this.truck_fault_level = null;
      this.engine_fault_code = null;
      this.gear_fault_code = null;
      this.EPS_fault_code = null;
      this.EBS_fault_code = null;
      this.electric_fault_code = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('engine_fault')) {
        this.engine_fault = initObj.engine_fault
      }
      else {
        this.engine_fault = 0;
      }
      if (initObj.hasOwnProperty('gear_fault')) {
        this.gear_fault = initObj.gear_fault
      }
      else {
        this.gear_fault = 0;
      }
      if (initObj.hasOwnProperty('EBS_fault')) {
        this.EBS_fault = initObj.EBS_fault
      }
      else {
        this.EBS_fault = 0;
      }
      if (initObj.hasOwnProperty('EPS_fault')) {
        this.EPS_fault = initObj.EPS_fault
      }
      else {
        this.EPS_fault = 0;
      }
      if (initObj.hasOwnProperty('EPB_fault')) {
        this.EPB_fault = initObj.EPB_fault
      }
      else {
        this.EPB_fault = 0;
      }
      if (initObj.hasOwnProperty('truck_fault_level')) {
        this.truck_fault_level = initObj.truck_fault_level
      }
      else {
        this.truck_fault_level = 0;
      }
      if (initObj.hasOwnProperty('engine_fault_code')) {
        this.engine_fault_code = initObj.engine_fault_code
      }
      else {
        this.engine_fault_code = 0;
      }
      if (initObj.hasOwnProperty('gear_fault_code')) {
        this.gear_fault_code = initObj.gear_fault_code
      }
      else {
        this.gear_fault_code = 0;
      }
      if (initObj.hasOwnProperty('EPS_fault_code')) {
        this.EPS_fault_code = initObj.EPS_fault_code
      }
      else {
        this.EPS_fault_code = 0;
      }
      if (initObj.hasOwnProperty('EBS_fault_code')) {
        this.EBS_fault_code = initObj.EBS_fault_code
      }
      else {
        this.EBS_fault_code = 0;
      }
      if (initObj.hasOwnProperty('electric_fault_code')) {
        this.electric_fault_code = initObj.electric_fault_code
      }
      else {
        this.electric_fault_code = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RxFt
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [engine_fault]
    bufferOffset = _serializer.uint8(obj.engine_fault, buffer, bufferOffset);
    // Serialize message field [gear_fault]
    bufferOffset = _serializer.uint8(obj.gear_fault, buffer, bufferOffset);
    // Serialize message field [EBS_fault]
    bufferOffset = _serializer.uint8(obj.EBS_fault, buffer, bufferOffset);
    // Serialize message field [EPS_fault]
    bufferOffset = _serializer.uint8(obj.EPS_fault, buffer, bufferOffset);
    // Serialize message field [EPB_fault]
    bufferOffset = _serializer.uint8(obj.EPB_fault, buffer, bufferOffset);
    // Serialize message field [truck_fault_level]
    bufferOffset = _serializer.uint8(obj.truck_fault_level, buffer, bufferOffset);
    // Serialize message field [engine_fault_code]
    bufferOffset = _serializer.uint8(obj.engine_fault_code, buffer, bufferOffset);
    // Serialize message field [gear_fault_code]
    bufferOffset = _serializer.uint8(obj.gear_fault_code, buffer, bufferOffset);
    // Serialize message field [EPS_fault_code]
    bufferOffset = _serializer.uint8(obj.EPS_fault_code, buffer, bufferOffset);
    // Serialize message field [EBS_fault_code]
    bufferOffset = _serializer.uint8(obj.EBS_fault_code, buffer, bufferOffset);
    // Serialize message field [electric_fault_code]
    bufferOffset = _serializer.uint8(obj.electric_fault_code, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RxFt
    let len;
    let data = new RxFt(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [engine_fault]
    data.engine_fault = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [gear_fault]
    data.gear_fault = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [EBS_fault]
    data.EBS_fault = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [EPS_fault]
    data.EPS_fault = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [EPB_fault]
    data.EPB_fault = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [truck_fault_level]
    data.truck_fault_level = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [engine_fault_code]
    data.engine_fault_code = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [gear_fault_code]
    data.gear_fault_code = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [EPS_fault_code]
    data.EPS_fault_code = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [EBS_fault_code]
    data.EBS_fault_code = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [electric_fault_code]
    data.electric_fault_code = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 11;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tli65_can_msgs/RxFt';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cced9dfa61b3727cda06b24391589f3a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    # ft1
    uint8 engine_fault
    uint8 gear_fault
    uint8 EBS_fault
    uint8 EPS_fault
    uint8 EPB_fault
    
    # ft2
    uint8 truck_fault_level
    uint8 engine_fault_code
    uint8 gear_fault_code
    
    # ft3
    uint8 EPS_fault_code
    uint8 EBS_fault_code
    uint8 electric_fault_code
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
    const resolved = new RxFt(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.engine_fault !== undefined) {
      resolved.engine_fault = msg.engine_fault;
    }
    else {
      resolved.engine_fault = 0
    }

    if (msg.gear_fault !== undefined) {
      resolved.gear_fault = msg.gear_fault;
    }
    else {
      resolved.gear_fault = 0
    }

    if (msg.EBS_fault !== undefined) {
      resolved.EBS_fault = msg.EBS_fault;
    }
    else {
      resolved.EBS_fault = 0
    }

    if (msg.EPS_fault !== undefined) {
      resolved.EPS_fault = msg.EPS_fault;
    }
    else {
      resolved.EPS_fault = 0
    }

    if (msg.EPB_fault !== undefined) {
      resolved.EPB_fault = msg.EPB_fault;
    }
    else {
      resolved.EPB_fault = 0
    }

    if (msg.truck_fault_level !== undefined) {
      resolved.truck_fault_level = msg.truck_fault_level;
    }
    else {
      resolved.truck_fault_level = 0
    }

    if (msg.engine_fault_code !== undefined) {
      resolved.engine_fault_code = msg.engine_fault_code;
    }
    else {
      resolved.engine_fault_code = 0
    }

    if (msg.gear_fault_code !== undefined) {
      resolved.gear_fault_code = msg.gear_fault_code;
    }
    else {
      resolved.gear_fault_code = 0
    }

    if (msg.EPS_fault_code !== undefined) {
      resolved.EPS_fault_code = msg.EPS_fault_code;
    }
    else {
      resolved.EPS_fault_code = 0
    }

    if (msg.EBS_fault_code !== undefined) {
      resolved.EBS_fault_code = msg.EBS_fault_code;
    }
    else {
      resolved.EBS_fault_code = 0
    }

    if (msg.electric_fault_code !== undefined) {
      resolved.electric_fault_code = msg.electric_fault_code;
    }
    else {
      resolved.electric_fault_code = 0
    }

    return resolved;
    }
};

module.exports = RxFt;
