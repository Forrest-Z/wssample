// Auto-generated. Do not edit!

// (in-package perception_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class DriveArea {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.left_area_avail = null;
      this.right_area_avail = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('left_area_avail')) {
        this.left_area_avail = initObj.left_area_avail
      }
      else {
        this.left_area_avail = false;
      }
      if (initObj.hasOwnProperty('right_area_avail')) {
        this.right_area_avail = initObj.right_area_avail
      }
      else {
        this.right_area_avail = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DriveArea
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [left_area_avail]
    bufferOffset = _serializer.bool(obj.left_area_avail, buffer, bufferOffset);
    // Serialize message field [right_area_avail]
    bufferOffset = _serializer.bool(obj.right_area_avail, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DriveArea
    let len;
    let data = new DriveArea(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [left_area_avail]
    data.left_area_avail = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [right_area_avail]
    data.right_area_avail = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_msgs/DriveArea';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0d7db88ce8a43d4073cc44d916824e19';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    bool left_area_avail
    bool right_area_avail
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
    const resolved = new DriveArea(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.left_area_avail !== undefined) {
      resolved.left_area_avail = msg.left_area_avail;
    }
    else {
      resolved.left_area_avail = false
    }

    if (msg.right_area_avail !== undefined) {
      resolved.right_area_avail = msg.right_area_avail;
    }
    else {
      resolved.right_area_avail = false
    }

    return resolved;
    }
};

module.exports = DriveArea;
