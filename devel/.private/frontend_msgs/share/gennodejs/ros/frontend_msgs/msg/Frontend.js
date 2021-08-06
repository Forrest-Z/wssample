// Auto-generated. Do not edit!

// (in-package frontend_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Frontend {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.TL_left_light = null;
      this.TL_right_light = null;
      this.TL_near_light = null;
      this.TL_far_light = null;
      this.TL_top_warning_light = null;
      this.TL_front_fog_light = null;
      this.TL_front_work_light = null;
      this.TL_back_work_light = null;
      this.TL_side_light = null;
      this.TL_position_light = null;
      this.TL_back_left_light = null;
      this.TL_back_right_light = null;
      this.emergency_light = null;
      this.TL_back_position_light = null;
      this.TL_brake_light = null;
      this.TL_reverse_light = null;
    }
    else {
      if (initObj.hasOwnProperty('TL_left_light')) {
        this.TL_left_light = initObj.TL_left_light
      }
      else {
        this.TL_left_light = false;
      }
      if (initObj.hasOwnProperty('TL_right_light')) {
        this.TL_right_light = initObj.TL_right_light
      }
      else {
        this.TL_right_light = false;
      }
      if (initObj.hasOwnProperty('TL_near_light')) {
        this.TL_near_light = initObj.TL_near_light
      }
      else {
        this.TL_near_light = false;
      }
      if (initObj.hasOwnProperty('TL_far_light')) {
        this.TL_far_light = initObj.TL_far_light
      }
      else {
        this.TL_far_light = false;
      }
      if (initObj.hasOwnProperty('TL_top_warning_light')) {
        this.TL_top_warning_light = initObj.TL_top_warning_light
      }
      else {
        this.TL_top_warning_light = false;
      }
      if (initObj.hasOwnProperty('TL_front_fog_light')) {
        this.TL_front_fog_light = initObj.TL_front_fog_light
      }
      else {
        this.TL_front_fog_light = false;
      }
      if (initObj.hasOwnProperty('TL_front_work_light')) {
        this.TL_front_work_light = initObj.TL_front_work_light
      }
      else {
        this.TL_front_work_light = false;
      }
      if (initObj.hasOwnProperty('TL_back_work_light')) {
        this.TL_back_work_light = initObj.TL_back_work_light
      }
      else {
        this.TL_back_work_light = false;
      }
      if (initObj.hasOwnProperty('TL_side_light')) {
        this.TL_side_light = initObj.TL_side_light
      }
      else {
        this.TL_side_light = false;
      }
      if (initObj.hasOwnProperty('TL_position_light')) {
        this.TL_position_light = initObj.TL_position_light
      }
      else {
        this.TL_position_light = false;
      }
      if (initObj.hasOwnProperty('TL_back_left_light')) {
        this.TL_back_left_light = initObj.TL_back_left_light
      }
      else {
        this.TL_back_left_light = false;
      }
      if (initObj.hasOwnProperty('TL_back_right_light')) {
        this.TL_back_right_light = initObj.TL_back_right_light
      }
      else {
        this.TL_back_right_light = false;
      }
      if (initObj.hasOwnProperty('emergency_light')) {
        this.emergency_light = initObj.emergency_light
      }
      else {
        this.emergency_light = false;
      }
      if (initObj.hasOwnProperty('TL_back_position_light')) {
        this.TL_back_position_light = initObj.TL_back_position_light
      }
      else {
        this.TL_back_position_light = false;
      }
      if (initObj.hasOwnProperty('TL_brake_light')) {
        this.TL_brake_light = initObj.TL_brake_light
      }
      else {
        this.TL_brake_light = false;
      }
      if (initObj.hasOwnProperty('TL_reverse_light')) {
        this.TL_reverse_light = initObj.TL_reverse_light
      }
      else {
        this.TL_reverse_light = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Frontend
    // Serialize message field [TL_left_light]
    bufferOffset = _serializer.bool(obj.TL_left_light, buffer, bufferOffset);
    // Serialize message field [TL_right_light]
    bufferOffset = _serializer.bool(obj.TL_right_light, buffer, bufferOffset);
    // Serialize message field [TL_near_light]
    bufferOffset = _serializer.bool(obj.TL_near_light, buffer, bufferOffset);
    // Serialize message field [TL_far_light]
    bufferOffset = _serializer.bool(obj.TL_far_light, buffer, bufferOffset);
    // Serialize message field [TL_top_warning_light]
    bufferOffset = _serializer.bool(obj.TL_top_warning_light, buffer, bufferOffset);
    // Serialize message field [TL_front_fog_light]
    bufferOffset = _serializer.bool(obj.TL_front_fog_light, buffer, bufferOffset);
    // Serialize message field [TL_front_work_light]
    bufferOffset = _serializer.bool(obj.TL_front_work_light, buffer, bufferOffset);
    // Serialize message field [TL_back_work_light]
    bufferOffset = _serializer.bool(obj.TL_back_work_light, buffer, bufferOffset);
    // Serialize message field [TL_side_light]
    bufferOffset = _serializer.bool(obj.TL_side_light, buffer, bufferOffset);
    // Serialize message field [TL_position_light]
    bufferOffset = _serializer.bool(obj.TL_position_light, buffer, bufferOffset);
    // Serialize message field [TL_back_left_light]
    bufferOffset = _serializer.bool(obj.TL_back_left_light, buffer, bufferOffset);
    // Serialize message field [TL_back_right_light]
    bufferOffset = _serializer.bool(obj.TL_back_right_light, buffer, bufferOffset);
    // Serialize message field [emergency_light]
    bufferOffset = _serializer.bool(obj.emergency_light, buffer, bufferOffset);
    // Serialize message field [TL_back_position_light]
    bufferOffset = _serializer.bool(obj.TL_back_position_light, buffer, bufferOffset);
    // Serialize message field [TL_brake_light]
    bufferOffset = _serializer.bool(obj.TL_brake_light, buffer, bufferOffset);
    // Serialize message field [TL_reverse_light]
    bufferOffset = _serializer.bool(obj.TL_reverse_light, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Frontend
    let len;
    let data = new Frontend(null);
    // Deserialize message field [TL_left_light]
    data.TL_left_light = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [TL_right_light]
    data.TL_right_light = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [TL_near_light]
    data.TL_near_light = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [TL_far_light]
    data.TL_far_light = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [TL_top_warning_light]
    data.TL_top_warning_light = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [TL_front_fog_light]
    data.TL_front_fog_light = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [TL_front_work_light]
    data.TL_front_work_light = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [TL_back_work_light]
    data.TL_back_work_light = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [TL_side_light]
    data.TL_side_light = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [TL_position_light]
    data.TL_position_light = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [TL_back_left_light]
    data.TL_back_left_light = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [TL_back_right_light]
    data.TL_back_right_light = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [emergency_light]
    data.emergency_light = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [TL_back_position_light]
    data.TL_back_position_light = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [TL_brake_light]
    data.TL_brake_light = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [TL_reverse_light]
    data.TL_reverse_light = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'frontend_msgs/Frontend';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6d69890661b416e2254fb5f08a7e73e1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool TL_left_light
    bool TL_right_light
    bool TL_near_light
    bool TL_far_light
    
    bool TL_top_warning_light
    bool TL_front_fog_light
    bool TL_front_work_light
    bool TL_back_work_light
    bool TL_side_light
    bool TL_position_light
    bool TL_back_left_light
    bool TL_back_right_light
    bool emergency_light
    bool TL_back_position_light
    bool TL_brake_light
    bool TL_reverse_light
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Frontend(null);
    if (msg.TL_left_light !== undefined) {
      resolved.TL_left_light = msg.TL_left_light;
    }
    else {
      resolved.TL_left_light = false
    }

    if (msg.TL_right_light !== undefined) {
      resolved.TL_right_light = msg.TL_right_light;
    }
    else {
      resolved.TL_right_light = false
    }

    if (msg.TL_near_light !== undefined) {
      resolved.TL_near_light = msg.TL_near_light;
    }
    else {
      resolved.TL_near_light = false
    }

    if (msg.TL_far_light !== undefined) {
      resolved.TL_far_light = msg.TL_far_light;
    }
    else {
      resolved.TL_far_light = false
    }

    if (msg.TL_top_warning_light !== undefined) {
      resolved.TL_top_warning_light = msg.TL_top_warning_light;
    }
    else {
      resolved.TL_top_warning_light = false
    }

    if (msg.TL_front_fog_light !== undefined) {
      resolved.TL_front_fog_light = msg.TL_front_fog_light;
    }
    else {
      resolved.TL_front_fog_light = false
    }

    if (msg.TL_front_work_light !== undefined) {
      resolved.TL_front_work_light = msg.TL_front_work_light;
    }
    else {
      resolved.TL_front_work_light = false
    }

    if (msg.TL_back_work_light !== undefined) {
      resolved.TL_back_work_light = msg.TL_back_work_light;
    }
    else {
      resolved.TL_back_work_light = false
    }

    if (msg.TL_side_light !== undefined) {
      resolved.TL_side_light = msg.TL_side_light;
    }
    else {
      resolved.TL_side_light = false
    }

    if (msg.TL_position_light !== undefined) {
      resolved.TL_position_light = msg.TL_position_light;
    }
    else {
      resolved.TL_position_light = false
    }

    if (msg.TL_back_left_light !== undefined) {
      resolved.TL_back_left_light = msg.TL_back_left_light;
    }
    else {
      resolved.TL_back_left_light = false
    }

    if (msg.TL_back_right_light !== undefined) {
      resolved.TL_back_right_light = msg.TL_back_right_light;
    }
    else {
      resolved.TL_back_right_light = false
    }

    if (msg.emergency_light !== undefined) {
      resolved.emergency_light = msg.emergency_light;
    }
    else {
      resolved.emergency_light = false
    }

    if (msg.TL_back_position_light !== undefined) {
      resolved.TL_back_position_light = msg.TL_back_position_light;
    }
    else {
      resolved.TL_back_position_light = false
    }

    if (msg.TL_brake_light !== undefined) {
      resolved.TL_brake_light = msg.TL_brake_light;
    }
    else {
      resolved.TL_brake_light = false
    }

    if (msg.TL_reverse_light !== undefined) {
      resolved.TL_reverse_light = msg.TL_reverse_light;
    }
    else {
      resolved.TL_reverse_light = false
    }

    return resolved;
    }
};

module.exports = Frontend;
