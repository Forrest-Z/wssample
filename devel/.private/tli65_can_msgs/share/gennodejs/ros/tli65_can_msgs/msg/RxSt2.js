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

class RxSt2 {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.throttle_pedal_pos = null;
      this.engine_torque_percentage = null;
      this.engine_speed = null;
      this.actual_throttle_pedal_pos = null;
      this.check_sum = null;
      this.msg_count = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('throttle_pedal_pos')) {
        this.throttle_pedal_pos = initObj.throttle_pedal_pos
      }
      else {
        this.throttle_pedal_pos = 0.0;
      }
      if (initObj.hasOwnProperty('engine_torque_percentage')) {
        this.engine_torque_percentage = initObj.engine_torque_percentage
      }
      else {
        this.engine_torque_percentage = 0.0;
      }
      if (initObj.hasOwnProperty('engine_speed')) {
        this.engine_speed = initObj.engine_speed
      }
      else {
        this.engine_speed = 0.0;
      }
      if (initObj.hasOwnProperty('actual_throttle_pedal_pos')) {
        this.actual_throttle_pedal_pos = initObj.actual_throttle_pedal_pos
      }
      else {
        this.actual_throttle_pedal_pos = 0.0;
      }
      if (initObj.hasOwnProperty('check_sum')) {
        this.check_sum = initObj.check_sum
      }
      else {
        this.check_sum = 0;
      }
      if (initObj.hasOwnProperty('msg_count')) {
        this.msg_count = initObj.msg_count
      }
      else {
        this.msg_count = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RxSt2
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [throttle_pedal_pos]
    bufferOffset = _serializer.float64(obj.throttle_pedal_pos, buffer, bufferOffset);
    // Serialize message field [engine_torque_percentage]
    bufferOffset = _serializer.float64(obj.engine_torque_percentage, buffer, bufferOffset);
    // Serialize message field [engine_speed]
    bufferOffset = _serializer.float64(obj.engine_speed, buffer, bufferOffset);
    // Serialize message field [actual_throttle_pedal_pos]
    bufferOffset = _serializer.float64(obj.actual_throttle_pedal_pos, buffer, bufferOffset);
    // Serialize message field [check_sum]
    bufferOffset = _serializer.uint8(obj.check_sum, buffer, bufferOffset);
    // Serialize message field [msg_count]
    bufferOffset = _serializer.uint8(obj.msg_count, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RxSt2
    let len;
    let data = new RxSt2(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [throttle_pedal_pos]
    data.throttle_pedal_pos = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [engine_torque_percentage]
    data.engine_torque_percentage = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [engine_speed]
    data.engine_speed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [actual_throttle_pedal_pos]
    data.actual_throttle_pedal_pos = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [check_sum]
    data.check_sum = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [msg_count]
    data.msg_count = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 34;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tli65_can_msgs/RxSt2';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '938cd4fdf7b654ca0e40be74922e1cc4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    float64 throttle_pedal_pos
    float64 engine_torque_percentage
    float64 engine_speed
    float64 actual_throttle_pedal_pos
    uint8 check_sum
    uint8 msg_count
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
    const resolved = new RxSt2(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.throttle_pedal_pos !== undefined) {
      resolved.throttle_pedal_pos = msg.throttle_pedal_pos;
    }
    else {
      resolved.throttle_pedal_pos = 0.0
    }

    if (msg.engine_torque_percentage !== undefined) {
      resolved.engine_torque_percentage = msg.engine_torque_percentage;
    }
    else {
      resolved.engine_torque_percentage = 0.0
    }

    if (msg.engine_speed !== undefined) {
      resolved.engine_speed = msg.engine_speed;
    }
    else {
      resolved.engine_speed = 0.0
    }

    if (msg.actual_throttle_pedal_pos !== undefined) {
      resolved.actual_throttle_pedal_pos = msg.actual_throttle_pedal_pos;
    }
    else {
      resolved.actual_throttle_pedal_pos = 0.0
    }

    if (msg.check_sum !== undefined) {
      resolved.check_sum = msg.check_sum;
    }
    else {
      resolved.check_sum = 0
    }

    if (msg.msg_count !== undefined) {
      resolved.msg_count = msg.msg_count;
    }
    else {
      resolved.msg_count = 0
    }

    return resolved;
    }
};

module.exports = RxSt2;
