// Auto-generated. Do not edit!

// (in-package g29_socket_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class G29Socket {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.axes = null;
      this.buttons = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('axes')) {
        this.axes = initObj.axes
      }
      else {
        this.axes = new Array(6).fill(0);
      }
      if (initObj.hasOwnProperty('buttons')) {
        this.buttons = initObj.buttons
      }
      else {
        this.buttons = new Array(25).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type G29Socket
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Check that the constant length array field [axes] has the right length
    if (obj.axes.length !== 6) {
      throw new Error('Unable to serialize array field axes - length must be 6')
    }
    // Serialize message field [axes]
    bufferOffset = _arraySerializer.float64(obj.axes, buffer, bufferOffset, 6);
    // Check that the constant length array field [buttons] has the right length
    if (obj.buttons.length !== 25) {
      throw new Error('Unable to serialize array field buttons - length must be 25')
    }
    // Serialize message field [buttons]
    bufferOffset = _arraySerializer.float64(obj.buttons, buffer, bufferOffset, 25);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type G29Socket
    let len;
    let data = new G29Socket(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [axes]
    data.axes = _arrayDeserializer.float64(buffer, bufferOffset, 6)
    // Deserialize message field [buttons]
    data.buttons = _arrayDeserializer.float64(buffer, bufferOffset, 25)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 248;
  }

  static datatype() {
    // Returns string type for a message object
    return 'g29_socket_msgs/G29Socket';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b8eb7f320e43cf539122a332e9191771';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    float64[6] axes
    float64[25] buttons
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
    const resolved = new G29Socket(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.axes !== undefined) {
      resolved.axes = msg.axes;
    }
    else {
      resolved.axes = new Array(6).fill(0)
    }

    if (msg.buttons !== undefined) {
      resolved.buttons = msg.buttons;
    }
    else {
      resolved.buttons = new Array(25).fill(0)
    }

    return resolved;
    }
};

module.exports = G29Socket;
