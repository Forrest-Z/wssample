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

class Frontend_control {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.top_warn = null;
      this.air_beep = null;
      this.front_fog = null;
      this.front_work = null;
      this.side = null;
      this.position = null;
      this.emergency = null;
      this.brake = null;
      this.reverse = null;
      this.back_work = null;
    }
    else {
      if (initObj.hasOwnProperty('top_warn')) {
        this.top_warn = initObj.top_warn
      }
      else {
        this.top_warn = 0;
      }
      if (initObj.hasOwnProperty('air_beep')) {
        this.air_beep = initObj.air_beep
      }
      else {
        this.air_beep = 0;
      }
      if (initObj.hasOwnProperty('front_fog')) {
        this.front_fog = initObj.front_fog
      }
      else {
        this.front_fog = 0;
      }
      if (initObj.hasOwnProperty('front_work')) {
        this.front_work = initObj.front_work
      }
      else {
        this.front_work = 0;
      }
      if (initObj.hasOwnProperty('side')) {
        this.side = initObj.side
      }
      else {
        this.side = 0;
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = 0;
      }
      if (initObj.hasOwnProperty('emergency')) {
        this.emergency = initObj.emergency
      }
      else {
        this.emergency = 0;
      }
      if (initObj.hasOwnProperty('brake')) {
        this.brake = initObj.brake
      }
      else {
        this.brake = 0;
      }
      if (initObj.hasOwnProperty('reverse')) {
        this.reverse = initObj.reverse
      }
      else {
        this.reverse = 0;
      }
      if (initObj.hasOwnProperty('back_work')) {
        this.back_work = initObj.back_work
      }
      else {
        this.back_work = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Frontend_control
    // Serialize message field [top_warn]
    bufferOffset = _serializer.int32(obj.top_warn, buffer, bufferOffset);
    // Serialize message field [air_beep]
    bufferOffset = _serializer.int32(obj.air_beep, buffer, bufferOffset);
    // Serialize message field [front_fog]
    bufferOffset = _serializer.int32(obj.front_fog, buffer, bufferOffset);
    // Serialize message field [front_work]
    bufferOffset = _serializer.int32(obj.front_work, buffer, bufferOffset);
    // Serialize message field [side]
    bufferOffset = _serializer.int32(obj.side, buffer, bufferOffset);
    // Serialize message field [position]
    bufferOffset = _serializer.int32(obj.position, buffer, bufferOffset);
    // Serialize message field [emergency]
    bufferOffset = _serializer.int32(obj.emergency, buffer, bufferOffset);
    // Serialize message field [brake]
    bufferOffset = _serializer.int32(obj.brake, buffer, bufferOffset);
    // Serialize message field [reverse]
    bufferOffset = _serializer.int32(obj.reverse, buffer, bufferOffset);
    // Serialize message field [back_work]
    bufferOffset = _serializer.int32(obj.back_work, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Frontend_control
    let len;
    let data = new Frontend_control(null);
    // Deserialize message field [top_warn]
    data.top_warn = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [air_beep]
    data.air_beep = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [front_fog]
    data.front_fog = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [front_work]
    data.front_work = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [side]
    data.side = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [emergency]
    data.emergency = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [brake]
    data.brake = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [reverse]
    data.reverse = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [back_work]
    data.back_work = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'frontend_msgs/Frontend_control';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '07e96978fad44d955264fd804f0af5ca';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # frontend lights control
    # int32 left
    # int32 right
    # int32 near
    # int32 far
    int32 top_warn
    int32 air_beep
    int32 front_fog
    int32 front_work
    int32 side
    int32 position
    int32 emergency
    int32 brake
    int32 reverse
    int32 back_work
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Frontend_control(null);
    if (msg.top_warn !== undefined) {
      resolved.top_warn = msg.top_warn;
    }
    else {
      resolved.top_warn = 0
    }

    if (msg.air_beep !== undefined) {
      resolved.air_beep = msg.air_beep;
    }
    else {
      resolved.air_beep = 0
    }

    if (msg.front_fog !== undefined) {
      resolved.front_fog = msg.front_fog;
    }
    else {
      resolved.front_fog = 0
    }

    if (msg.front_work !== undefined) {
      resolved.front_work = msg.front_work;
    }
    else {
      resolved.front_work = 0
    }

    if (msg.side !== undefined) {
      resolved.side = msg.side;
    }
    else {
      resolved.side = 0
    }

    if (msg.position !== undefined) {
      resolved.position = msg.position;
    }
    else {
      resolved.position = 0
    }

    if (msg.emergency !== undefined) {
      resolved.emergency = msg.emergency;
    }
    else {
      resolved.emergency = 0
    }

    if (msg.brake !== undefined) {
      resolved.brake = msg.brake;
    }
    else {
      resolved.brake = 0
    }

    if (msg.reverse !== undefined) {
      resolved.reverse = msg.reverse;
    }
    else {
      resolved.reverse = 0
    }

    if (msg.back_work !== undefined) {
      resolved.back_work = msg.back_work;
    }
    else {
      resolved.back_work = 0
    }

    return resolved;
    }
};

module.exports = Frontend_control;
