// Auto-generated. Do not edit!

// (in-package planner_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let WayPoint = require('./WayPoint.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class WayPoints {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.coord_type = null;
      this.control_type = null;
      this.planner_fsm = null;
      this.points = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('coord_type')) {
        this.coord_type = initObj.coord_type
      }
      else {
        this.coord_type = '';
      }
      if (initObj.hasOwnProperty('control_type')) {
        this.control_type = initObj.control_type
      }
      else {
        this.control_type = '';
      }
      if (initObj.hasOwnProperty('planner_fsm')) {
        this.planner_fsm = initObj.planner_fsm
      }
      else {
        this.planner_fsm = '';
      }
      if (initObj.hasOwnProperty('points')) {
        this.points = initObj.points
      }
      else {
        this.points = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WayPoints
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [coord_type]
    bufferOffset = _serializer.string(obj.coord_type, buffer, bufferOffset);
    // Serialize message field [control_type]
    bufferOffset = _serializer.string(obj.control_type, buffer, bufferOffset);
    // Serialize message field [planner_fsm]
    bufferOffset = _serializer.string(obj.planner_fsm, buffer, bufferOffset);
    // Serialize message field [points]
    // Serialize the length for message field [points]
    bufferOffset = _serializer.uint32(obj.points.length, buffer, bufferOffset);
    obj.points.forEach((val) => {
      bufferOffset = WayPoint.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WayPoints
    let len;
    let data = new WayPoints(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [coord_type]
    data.coord_type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [control_type]
    data.control_type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [planner_fsm]
    data.planner_fsm = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [points]
    // Deserialize array length for message field [points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.points[i] = WayPoint.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.coord_type.length;
    length += object.control_type.length;
    length += object.planner_fsm.length;
    length += 133 * object.points.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'planner_msgs/WayPoints';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5fe65fd9eca45e86d5dc3de0bdfc36bc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    # all of the waypoints are in ego coordinate system
    # coord_type = "ego"
    # track use enu, and is sended to rviz
    # coord_type = "enu"
    string coord_type
    
    # "teledrive" or "follow_tracks"
    string control_type
    
    string planner_fsm
    
    WayPoint[] points
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
    
    ================================================================================
    MSG: planner_msgs/WayPoint
    # point has no Header
    
    int32 lock_down_index
    int32 pt_index
    
    float64 x
    float64 y 
    float64 z
    
    float64 roll
    float64 pitch
    float64 yaw
    float64 kalman_yawrate
    
    float64 kalman_vx
    float64 acceleration
    
    # teledrive, share gear, xbr
    float64 steer
    float64 throttle_percentage
    float64 xbr
    int8 gear
    
    uint8 left_light
    uint8 right_light
    #uint8 emergency_light
    uint8 air_beep
    
    float64 time_to_last_point
    float64 current_lat_error
    float64 current_lng_error
    bool flag_lock_down_index_offload
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WayPoints(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.coord_type !== undefined) {
      resolved.coord_type = msg.coord_type;
    }
    else {
      resolved.coord_type = ''
    }

    if (msg.control_type !== undefined) {
      resolved.control_type = msg.control_type;
    }
    else {
      resolved.control_type = ''
    }

    if (msg.planner_fsm !== undefined) {
      resolved.planner_fsm = msg.planner_fsm;
    }
    else {
      resolved.planner_fsm = ''
    }

    if (msg.points !== undefined) {
      resolved.points = new Array(msg.points.length);
      for (let i = 0; i < resolved.points.length; ++i) {
        resolved.points[i] = WayPoint.Resolve(msg.points[i]);
      }
    }
    else {
      resolved.points = []
    }

    return resolved;
    }
};

module.exports = WayPoints;
