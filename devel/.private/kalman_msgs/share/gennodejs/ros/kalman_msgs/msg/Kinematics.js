// Auto-generated. Do not edit!

// (in-package kalman_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Kinematics {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.k_vx = null;
      this.k_yawrate = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('k_vx')) {
        this.k_vx = initObj.k_vx
      }
      else {
        this.k_vx = 0.0;
      }
      if (initObj.hasOwnProperty('k_yawrate')) {
        this.k_yawrate = initObj.k_yawrate
      }
      else {
        this.k_yawrate = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Kinematics
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [k_vx]
    bufferOffset = _serializer.float64(obj.k_vx, buffer, bufferOffset);
    // Serialize message field [k_yawrate]
    bufferOffset = _serializer.float64(obj.k_yawrate, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Kinematics
    let len;
    let data = new Kinematics(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [k_vx]
    data.k_vx = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [k_yawrate]
    data.k_yawrate = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'kalman_msgs/Kinematics';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd8265f549b6eafa5bb69f5a95dd77e28';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    # kalman_vx
    #  >0 for forward, <0 for backward
    float64 k_vx
    
    # kalman_yawrate
    float64 k_yawrate 
    
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
    const resolved = new Kinematics(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.k_vx !== undefined) {
      resolved.k_vx = msg.k_vx;
    }
    else {
      resolved.k_vx = 0.0
    }

    if (msg.k_yawrate !== undefined) {
      resolved.k_yawrate = msg.k_yawrate;
    }
    else {
      resolved.k_yawrate = 0.0
    }

    return resolved;
    }
};

module.exports = Kinematics;
