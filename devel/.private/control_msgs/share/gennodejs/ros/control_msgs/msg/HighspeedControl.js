// Auto-generated. Do not edit!

// (in-package control_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class HighspeedControl {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.control_type = null;
      this.control_fsm = null;
      this.lat_error = null;
      this.ignition = null;
      this.throttle_active = null;
      this.throttle_precentage = null;
      this.XBR_active = null;
      this.XBR = null;
      this.steer_active = null;
      this.steer = null;
      this.steer_angle_rate = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('control_type')) {
        this.control_type = initObj.control_type
      }
      else {
        this.control_type = '';
      }
      if (initObj.hasOwnProperty('control_fsm')) {
        this.control_fsm = initObj.control_fsm
      }
      else {
        this.control_fsm = '';
      }
      if (initObj.hasOwnProperty('lat_error')) {
        this.lat_error = initObj.lat_error
      }
      else {
        this.lat_error = 0.0;
      }
      if (initObj.hasOwnProperty('ignition')) {
        this.ignition = initObj.ignition
      }
      else {
        this.ignition = 0;
      }
      if (initObj.hasOwnProperty('throttle_active')) {
        this.throttle_active = initObj.throttle_active
      }
      else {
        this.throttle_active = 0;
      }
      if (initObj.hasOwnProperty('throttle_precentage')) {
        this.throttle_precentage = initObj.throttle_precentage
      }
      else {
        this.throttle_precentage = 0;
      }
      if (initObj.hasOwnProperty('XBR_active')) {
        this.XBR_active = initObj.XBR_active
      }
      else {
        this.XBR_active = 0;
      }
      if (initObj.hasOwnProperty('XBR')) {
        this.XBR = initObj.XBR
      }
      else {
        this.XBR = 0.0;
      }
      if (initObj.hasOwnProperty('steer_active')) {
        this.steer_active = initObj.steer_active
      }
      else {
        this.steer_active = 0;
      }
      if (initObj.hasOwnProperty('steer')) {
        this.steer = initObj.steer
      }
      else {
        this.steer = 0.0;
      }
      if (initObj.hasOwnProperty('steer_angle_rate')) {
        this.steer_angle_rate = initObj.steer_angle_rate
      }
      else {
        this.steer_angle_rate = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HighspeedControl
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [control_type]
    bufferOffset = _serializer.string(obj.control_type, buffer, bufferOffset);
    // Serialize message field [control_fsm]
    bufferOffset = _serializer.string(obj.control_fsm, buffer, bufferOffset);
    // Serialize message field [lat_error]
    bufferOffset = _serializer.float64(obj.lat_error, buffer, bufferOffset);
    // Serialize message field [ignition]
    bufferOffset = _serializer.uint8(obj.ignition, buffer, bufferOffset);
    // Serialize message field [throttle_active]
    bufferOffset = _serializer.uint8(obj.throttle_active, buffer, bufferOffset);
    // Serialize message field [throttle_precentage]
    bufferOffset = _serializer.uint8(obj.throttle_precentage, buffer, bufferOffset);
    // Serialize message field [XBR_active]
    bufferOffset = _serializer.uint8(obj.XBR_active, buffer, bufferOffset);
    // Serialize message field [XBR]
    bufferOffset = _serializer.float64(obj.XBR, buffer, bufferOffset);
    // Serialize message field [steer_active]
    bufferOffset = _serializer.uint8(obj.steer_active, buffer, bufferOffset);
    // Serialize message field [steer]
    bufferOffset = _serializer.float64(obj.steer, buffer, bufferOffset);
    // Serialize message field [steer_angle_rate]
    bufferOffset = _serializer.float64(obj.steer_angle_rate, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HighspeedControl
    let len;
    let data = new HighspeedControl(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [control_type]
    data.control_type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [control_fsm]
    data.control_fsm = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [lat_error]
    data.lat_error = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ignition]
    data.ignition = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [throttle_active]
    data.throttle_active = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [throttle_precentage]
    data.throttle_precentage = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [XBR_active]
    data.XBR_active = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [XBR]
    data.XBR = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [steer_active]
    data.steer_active = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [steer]
    data.steer = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [steer_angle_rate]
    data.steer_angle_rate = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.control_type.length;
    length += object.control_fsm.length;
    return length + 45;
  }

  static datatype() {
    // Returns string type for a message object
    return 'control_msgs/HighspeedControl';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '091494fefb0d9d1769b9b0a619a55e53';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    string control_type
    string control_fsm
    float64 lat_error
    
    uint8 ignition 
    uint8 throttle_active
    uint8 throttle_precentage
    uint8 XBR_active
    float64 XBR
    # for Tli65
    uint8 steer_active
    float64 steer
    float64 steer_angle_rate
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
    const resolved = new HighspeedControl(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.control_type !== undefined) {
      resolved.control_type = msg.control_type;
    }
    else {
      resolved.control_type = ''
    }

    if (msg.control_fsm !== undefined) {
      resolved.control_fsm = msg.control_fsm;
    }
    else {
      resolved.control_fsm = ''
    }

    if (msg.lat_error !== undefined) {
      resolved.lat_error = msg.lat_error;
    }
    else {
      resolved.lat_error = 0.0
    }

    if (msg.ignition !== undefined) {
      resolved.ignition = msg.ignition;
    }
    else {
      resolved.ignition = 0
    }

    if (msg.throttle_active !== undefined) {
      resolved.throttle_active = msg.throttle_active;
    }
    else {
      resolved.throttle_active = 0
    }

    if (msg.throttle_precentage !== undefined) {
      resolved.throttle_precentage = msg.throttle_precentage;
    }
    else {
      resolved.throttle_precentage = 0
    }

    if (msg.XBR_active !== undefined) {
      resolved.XBR_active = msg.XBR_active;
    }
    else {
      resolved.XBR_active = 0
    }

    if (msg.XBR !== undefined) {
      resolved.XBR = msg.XBR;
    }
    else {
      resolved.XBR = 0.0
    }

    if (msg.steer_active !== undefined) {
      resolved.steer_active = msg.steer_active;
    }
    else {
      resolved.steer_active = 0
    }

    if (msg.steer !== undefined) {
      resolved.steer = msg.steer;
    }
    else {
      resolved.steer = 0.0
    }

    if (msg.steer_angle_rate !== undefined) {
      resolved.steer_angle_rate = msg.steer_angle_rate;
    }
    else {
      resolved.steer_angle_rate = 0.0
    }

    return resolved;
    }
};

module.exports = HighspeedControl;
