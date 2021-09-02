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
      this.left_light = null;
      this.right_light = null;
      this.near_light = null;
      this.far_light = null;
      this.top_warning_light = null;
      this.air_beep = null;
      this.front_fog_light = null;
      this.front_work_light = null;
      this.side_light = null;
      this.position_light = null;
      this.back_left_light = null;
      this.back_right_light = null;
      this.back_position_light = null;
      this.brake_light = null;
      this.reverse_light = null;
      this.back_work_light = null;
      this.emergency_light = null;
    }
    else {
      if (initObj.hasOwnProperty('left_light')) {
        this.left_light = initObj.left_light
      }
      else {
        this.left_light = 0;
      }
      if (initObj.hasOwnProperty('right_light')) {
        this.right_light = initObj.right_light
      }
      else {
        this.right_light = 0;
      }
      if (initObj.hasOwnProperty('near_light')) {
        this.near_light = initObj.near_light
      }
      else {
        this.near_light = 0;
      }
      if (initObj.hasOwnProperty('far_light')) {
        this.far_light = initObj.far_light
      }
      else {
        this.far_light = 0;
      }
      if (initObj.hasOwnProperty('top_warning_light')) {
        this.top_warning_light = initObj.top_warning_light
      }
      else {
        this.top_warning_light = 0;
      }
      if (initObj.hasOwnProperty('air_beep')) {
        this.air_beep = initObj.air_beep
      }
      else {
        this.air_beep = 0;
      }
      if (initObj.hasOwnProperty('front_fog_light')) {
        this.front_fog_light = initObj.front_fog_light
      }
      else {
        this.front_fog_light = 0;
      }
      if (initObj.hasOwnProperty('front_work_light')) {
        this.front_work_light = initObj.front_work_light
      }
      else {
        this.front_work_light = 0;
      }
      if (initObj.hasOwnProperty('side_light')) {
        this.side_light = initObj.side_light
      }
      else {
        this.side_light = 0;
      }
      if (initObj.hasOwnProperty('position_light')) {
        this.position_light = initObj.position_light
      }
      else {
        this.position_light = 0;
      }
      if (initObj.hasOwnProperty('back_left_light')) {
        this.back_left_light = initObj.back_left_light
      }
      else {
        this.back_left_light = 0;
      }
      if (initObj.hasOwnProperty('back_right_light')) {
        this.back_right_light = initObj.back_right_light
      }
      else {
        this.back_right_light = 0;
      }
      if (initObj.hasOwnProperty('back_position_light')) {
        this.back_position_light = initObj.back_position_light
      }
      else {
        this.back_position_light = 0;
      }
      if (initObj.hasOwnProperty('brake_light')) {
        this.brake_light = initObj.brake_light
      }
      else {
        this.brake_light = 0;
      }
      if (initObj.hasOwnProperty('reverse_light')) {
        this.reverse_light = initObj.reverse_light
      }
      else {
        this.reverse_light = 0;
      }
      if (initObj.hasOwnProperty('back_work_light')) {
        this.back_work_light = initObj.back_work_light
      }
      else {
        this.back_work_light = 0;
      }
      if (initObj.hasOwnProperty('emergency_light')) {
        this.emergency_light = initObj.emergency_light
      }
      else {
        this.emergency_light = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Frontend
    // Serialize message field [left_light]
    bufferOffset = _serializer.int32(obj.left_light, buffer, bufferOffset);
    // Serialize message field [right_light]
    bufferOffset = _serializer.int32(obj.right_light, buffer, bufferOffset);
    // Serialize message field [near_light]
    bufferOffset = _serializer.int32(obj.near_light, buffer, bufferOffset);
    // Serialize message field [far_light]
    bufferOffset = _serializer.int32(obj.far_light, buffer, bufferOffset);
    // Serialize message field [top_warning_light]
    bufferOffset = _serializer.int32(obj.top_warning_light, buffer, bufferOffset);
    // Serialize message field [air_beep]
    bufferOffset = _serializer.int32(obj.air_beep, buffer, bufferOffset);
    // Serialize message field [front_fog_light]
    bufferOffset = _serializer.int32(obj.front_fog_light, buffer, bufferOffset);
    // Serialize message field [front_work_light]
    bufferOffset = _serializer.int32(obj.front_work_light, buffer, bufferOffset);
    // Serialize message field [side_light]
    bufferOffset = _serializer.int32(obj.side_light, buffer, bufferOffset);
    // Serialize message field [position_light]
    bufferOffset = _serializer.int32(obj.position_light, buffer, bufferOffset);
    // Serialize message field [back_left_light]
    bufferOffset = _serializer.int32(obj.back_left_light, buffer, bufferOffset);
    // Serialize message field [back_right_light]
    bufferOffset = _serializer.int32(obj.back_right_light, buffer, bufferOffset);
    // Serialize message field [back_position_light]
    bufferOffset = _serializer.int32(obj.back_position_light, buffer, bufferOffset);
    // Serialize message field [brake_light]
    bufferOffset = _serializer.int32(obj.brake_light, buffer, bufferOffset);
    // Serialize message field [reverse_light]
    bufferOffset = _serializer.int32(obj.reverse_light, buffer, bufferOffset);
    // Serialize message field [back_work_light]
    bufferOffset = _serializer.int32(obj.back_work_light, buffer, bufferOffset);
    // Serialize message field [emergency_light]
    bufferOffset = _serializer.uint32(obj.emergency_light, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Frontend
    let len;
    let data = new Frontend(null);
    // Deserialize message field [left_light]
    data.left_light = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [right_light]
    data.right_light = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [near_light]
    data.near_light = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [far_light]
    data.far_light = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [top_warning_light]
    data.top_warning_light = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [air_beep]
    data.air_beep = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [front_fog_light]
    data.front_fog_light = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [front_work_light]
    data.front_work_light = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [side_light]
    data.side_light = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [position_light]
    data.position_light = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [back_left_light]
    data.back_left_light = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [back_right_light]
    data.back_right_light = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [back_position_light]
    data.back_position_light = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [brake_light]
    data.brake_light = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [reverse_light]
    data.reverse_light = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [back_work_light]
    data.back_work_light = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [emergency_light]
    data.emergency_light = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 68;
  }

  static datatype() {
    // Returns string type for a message object
    return 'frontend_msgs/Frontend';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4b5bd2883c6474dfc70615b662bea589';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #TL lights feedback
    int32 left_light
    int32 right_light
    int32 near_light
    int32 far_light
    
    int32 top_warning_light
    int32 air_beep
    int32 front_fog_light
    int32 front_work_light
    int32 side_light
    int32 position_light
    int32 back_left_light
    int32 back_right_light
    int32 back_position_light
    int32 brake_light
    int32 reverse_light
    int32 back_work_light
    
    # frontend lights control
    uint32 emergency_light
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Frontend(null);
    if (msg.left_light !== undefined) {
      resolved.left_light = msg.left_light;
    }
    else {
      resolved.left_light = 0
    }

    if (msg.right_light !== undefined) {
      resolved.right_light = msg.right_light;
    }
    else {
      resolved.right_light = 0
    }

    if (msg.near_light !== undefined) {
      resolved.near_light = msg.near_light;
    }
    else {
      resolved.near_light = 0
    }

    if (msg.far_light !== undefined) {
      resolved.far_light = msg.far_light;
    }
    else {
      resolved.far_light = 0
    }

    if (msg.top_warning_light !== undefined) {
      resolved.top_warning_light = msg.top_warning_light;
    }
    else {
      resolved.top_warning_light = 0
    }

    if (msg.air_beep !== undefined) {
      resolved.air_beep = msg.air_beep;
    }
    else {
      resolved.air_beep = 0
    }

    if (msg.front_fog_light !== undefined) {
      resolved.front_fog_light = msg.front_fog_light;
    }
    else {
      resolved.front_fog_light = 0
    }

    if (msg.front_work_light !== undefined) {
      resolved.front_work_light = msg.front_work_light;
    }
    else {
      resolved.front_work_light = 0
    }

    if (msg.side_light !== undefined) {
      resolved.side_light = msg.side_light;
    }
    else {
      resolved.side_light = 0
    }

    if (msg.position_light !== undefined) {
      resolved.position_light = msg.position_light;
    }
    else {
      resolved.position_light = 0
    }

    if (msg.back_left_light !== undefined) {
      resolved.back_left_light = msg.back_left_light;
    }
    else {
      resolved.back_left_light = 0
    }

    if (msg.back_right_light !== undefined) {
      resolved.back_right_light = msg.back_right_light;
    }
    else {
      resolved.back_right_light = 0
    }

    if (msg.back_position_light !== undefined) {
      resolved.back_position_light = msg.back_position_light;
    }
    else {
      resolved.back_position_light = 0
    }

    if (msg.brake_light !== undefined) {
      resolved.brake_light = msg.brake_light;
    }
    else {
      resolved.brake_light = 0
    }

    if (msg.reverse_light !== undefined) {
      resolved.reverse_light = msg.reverse_light;
    }
    else {
      resolved.reverse_light = 0
    }

    if (msg.back_work_light !== undefined) {
      resolved.back_work_light = msg.back_work_light;
    }
    else {
      resolved.back_work_light = 0
    }

    if (msg.emergency_light !== undefined) {
      resolved.emergency_light = msg.emergency_light;
    }
    else {
      resolved.emergency_light = 0
    }

    return resolved;
    }
};

module.exports = Frontend;
