// Auto-generated. Do not edit!

// (in-package planner_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class PlannerFSM {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.planner_fsm_string = null;
      this.gear = null;
      this.planner_fsm = null;
      this.last_planner_fsm = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('planner_fsm_string')) {
        this.planner_fsm_string = initObj.planner_fsm_string
      }
      else {
        this.planner_fsm_string = '';
      }
      if (initObj.hasOwnProperty('gear')) {
        this.gear = initObj.gear
      }
      else {
        this.gear = 0;
      }
      if (initObj.hasOwnProperty('planner_fsm')) {
        this.planner_fsm = initObj.planner_fsm
      }
      else {
        this.planner_fsm = 0;
      }
      if (initObj.hasOwnProperty('last_planner_fsm')) {
        this.last_planner_fsm = initObj.last_planner_fsm
      }
      else {
        this.last_planner_fsm = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PlannerFSM
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [planner_fsm_string]
    bufferOffset = _serializer.string(obj.planner_fsm_string, buffer, bufferOffset);
    // Serialize message field [gear]
    bufferOffset = _serializer.int32(obj.gear, buffer, bufferOffset);
    // Serialize message field [planner_fsm]
    bufferOffset = _serializer.int32(obj.planner_fsm, buffer, bufferOffset);
    // Serialize message field [last_planner_fsm]
    bufferOffset = _serializer.int32(obj.last_planner_fsm, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PlannerFSM
    let len;
    let data = new PlannerFSM(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [planner_fsm_string]
    data.planner_fsm_string = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [gear]
    data.gear = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [planner_fsm]
    data.planner_fsm = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [last_planner_fsm]
    data.last_planner_fsm = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.planner_fsm_string.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'planner_msgs/PlannerFSM';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '17792b6358bfdffcd755358b31a0d229';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    string planner_fsm_string
    int32 gear
    int32 planner_fsm
    int32 last_planner_fsm
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
    const resolved = new PlannerFSM(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.planner_fsm_string !== undefined) {
      resolved.planner_fsm_string = msg.planner_fsm_string;
    }
    else {
      resolved.planner_fsm_string = ''
    }

    if (msg.gear !== undefined) {
      resolved.gear = msg.gear;
    }
    else {
      resolved.gear = 0
    }

    if (msg.planner_fsm !== undefined) {
      resolved.planner_fsm = msg.planner_fsm;
    }
    else {
      resolved.planner_fsm = 0
    }

    if (msg.last_planner_fsm !== undefined) {
      resolved.last_planner_fsm = msg.last_planner_fsm;
    }
    else {
      resolved.last_planner_fsm = 0
    }

    return resolved;
    }
};

module.exports = PlannerFSM;
