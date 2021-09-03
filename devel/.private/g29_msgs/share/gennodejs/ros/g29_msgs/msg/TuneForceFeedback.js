// Auto-generated. Do not edit!

// (in-package g29_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class TuneForceFeedback {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.calforce = null;
      this.finalforce = null;
      this.pforce = null;
      this.iforce = null;
      this.dforce = null;
      this.error = null;
      this.current_angle = null;
      this.derror = null;
      this.force2 = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('calforce')) {
        this.calforce = initObj.calforce
      }
      else {
        this.calforce = 0.0;
      }
      if (initObj.hasOwnProperty('finalforce')) {
        this.finalforce = initObj.finalforce
      }
      else {
        this.finalforce = 0.0;
      }
      if (initObj.hasOwnProperty('pforce')) {
        this.pforce = initObj.pforce
      }
      else {
        this.pforce = 0.0;
      }
      if (initObj.hasOwnProperty('iforce')) {
        this.iforce = initObj.iforce
      }
      else {
        this.iforce = 0.0;
      }
      if (initObj.hasOwnProperty('dforce')) {
        this.dforce = initObj.dforce
      }
      else {
        this.dforce = 0.0;
      }
      if (initObj.hasOwnProperty('error')) {
        this.error = initObj.error
      }
      else {
        this.error = 0.0;
      }
      if (initObj.hasOwnProperty('current_angle')) {
        this.current_angle = initObj.current_angle
      }
      else {
        this.current_angle = 0.0;
      }
      if (initObj.hasOwnProperty('derror')) {
        this.derror = initObj.derror
      }
      else {
        this.derror = 0.0;
      }
      if (initObj.hasOwnProperty('force2')) {
        this.force2 = initObj.force2
      }
      else {
        this.force2 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TuneForceFeedback
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [calforce]
    bufferOffset = _serializer.float64(obj.calforce, buffer, bufferOffset);
    // Serialize message field [finalforce]
    bufferOffset = _serializer.float64(obj.finalforce, buffer, bufferOffset);
    // Serialize message field [pforce]
    bufferOffset = _serializer.float64(obj.pforce, buffer, bufferOffset);
    // Serialize message field [iforce]
    bufferOffset = _serializer.float64(obj.iforce, buffer, bufferOffset);
    // Serialize message field [dforce]
    bufferOffset = _serializer.float64(obj.dforce, buffer, bufferOffset);
    // Serialize message field [error]
    bufferOffset = _serializer.float64(obj.error, buffer, bufferOffset);
    // Serialize message field [current_angle]
    bufferOffset = _serializer.float64(obj.current_angle, buffer, bufferOffset);
    // Serialize message field [derror]
    bufferOffset = _serializer.float64(obj.derror, buffer, bufferOffset);
    // Serialize message field [force2]
    bufferOffset = _serializer.float64(obj.force2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TuneForceFeedback
    let len;
    let data = new TuneForceFeedback(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [calforce]
    data.calforce = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [finalforce]
    data.finalforce = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pforce]
    data.pforce = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [iforce]
    data.iforce = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [dforce]
    data.dforce = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [error]
    data.error = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [current_angle]
    data.current_angle = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [derror]
    data.derror = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [force2]
    data.force2 = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 72;
  }

  static datatype() {
    // Returns string type for a message object
    return 'g29_msgs/TuneForceFeedback';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bf7818849acfc8f3815bdde80fa9e88c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    float64 calforce
    float64 finalforce
    float64 pforce
    float64 iforce
    float64 dforce
    float64 error
    float64 current_angle
    float64 derror
    float64 force2
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
    const resolved = new TuneForceFeedback(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.calforce !== undefined) {
      resolved.calforce = msg.calforce;
    }
    else {
      resolved.calforce = 0.0
    }

    if (msg.finalforce !== undefined) {
      resolved.finalforce = msg.finalforce;
    }
    else {
      resolved.finalforce = 0.0
    }

    if (msg.pforce !== undefined) {
      resolved.pforce = msg.pforce;
    }
    else {
      resolved.pforce = 0.0
    }

    if (msg.iforce !== undefined) {
      resolved.iforce = msg.iforce;
    }
    else {
      resolved.iforce = 0.0
    }

    if (msg.dforce !== undefined) {
      resolved.dforce = msg.dforce;
    }
    else {
      resolved.dforce = 0.0
    }

    if (msg.error !== undefined) {
      resolved.error = msg.error;
    }
    else {
      resolved.error = 0.0
    }

    if (msg.current_angle !== undefined) {
      resolved.current_angle = msg.current_angle;
    }
    else {
      resolved.current_angle = 0.0
    }

    if (msg.derror !== undefined) {
      resolved.derror = msg.derror;
    }
    else {
      resolved.derror = 0.0
    }

    if (msg.force2 !== undefined) {
      resolved.force2 = msg.force2;
    }
    else {
      resolved.force2 = 0.0
    }

    return resolved;
    }
};

module.exports = TuneForceFeedback;
