// Auto-generated. Do not edit!

// (in-package planner_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class WayPoint {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.lock_down_index = null;
      this.aim_pt_index = null;
      this.x = null;
      this.y = null;
      this.z = null;
      this.roll = null;
      this.pitch = null;
      this.yaw = null;
      this.kalman_yawrate = null;
      this.kalman_vx = null;
      this.acceleration = null;
      this.steer = null;
      this.throttle_percentage = null;
      this.xbr = null;
      this.gear = null;
      this.left_light = null;
      this.right_light = null;
      this.air_beep = null;
      this.time_to_last_point = null;
      this.current_lat_error = null;
      this.flag_lock_down_index_offload = null;
    }
    else {
      if (initObj.hasOwnProperty('lock_down_index')) {
        this.lock_down_index = initObj.lock_down_index
      }
      else {
        this.lock_down_index = 0;
      }
      if (initObj.hasOwnProperty('aim_pt_index')) {
        this.aim_pt_index = initObj.aim_pt_index
      }
      else {
        this.aim_pt_index = 0;
      }
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = 0.0;
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = 0.0;
      }
      if (initObj.hasOwnProperty('z')) {
        this.z = initObj.z
      }
      else {
        this.z = 0.0;
      }
      if (initObj.hasOwnProperty('roll')) {
        this.roll = initObj.roll
      }
      else {
        this.roll = 0.0;
      }
      if (initObj.hasOwnProperty('pitch')) {
        this.pitch = initObj.pitch
      }
      else {
        this.pitch = 0.0;
      }
      if (initObj.hasOwnProperty('yaw')) {
        this.yaw = initObj.yaw
      }
      else {
        this.yaw = 0.0;
      }
      if (initObj.hasOwnProperty('kalman_yawrate')) {
        this.kalman_yawrate = initObj.kalman_yawrate
      }
      else {
        this.kalman_yawrate = 0.0;
      }
      if (initObj.hasOwnProperty('kalman_vx')) {
        this.kalman_vx = initObj.kalman_vx
      }
      else {
        this.kalman_vx = 0.0;
      }
      if (initObj.hasOwnProperty('acceleration')) {
        this.acceleration = initObj.acceleration
      }
      else {
        this.acceleration = 0.0;
      }
      if (initObj.hasOwnProperty('steer')) {
        this.steer = initObj.steer
      }
      else {
        this.steer = 0.0;
      }
      if (initObj.hasOwnProperty('throttle_percentage')) {
        this.throttle_percentage = initObj.throttle_percentage
      }
      else {
        this.throttle_percentage = 0.0;
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
      if (initObj.hasOwnProperty('air_beep')) {
        this.air_beep = initObj.air_beep
      }
      else {
        this.air_beep = 0;
      }
      if (initObj.hasOwnProperty('time_to_last_point')) {
        this.time_to_last_point = initObj.time_to_last_point
      }
      else {
        this.time_to_last_point = 0.0;
      }
      if (initObj.hasOwnProperty('current_lat_error')) {
        this.current_lat_error = initObj.current_lat_error
      }
      else {
        this.current_lat_error = 0.0;
      }
      if (initObj.hasOwnProperty('flag_lock_down_index_offload')) {
        this.flag_lock_down_index_offload = initObj.flag_lock_down_index_offload
      }
      else {
        this.flag_lock_down_index_offload = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WayPoint
    // Serialize message field [lock_down_index]
    bufferOffset = _serializer.int32(obj.lock_down_index, buffer, bufferOffset);
    // Serialize message field [aim_pt_index]
    bufferOffset = _serializer.int32(obj.aim_pt_index, buffer, bufferOffset);
    // Serialize message field [x]
    bufferOffset = _serializer.float64(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.float64(obj.y, buffer, bufferOffset);
    // Serialize message field [z]
    bufferOffset = _serializer.float64(obj.z, buffer, bufferOffset);
    // Serialize message field [roll]
    bufferOffset = _serializer.float64(obj.roll, buffer, bufferOffset);
    // Serialize message field [pitch]
    bufferOffset = _serializer.float64(obj.pitch, buffer, bufferOffset);
    // Serialize message field [yaw]
    bufferOffset = _serializer.float64(obj.yaw, buffer, bufferOffset);
    // Serialize message field [kalman_yawrate]
    bufferOffset = _serializer.float64(obj.kalman_yawrate, buffer, bufferOffset);
    // Serialize message field [kalman_vx]
    bufferOffset = _serializer.float64(obj.kalman_vx, buffer, bufferOffset);
    // Serialize message field [acceleration]
    bufferOffset = _serializer.float64(obj.acceleration, buffer, bufferOffset);
    // Serialize message field [steer]
    bufferOffset = _serializer.float64(obj.steer, buffer, bufferOffset);
    // Serialize message field [throttle_percentage]
    bufferOffset = _serializer.float64(obj.throttle_percentage, buffer, bufferOffset);
    // Serialize message field [xbr]
    bufferOffset = _serializer.float64(obj.xbr, buffer, bufferOffset);
    // Serialize message field [gear]
    bufferOffset = _serializer.int8(obj.gear, buffer, bufferOffset);
    // Serialize message field [left_light]
    bufferOffset = _serializer.uint8(obj.left_light, buffer, bufferOffset);
    // Serialize message field [right_light]
    bufferOffset = _serializer.uint8(obj.right_light, buffer, bufferOffset);
    // Serialize message field [air_beep]
    bufferOffset = _serializer.uint8(obj.air_beep, buffer, bufferOffset);
    // Serialize message field [time_to_last_point]
    bufferOffset = _serializer.float64(obj.time_to_last_point, buffer, bufferOffset);
    // Serialize message field [current_lat_error]
    bufferOffset = _serializer.float64(obj.current_lat_error, buffer, bufferOffset);
    // Serialize message field [flag_lock_down_index_offload]
    bufferOffset = _serializer.bool(obj.flag_lock_down_index_offload, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WayPoint
    let len;
    let data = new WayPoint(null);
    // Deserialize message field [lock_down_index]
    data.lock_down_index = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [aim_pt_index]
    data.aim_pt_index = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [x]
    data.x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [z]
    data.z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [roll]
    data.roll = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pitch]
    data.pitch = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [yaw]
    data.yaw = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [kalman_yawrate]
    data.kalman_yawrate = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [kalman_vx]
    data.kalman_vx = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [acceleration]
    data.acceleration = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [steer]
    data.steer = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [throttle_percentage]
    data.throttle_percentage = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [xbr]
    data.xbr = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [gear]
    data.gear = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [left_light]
    data.left_light = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [right_light]
    data.right_light = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [air_beep]
    data.air_beep = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [time_to_last_point]
    data.time_to_last_point = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [current_lat_error]
    data.current_lat_error = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [flag_lock_down_index_offload]
    data.flag_lock_down_index_offload = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 125;
  }

  static datatype() {
    // Returns string type for a message object
    return 'planner_msgs/WayPoint';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '347035a0432cd4d05535eedeba88125a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # point has no Header
    
    int32 lock_down_index
    int32 aim_pt_index
    
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
    bool flag_lock_down_index_offload
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WayPoint(null);
    if (msg.lock_down_index !== undefined) {
      resolved.lock_down_index = msg.lock_down_index;
    }
    else {
      resolved.lock_down_index = 0
    }

    if (msg.aim_pt_index !== undefined) {
      resolved.aim_pt_index = msg.aim_pt_index;
    }
    else {
      resolved.aim_pt_index = 0
    }

    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = 0.0
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = 0.0
    }

    if (msg.z !== undefined) {
      resolved.z = msg.z;
    }
    else {
      resolved.z = 0.0
    }

    if (msg.roll !== undefined) {
      resolved.roll = msg.roll;
    }
    else {
      resolved.roll = 0.0
    }

    if (msg.pitch !== undefined) {
      resolved.pitch = msg.pitch;
    }
    else {
      resolved.pitch = 0.0
    }

    if (msg.yaw !== undefined) {
      resolved.yaw = msg.yaw;
    }
    else {
      resolved.yaw = 0.0
    }

    if (msg.kalman_yawrate !== undefined) {
      resolved.kalman_yawrate = msg.kalman_yawrate;
    }
    else {
      resolved.kalman_yawrate = 0.0
    }

    if (msg.kalman_vx !== undefined) {
      resolved.kalman_vx = msg.kalman_vx;
    }
    else {
      resolved.kalman_vx = 0.0
    }

    if (msg.acceleration !== undefined) {
      resolved.acceleration = msg.acceleration;
    }
    else {
      resolved.acceleration = 0.0
    }

    if (msg.steer !== undefined) {
      resolved.steer = msg.steer;
    }
    else {
      resolved.steer = 0.0
    }

    if (msg.throttle_percentage !== undefined) {
      resolved.throttle_percentage = msg.throttle_percentage;
    }
    else {
      resolved.throttle_percentage = 0.0
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

    if (msg.air_beep !== undefined) {
      resolved.air_beep = msg.air_beep;
    }
    else {
      resolved.air_beep = 0
    }

    if (msg.time_to_last_point !== undefined) {
      resolved.time_to_last_point = msg.time_to_last_point;
    }
    else {
      resolved.time_to_last_point = 0.0
    }

    if (msg.current_lat_error !== undefined) {
      resolved.current_lat_error = msg.current_lat_error;
    }
    else {
      resolved.current_lat_error = 0.0
    }

    if (msg.flag_lock_down_index_offload !== undefined) {
      resolved.flag_lock_down_index_offload = msg.flag_lock_down_index_offload;
    }
    else {
      resolved.flag_lock_down_index_offload = false
    }

    return resolved;
    }
};

module.exports = WayPoint;
