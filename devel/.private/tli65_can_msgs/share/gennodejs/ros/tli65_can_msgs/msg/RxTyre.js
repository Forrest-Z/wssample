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

class RxTyre {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.front_left_pressure = null;
      this.front_right_pressure = null;
      this.middle_left_outer_pressure = null;
      this.middle_left_inner_pressure = null;
      this.middle_right_inner_pressure = null;
      this.middle_right_outer_pressure = null;
      this.pressure_test_fault = null;
      this.back_left_outer_pressure = null;
      this.back_left_inner_pressure = null;
      this.back_right_inner_pressure = null;
      this.back_right_outer_pressure = null;
      this.front_left_temperature = null;
      this.front_right_temperature = null;
      this.front_temperature_test_fault = null;
      this.middle_back_temperature_test_fault = null;
      this.middle_left_outer_temperature = null;
      this.middle_left_inner_temperature = null;
      this.middle_right_inner_temperature = null;
      this.middle_right_outer_temperature = null;
      this.back_left_outer_temperature = null;
      this.back_left_inner_temperature = null;
      this.back_right_inner_temperature = null;
      this.back_right_outer_temperature = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('front_left_pressure')) {
        this.front_left_pressure = initObj.front_left_pressure
      }
      else {
        this.front_left_pressure = 0;
      }
      if (initObj.hasOwnProperty('front_right_pressure')) {
        this.front_right_pressure = initObj.front_right_pressure
      }
      else {
        this.front_right_pressure = 0;
      }
      if (initObj.hasOwnProperty('middle_left_outer_pressure')) {
        this.middle_left_outer_pressure = initObj.middle_left_outer_pressure
      }
      else {
        this.middle_left_outer_pressure = 0;
      }
      if (initObj.hasOwnProperty('middle_left_inner_pressure')) {
        this.middle_left_inner_pressure = initObj.middle_left_inner_pressure
      }
      else {
        this.middle_left_inner_pressure = 0;
      }
      if (initObj.hasOwnProperty('middle_right_inner_pressure')) {
        this.middle_right_inner_pressure = initObj.middle_right_inner_pressure
      }
      else {
        this.middle_right_inner_pressure = 0;
      }
      if (initObj.hasOwnProperty('middle_right_outer_pressure')) {
        this.middle_right_outer_pressure = initObj.middle_right_outer_pressure
      }
      else {
        this.middle_right_outer_pressure = 0;
      }
      if (initObj.hasOwnProperty('pressure_test_fault')) {
        this.pressure_test_fault = initObj.pressure_test_fault
      }
      else {
        this.pressure_test_fault = 0;
      }
      if (initObj.hasOwnProperty('back_left_outer_pressure')) {
        this.back_left_outer_pressure = initObj.back_left_outer_pressure
      }
      else {
        this.back_left_outer_pressure = 0;
      }
      if (initObj.hasOwnProperty('back_left_inner_pressure')) {
        this.back_left_inner_pressure = initObj.back_left_inner_pressure
      }
      else {
        this.back_left_inner_pressure = 0;
      }
      if (initObj.hasOwnProperty('back_right_inner_pressure')) {
        this.back_right_inner_pressure = initObj.back_right_inner_pressure
      }
      else {
        this.back_right_inner_pressure = 0;
      }
      if (initObj.hasOwnProperty('back_right_outer_pressure')) {
        this.back_right_outer_pressure = initObj.back_right_outer_pressure
      }
      else {
        this.back_right_outer_pressure = 0;
      }
      if (initObj.hasOwnProperty('front_left_temperature')) {
        this.front_left_temperature = initObj.front_left_temperature
      }
      else {
        this.front_left_temperature = 0.0;
      }
      if (initObj.hasOwnProperty('front_right_temperature')) {
        this.front_right_temperature = initObj.front_right_temperature
      }
      else {
        this.front_right_temperature = 0.0;
      }
      if (initObj.hasOwnProperty('front_temperature_test_fault')) {
        this.front_temperature_test_fault = initObj.front_temperature_test_fault
      }
      else {
        this.front_temperature_test_fault = 0;
      }
      if (initObj.hasOwnProperty('middle_back_temperature_test_fault')) {
        this.middle_back_temperature_test_fault = initObj.middle_back_temperature_test_fault
      }
      else {
        this.middle_back_temperature_test_fault = 0;
      }
      if (initObj.hasOwnProperty('middle_left_outer_temperature')) {
        this.middle_left_outer_temperature = initObj.middle_left_outer_temperature
      }
      else {
        this.middle_left_outer_temperature = 0.0;
      }
      if (initObj.hasOwnProperty('middle_left_inner_temperature')) {
        this.middle_left_inner_temperature = initObj.middle_left_inner_temperature
      }
      else {
        this.middle_left_inner_temperature = 0.0;
      }
      if (initObj.hasOwnProperty('middle_right_inner_temperature')) {
        this.middle_right_inner_temperature = initObj.middle_right_inner_temperature
      }
      else {
        this.middle_right_inner_temperature = 0.0;
      }
      if (initObj.hasOwnProperty('middle_right_outer_temperature')) {
        this.middle_right_outer_temperature = initObj.middle_right_outer_temperature
      }
      else {
        this.middle_right_outer_temperature = 0.0;
      }
      if (initObj.hasOwnProperty('back_left_outer_temperature')) {
        this.back_left_outer_temperature = initObj.back_left_outer_temperature
      }
      else {
        this.back_left_outer_temperature = 0.0;
      }
      if (initObj.hasOwnProperty('back_left_inner_temperature')) {
        this.back_left_inner_temperature = initObj.back_left_inner_temperature
      }
      else {
        this.back_left_inner_temperature = 0.0;
      }
      if (initObj.hasOwnProperty('back_right_inner_temperature')) {
        this.back_right_inner_temperature = initObj.back_right_inner_temperature
      }
      else {
        this.back_right_inner_temperature = 0.0;
      }
      if (initObj.hasOwnProperty('back_right_outer_temperature')) {
        this.back_right_outer_temperature = initObj.back_right_outer_temperature
      }
      else {
        this.back_right_outer_temperature = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RxTyre
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [front_left_pressure]
    bufferOffset = _serializer.uint16(obj.front_left_pressure, buffer, bufferOffset);
    // Serialize message field [front_right_pressure]
    bufferOffset = _serializer.uint16(obj.front_right_pressure, buffer, bufferOffset);
    // Serialize message field [middle_left_outer_pressure]
    bufferOffset = _serializer.uint16(obj.middle_left_outer_pressure, buffer, bufferOffset);
    // Serialize message field [middle_left_inner_pressure]
    bufferOffset = _serializer.uint16(obj.middle_left_inner_pressure, buffer, bufferOffset);
    // Serialize message field [middle_right_inner_pressure]
    bufferOffset = _serializer.uint16(obj.middle_right_inner_pressure, buffer, bufferOffset);
    // Serialize message field [middle_right_outer_pressure]
    bufferOffset = _serializer.uint16(obj.middle_right_outer_pressure, buffer, bufferOffset);
    // Serialize message field [pressure_test_fault]
    bufferOffset = _serializer.uint8(obj.pressure_test_fault, buffer, bufferOffset);
    // Serialize message field [back_left_outer_pressure]
    bufferOffset = _serializer.uint16(obj.back_left_outer_pressure, buffer, bufferOffset);
    // Serialize message field [back_left_inner_pressure]
    bufferOffset = _serializer.uint16(obj.back_left_inner_pressure, buffer, bufferOffset);
    // Serialize message field [back_right_inner_pressure]
    bufferOffset = _serializer.uint16(obj.back_right_inner_pressure, buffer, bufferOffset);
    // Serialize message field [back_right_outer_pressure]
    bufferOffset = _serializer.uint16(obj.back_right_outer_pressure, buffer, bufferOffset);
    // Serialize message field [front_left_temperature]
    bufferOffset = _serializer.float64(obj.front_left_temperature, buffer, bufferOffset);
    // Serialize message field [front_right_temperature]
    bufferOffset = _serializer.float64(obj.front_right_temperature, buffer, bufferOffset);
    // Serialize message field [front_temperature_test_fault]
    bufferOffset = _serializer.uint8(obj.front_temperature_test_fault, buffer, bufferOffset);
    // Serialize message field [middle_back_temperature_test_fault]
    bufferOffset = _serializer.uint8(obj.middle_back_temperature_test_fault, buffer, bufferOffset);
    // Serialize message field [middle_left_outer_temperature]
    bufferOffset = _serializer.float64(obj.middle_left_outer_temperature, buffer, bufferOffset);
    // Serialize message field [middle_left_inner_temperature]
    bufferOffset = _serializer.float64(obj.middle_left_inner_temperature, buffer, bufferOffset);
    // Serialize message field [middle_right_inner_temperature]
    bufferOffset = _serializer.float64(obj.middle_right_inner_temperature, buffer, bufferOffset);
    // Serialize message field [middle_right_outer_temperature]
    bufferOffset = _serializer.float64(obj.middle_right_outer_temperature, buffer, bufferOffset);
    // Serialize message field [back_left_outer_temperature]
    bufferOffset = _serializer.float64(obj.back_left_outer_temperature, buffer, bufferOffset);
    // Serialize message field [back_left_inner_temperature]
    bufferOffset = _serializer.float64(obj.back_left_inner_temperature, buffer, bufferOffset);
    // Serialize message field [back_right_inner_temperature]
    bufferOffset = _serializer.float64(obj.back_right_inner_temperature, buffer, bufferOffset);
    // Serialize message field [back_right_outer_temperature]
    bufferOffset = _serializer.float64(obj.back_right_outer_temperature, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RxTyre
    let len;
    let data = new RxTyre(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [front_left_pressure]
    data.front_left_pressure = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [front_right_pressure]
    data.front_right_pressure = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [middle_left_outer_pressure]
    data.middle_left_outer_pressure = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [middle_left_inner_pressure]
    data.middle_left_inner_pressure = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [middle_right_inner_pressure]
    data.middle_right_inner_pressure = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [middle_right_outer_pressure]
    data.middle_right_outer_pressure = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [pressure_test_fault]
    data.pressure_test_fault = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [back_left_outer_pressure]
    data.back_left_outer_pressure = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [back_left_inner_pressure]
    data.back_left_inner_pressure = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [back_right_inner_pressure]
    data.back_right_inner_pressure = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [back_right_outer_pressure]
    data.back_right_outer_pressure = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [front_left_temperature]
    data.front_left_temperature = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [front_right_temperature]
    data.front_right_temperature = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [front_temperature_test_fault]
    data.front_temperature_test_fault = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [middle_back_temperature_test_fault]
    data.middle_back_temperature_test_fault = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [middle_left_outer_temperature]
    data.middle_left_outer_temperature = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [middle_left_inner_temperature]
    data.middle_left_inner_temperature = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [middle_right_inner_temperature]
    data.middle_right_inner_temperature = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [middle_right_outer_temperature]
    data.middle_right_outer_temperature = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [back_left_outer_temperature]
    data.back_left_outer_temperature = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [back_left_inner_temperature]
    data.back_left_inner_temperature = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [back_right_inner_temperature]
    data.back_right_inner_temperature = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [back_right_outer_temperature]
    data.back_right_outer_temperature = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 103;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tli65_can_msgs/RxTyre';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '44acfc146651f84144777b20f26ca9a7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    # tyre1
    uint16 front_left_pressure
    uint16 front_right_pressure
    uint16 middle_left_outer_pressure
    uint16 middle_left_inner_pressure
    uint16 middle_right_inner_pressure
    uint16 middle_right_outer_pressure
    uint8 pressure_test_fault
    
    # tyre2
    uint16 back_left_outer_pressure
    uint16 back_left_inner_pressure
    uint16 back_right_inner_pressure
    uint16 back_right_outer_pressure
    
    # tyre3
    float64 front_left_temperature
    float64 front_right_temperature
    uint8 front_temperature_test_fault
    uint8 middle_back_temperature_test_fault
    
    # tyre4
    float64 middle_left_outer_temperature
    float64 middle_left_inner_temperature
    float64 middle_right_inner_temperature
    float64 middle_right_outer_temperature
    
    # tyre5
    float64 back_left_outer_temperature
    float64 back_left_inner_temperature
    float64 back_right_inner_temperature
    float64 back_right_outer_temperature
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
    const resolved = new RxTyre(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.front_left_pressure !== undefined) {
      resolved.front_left_pressure = msg.front_left_pressure;
    }
    else {
      resolved.front_left_pressure = 0
    }

    if (msg.front_right_pressure !== undefined) {
      resolved.front_right_pressure = msg.front_right_pressure;
    }
    else {
      resolved.front_right_pressure = 0
    }

    if (msg.middle_left_outer_pressure !== undefined) {
      resolved.middle_left_outer_pressure = msg.middle_left_outer_pressure;
    }
    else {
      resolved.middle_left_outer_pressure = 0
    }

    if (msg.middle_left_inner_pressure !== undefined) {
      resolved.middle_left_inner_pressure = msg.middle_left_inner_pressure;
    }
    else {
      resolved.middle_left_inner_pressure = 0
    }

    if (msg.middle_right_inner_pressure !== undefined) {
      resolved.middle_right_inner_pressure = msg.middle_right_inner_pressure;
    }
    else {
      resolved.middle_right_inner_pressure = 0
    }

    if (msg.middle_right_outer_pressure !== undefined) {
      resolved.middle_right_outer_pressure = msg.middle_right_outer_pressure;
    }
    else {
      resolved.middle_right_outer_pressure = 0
    }

    if (msg.pressure_test_fault !== undefined) {
      resolved.pressure_test_fault = msg.pressure_test_fault;
    }
    else {
      resolved.pressure_test_fault = 0
    }

    if (msg.back_left_outer_pressure !== undefined) {
      resolved.back_left_outer_pressure = msg.back_left_outer_pressure;
    }
    else {
      resolved.back_left_outer_pressure = 0
    }

    if (msg.back_left_inner_pressure !== undefined) {
      resolved.back_left_inner_pressure = msg.back_left_inner_pressure;
    }
    else {
      resolved.back_left_inner_pressure = 0
    }

    if (msg.back_right_inner_pressure !== undefined) {
      resolved.back_right_inner_pressure = msg.back_right_inner_pressure;
    }
    else {
      resolved.back_right_inner_pressure = 0
    }

    if (msg.back_right_outer_pressure !== undefined) {
      resolved.back_right_outer_pressure = msg.back_right_outer_pressure;
    }
    else {
      resolved.back_right_outer_pressure = 0
    }

    if (msg.front_left_temperature !== undefined) {
      resolved.front_left_temperature = msg.front_left_temperature;
    }
    else {
      resolved.front_left_temperature = 0.0
    }

    if (msg.front_right_temperature !== undefined) {
      resolved.front_right_temperature = msg.front_right_temperature;
    }
    else {
      resolved.front_right_temperature = 0.0
    }

    if (msg.front_temperature_test_fault !== undefined) {
      resolved.front_temperature_test_fault = msg.front_temperature_test_fault;
    }
    else {
      resolved.front_temperature_test_fault = 0
    }

    if (msg.middle_back_temperature_test_fault !== undefined) {
      resolved.middle_back_temperature_test_fault = msg.middle_back_temperature_test_fault;
    }
    else {
      resolved.middle_back_temperature_test_fault = 0
    }

    if (msg.middle_left_outer_temperature !== undefined) {
      resolved.middle_left_outer_temperature = msg.middle_left_outer_temperature;
    }
    else {
      resolved.middle_left_outer_temperature = 0.0
    }

    if (msg.middle_left_inner_temperature !== undefined) {
      resolved.middle_left_inner_temperature = msg.middle_left_inner_temperature;
    }
    else {
      resolved.middle_left_inner_temperature = 0.0
    }

    if (msg.middle_right_inner_temperature !== undefined) {
      resolved.middle_right_inner_temperature = msg.middle_right_inner_temperature;
    }
    else {
      resolved.middle_right_inner_temperature = 0.0
    }

    if (msg.middle_right_outer_temperature !== undefined) {
      resolved.middle_right_outer_temperature = msg.middle_right_outer_temperature;
    }
    else {
      resolved.middle_right_outer_temperature = 0.0
    }

    if (msg.back_left_outer_temperature !== undefined) {
      resolved.back_left_outer_temperature = msg.back_left_outer_temperature;
    }
    else {
      resolved.back_left_outer_temperature = 0.0
    }

    if (msg.back_left_inner_temperature !== undefined) {
      resolved.back_left_inner_temperature = msg.back_left_inner_temperature;
    }
    else {
      resolved.back_left_inner_temperature = 0.0
    }

    if (msg.back_right_inner_temperature !== undefined) {
      resolved.back_right_inner_temperature = msg.back_right_inner_temperature;
    }
    else {
      resolved.back_right_inner_temperature = 0.0
    }

    if (msg.back_right_outer_temperature !== undefined) {
      resolved.back_right_outer_temperature = msg.back_right_outer_temperature;
    }
    else {
      resolved.back_right_outer_temperature = 0.0
    }

    return resolved;
    }
};

module.exports = RxTyre;
