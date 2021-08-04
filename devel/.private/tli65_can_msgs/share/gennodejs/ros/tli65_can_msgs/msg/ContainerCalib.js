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

class ContainerCalib {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.pitch_degree = null;
      this.relative_container_angle = null;
      this.k_before_carr_angle = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('pitch_degree')) {
        this.pitch_degree = initObj.pitch_degree
      }
      else {
        this.pitch_degree = 0.0;
      }
      if (initObj.hasOwnProperty('relative_container_angle')) {
        this.relative_container_angle = initObj.relative_container_angle
      }
      else {
        this.relative_container_angle = 0.0;
      }
      if (initObj.hasOwnProperty('k_before_carr_angle')) {
        this.k_before_carr_angle = initObj.k_before_carr_angle
      }
      else {
        this.k_before_carr_angle = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ContainerCalib
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [pitch_degree]
    bufferOffset = _serializer.float64(obj.pitch_degree, buffer, bufferOffset);
    // Serialize message field [relative_container_angle]
    bufferOffset = _serializer.float64(obj.relative_container_angle, buffer, bufferOffset);
    // Serialize message field [k_before_carr_angle]
    bufferOffset = _serializer.float64(obj.k_before_carr_angle, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ContainerCalib
    let len;
    let data = new ContainerCalib(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [pitch_degree]
    data.pitch_degree = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [relative_container_angle]
    data.relative_container_angle = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [k_before_carr_angle]
    data.k_before_carr_angle = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tli65_can_msgs/ContainerCalib';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a1e2d137e4598c60731ef7b598273d26';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    float64 pitch_degree
    float64 relative_container_angle
    float64 k_before_carr_angle
    
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
    const resolved = new ContainerCalib(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.pitch_degree !== undefined) {
      resolved.pitch_degree = msg.pitch_degree;
    }
    else {
      resolved.pitch_degree = 0.0
    }

    if (msg.relative_container_angle !== undefined) {
      resolved.relative_container_angle = msg.relative_container_angle;
    }
    else {
      resolved.relative_container_angle = 0.0
    }

    if (msg.k_before_carr_angle !== undefined) {
      resolved.k_before_carr_angle = msg.k_before_carr_angle;
    }
    else {
      resolved.k_before_carr_angle = 0.0
    }

    return resolved;
    }
};

module.exports = ContainerCalib;
