// Auto-generated. Do not edit!

// (in-package teledrive_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Tli65Teledrive {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.control_type = null;
      this.steer = null;
      this.throttle_pedal = null;
      this.xbr = null;
      this.gear = null;
      this.epb = null;
      this.hang = null;
      this.air_beep = null;
      this.left_light = null;
      this.right_light = null;
      this.near_light = null;
      this.far_light = null;
      this.TL_rotate_warning_light = null;
      this.TL_front_fog_light = null;
      this.TL_front_work_light = null;
      this.TL_back_work_light = null;
      this.TL_side_light = null;
      this.TL_back_position_light = null;
      this.TL_hazard_indicator_light = null;
      this.TL_brake_light = null;
      this.TL_return_light = null;
    }
    else {
      if (initObj.hasOwnProperty('control_type')) {
        this.control_type = initObj.control_type
      }
      else {
        this.control_type = '';
      }
      if (initObj.hasOwnProperty('steer')) {
        this.steer = initObj.steer
      }
      else {
        this.steer = 0.0;
      }
      if (initObj.hasOwnProperty('throttle_pedal')) {
        this.throttle_pedal = initObj.throttle_pedal
      }
      else {
        this.throttle_pedal = 0.0;
      }
      if (initObj.hasOwnProperty('xbr')) {
        this.xbr = initObj.xbr
      }
      else {
        this.xbr = 0.0;
      }
      if (initObj.hasOwnProperty('gear')) {
        this.gear = initObj.gear
      }
      else {
        this.gear = 0;
      }
      if (initObj.hasOwnProperty('epb')) {
        this.epb = initObj.epb
      }
      else {
        this.epb = 0;
      }
      if (initObj.hasOwnProperty('hang')) {
        this.hang = initObj.hang
      }
      else {
        this.hang = 0;
      }
      if (initObj.hasOwnProperty('air_beep')) {
        this.air_beep = initObj.air_beep
      }
      else {
        this.air_beep = false;
      }
      if (initObj.hasOwnProperty('left_light')) {
        this.left_light = initObj.left_light
      }
      else {
        this.left_light = false;
      }
      if (initObj.hasOwnProperty('right_light')) {
        this.right_light = initObj.right_light
      }
      else {
        this.right_light = false;
      }
      if (initObj.hasOwnProperty('near_light')) {
        this.near_light = initObj.near_light
      }
      else {
        this.near_light = false;
      }
      if (initObj.hasOwnProperty('far_light')) {
        this.far_light = initObj.far_light
      }
      else {
        this.far_light = false;
      }
      if (initObj.hasOwnProperty('TL_rotate_warning_light')) {
        this.TL_rotate_warning_light = initObj.TL_rotate_warning_light
      }
      else {
        this.TL_rotate_warning_light = false;
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
      if (initObj.hasOwnProperty('TL_back_position_light')) {
        this.TL_back_position_light = initObj.TL_back_position_light
      }
      else {
        this.TL_back_position_light = false;
      }
      if (initObj.hasOwnProperty('TL_hazard_indicator_light')) {
        this.TL_hazard_indicator_light = initObj.TL_hazard_indicator_light
      }
      else {
        this.TL_hazard_indicator_light = false;
      }
      if (initObj.hasOwnProperty('TL_brake_light')) {
        this.TL_brake_light = initObj.TL_brake_light
      }
      else {
        this.TL_brake_light = false;
      }
      if (initObj.hasOwnProperty('TL_return_light')) {
        this.TL_return_light = initObj.TL_return_light
      }
      else {
        this.TL_return_light = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Tli65Teledrive
    // Serialize message field [control_type]
    bufferOffset = _serializer.string(obj.control_type, buffer, bufferOffset);
    // Serialize message field [steer]
    bufferOffset = _serializer.float64(obj.steer, buffer, bufferOffset);
    // Serialize message field [throttle_pedal]
    bufferOffset = _serializer.float64(obj.throttle_pedal, buffer, bufferOffset);
    // Serialize message field [xbr]
    bufferOffset = _serializer.float64(obj.xbr, buffer, bufferOffset);
    // Serialize message field [gear]
    bufferOffset = _serializer.int32(obj.gear, buffer, bufferOffset);
    // Serialize message field [epb]
    bufferOffset = _serializer.int32(obj.epb, buffer, bufferOffset);
    // Serialize message field [hang]
    bufferOffset = _serializer.int32(obj.hang, buffer, bufferOffset);
    // Serialize message field [air_beep]
    bufferOffset = _serializer.bool(obj.air_beep, buffer, bufferOffset);
    // Serialize message field [left_light]
    bufferOffset = _serializer.bool(obj.left_light, buffer, bufferOffset);
    // Serialize message field [right_light]
    bufferOffset = _serializer.bool(obj.right_light, buffer, bufferOffset);
    // Serialize message field [near_light]
    bufferOffset = _serializer.bool(obj.near_light, buffer, bufferOffset);
    // Serialize message field [far_light]
    bufferOffset = _serializer.bool(obj.far_light, buffer, bufferOffset);
    // Serialize message field [TL_rotate_warning_light]
    bufferOffset = _serializer.bool(obj.TL_rotate_warning_light, buffer, bufferOffset);
    // Serialize message field [TL_front_fog_light]
    bufferOffset = _serializer.bool(obj.TL_front_fog_light, buffer, bufferOffset);
    // Serialize message field [TL_front_work_light]
    bufferOffset = _serializer.bool(obj.TL_front_work_light, buffer, bufferOffset);
    // Serialize message field [TL_back_work_light]
    bufferOffset = _serializer.bool(obj.TL_back_work_light, buffer, bufferOffset);
    // Serialize message field [TL_side_light]
    bufferOffset = _serializer.bool(obj.TL_side_light, buffer, bufferOffset);
    // Serialize message field [TL_back_position_light]
    bufferOffset = _serializer.bool(obj.TL_back_position_light, buffer, bufferOffset);
    // Serialize message field [TL_hazard_indicator_light]
    bufferOffset = _serializer.bool(obj.TL_hazard_indicator_light, buffer, bufferOffset);
    // Serialize message field [TL_brake_light]
    bufferOffset = _serializer.bool(obj.TL_brake_light, buffer, bufferOffset);
    // Serialize message field [TL_return_light]
    bufferOffset = _serializer.bool(obj.TL_return_light, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Tli65Teledrive
    let len;
    let data = new Tli65Teledrive(null);
    // Deserialize message field [control_type]
    data.control_type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [steer]
    data.steer = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [throttle_pedal]
    data.throttle_pedal = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [xbr]
    data.xbr = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [gear]
    data.gear = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [epb]
    data.epb = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [hang]
    data.hang = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [air_beep]
    data.air_beep = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [left_light]
    data.left_light = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [right_light]
    data.right_light = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [near_light]
    data.near_light = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [far_light]
    data.far_light = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [TL_rotate_warning_light]
    data.TL_rotate_warning_light = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [TL_front_fog_light]
    data.TL_front_fog_light = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [TL_front_work_light]
    data.TL_front_work_light = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [TL_back_work_light]
    data.TL_back_work_light = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [TL_side_light]
    data.TL_side_light = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [TL_back_position_light]
    data.TL_back_position_light = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [TL_hazard_indicator_light]
    data.TL_hazard_indicator_light = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [TL_brake_light]
    data.TL_brake_light = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [TL_return_light]
    data.TL_return_light = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.control_type.length;
    return length + 54;
  }

  static datatype() {
    // Returns string type for a message object
    return 'teledrive_msgs/Tli65Teledrive';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ff9fc773e79bfc906f0ea2de32f97922';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string control_type
    
    float64 steer
    float64 throttle_pedal
    float64 xbr
    int32 gear
    int32 epb
    int32 hang
    bool air_beep
    bool left_light
    bool right_light
    bool near_light
    bool far_light
    
    #TL lights state
    bool TL_rotate_warning_light
    bool TL_front_fog_light
    bool TL_front_work_light
    bool TL_back_work_light
    bool TL_side_light
    bool TL_back_position_light
    bool TL_hazard_indicator_light
    bool TL_brake_light
    bool TL_return_light
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Tli65Teledrive(null);
    if (msg.control_type !== undefined) {
      resolved.control_type = msg.control_type;
    }
    else {
      resolved.control_type = ''
    }

    if (msg.steer !== undefined) {
      resolved.steer = msg.steer;
    }
    else {
      resolved.steer = 0.0
    }

    if (msg.throttle_pedal !== undefined) {
      resolved.throttle_pedal = msg.throttle_pedal;
    }
    else {
      resolved.throttle_pedal = 0.0
    }

    if (msg.xbr !== undefined) {
      resolved.xbr = msg.xbr;
    }
    else {
      resolved.xbr = 0.0
    }

    if (msg.gear !== undefined) {
      resolved.gear = msg.gear;
    }
    else {
      resolved.gear = 0
    }

    if (msg.epb !== undefined) {
      resolved.epb = msg.epb;
    }
    else {
      resolved.epb = 0
    }

    if (msg.hang !== undefined) {
      resolved.hang = msg.hang;
    }
    else {
      resolved.hang = 0
    }

    if (msg.air_beep !== undefined) {
      resolved.air_beep = msg.air_beep;
    }
    else {
      resolved.air_beep = false
    }

    if (msg.left_light !== undefined) {
      resolved.left_light = msg.left_light;
    }
    else {
      resolved.left_light = false
    }

    if (msg.right_light !== undefined) {
      resolved.right_light = msg.right_light;
    }
    else {
      resolved.right_light = false
    }

    if (msg.near_light !== undefined) {
      resolved.near_light = msg.near_light;
    }
    else {
      resolved.near_light = false
    }

    if (msg.far_light !== undefined) {
      resolved.far_light = msg.far_light;
    }
    else {
      resolved.far_light = false
    }

    if (msg.TL_rotate_warning_light !== undefined) {
      resolved.TL_rotate_warning_light = msg.TL_rotate_warning_light;
    }
    else {
      resolved.TL_rotate_warning_light = false
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

    if (msg.TL_back_position_light !== undefined) {
      resolved.TL_back_position_light = msg.TL_back_position_light;
    }
    else {
      resolved.TL_back_position_light = false
    }

    if (msg.TL_hazard_indicator_light !== undefined) {
      resolved.TL_hazard_indicator_light = msg.TL_hazard_indicator_light;
    }
    else {
      resolved.TL_hazard_indicator_light = false
    }

    if (msg.TL_brake_light !== undefined) {
      resolved.TL_brake_light = msg.TL_brake_light;
    }
    else {
      resolved.TL_brake_light = false
    }

    if (msg.TL_return_light !== undefined) {
      resolved.TL_return_light = msg.TL_return_light;
    }
    else {
      resolved.TL_return_light = false
    }

    return resolved;
    }
};

module.exports = Tli65Teledrive;
