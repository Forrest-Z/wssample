// Auto-generated. Do not edit!

// (in-package g29_teledrive_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class G29_teledrive {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.steer = null;
      this.throttle = null;
      this.xbr = null;
      this.hang = null;
      this.epb = null;
      this.gear = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('steer')) {
        this.steer = initObj.steer
      }
      else {
        this.steer = 0.0;
      }
      if (initObj.hasOwnProperty('throttle')) {
        this.throttle = initObj.throttle
      }
      else {
        this.throttle = 0.0;
      }
      if (initObj.hasOwnProperty('xbr')) {
        this.xbr = initObj.xbr
      }
      else {
        this.xbr = 0.0;
      }
      if (initObj.hasOwnProperty('hang')) {
        this.hang = initObj.hang
      }
      else {
        this.hang = 0.0;
      }
      if (initObj.hasOwnProperty('epb')) {
        this.epb = initObj.epb
      }
      else {
        this.epb = 0;
      }
      if (initObj.hasOwnProperty('gear')) {
        this.gear = initObj.gear
      }
      else {
        this.gear = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type G29_teledrive
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [steer]
    bufferOffset = _serializer.float64(obj.steer, buffer, bufferOffset);
    // Serialize message field [throttle]
    bufferOffset = _serializer.float64(obj.throttle, buffer, bufferOffset);
    // Serialize message field [xbr]
    bufferOffset = _serializer.float64(obj.xbr, buffer, bufferOffset);
    // Serialize message field [hang]
    bufferOffset = _serializer.float64(obj.hang, buffer, bufferOffset);
    // Serialize message field [epb]
    bufferOffset = _serializer.int8(obj.epb, buffer, bufferOffset);
    // Serialize message field [gear]
    bufferOffset = _serializer.int8(obj.gear, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type G29_teledrive
    let len;
    let data = new G29_teledrive(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [steer]
    data.steer = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [throttle]
    data.throttle = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [xbr]
    data.xbr = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [hang]
    data.hang = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [epb]
    data.epb = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [gear]
    data.gear = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 34;
  }

  static datatype() {
    // Returns string type for a message object
    return 'g29_teledrive_msgs/G29_teledrive';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '499a726284cbe0d6a1daa981a1060bff';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    float64 steer
    float64 throttle
    float64 xbr
    float64 hang
    int8 epb
    int8 gear
    
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
    const resolved = new G29_teledrive(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.steer !== undefined) {
      resolved.steer = msg.steer;
    }
    else {
      resolved.steer = 0.0
    }

    if (msg.throttle !== undefined) {
      resolved.throttle = msg.throttle;
    }
    else {
      resolved.throttle = 0.0
    }

    if (msg.xbr !== undefined) {
      resolved.xbr = msg.xbr;
    }
    else {
      resolved.xbr = 0.0
    }

    if (msg.hang !== undefined) {
      resolved.hang = msg.hang;
    }
    else {
      resolved.hang = 0.0
    }

    if (msg.epb !== undefined) {
      resolved.epb = msg.epb;
    }
    else {
      resolved.epb = 0
    }

    if (msg.gear !== undefined) {
      resolved.gear = msg.gear;
    }
    else {
      resolved.gear = 0
    }

    return resolved;
    }
};

module.exports = G29_teledrive;
