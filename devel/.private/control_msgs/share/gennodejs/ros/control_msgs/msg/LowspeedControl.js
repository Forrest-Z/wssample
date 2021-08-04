// Auto-generated. Do not edit!

// (in-package control_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class LowspeedControl {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.hands = null;
      this.EPB_active = null;
      this.EPB = null;
      this.retarder_active = null;
      this.retarder = null;
      this.gear_active = null;
      this.max_forward_gear = null;
      this.gear = null;
      this.hang_active = null;
      this.hang = null;
      this.left = null;
      this.right = null;
      this.near = null;
      this.far = null;
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
      this.cooler = null;
      this.axle_diff = null;
      this.exhaust_brake = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('hands')) {
        this.hands = initObj.hands
      }
      else {
        this.hands = '';
      }
      if (initObj.hasOwnProperty('EPB_active')) {
        this.EPB_active = initObj.EPB_active
      }
      else {
        this.EPB_active = 0;
      }
      if (initObj.hasOwnProperty('EPB')) {
        this.EPB = initObj.EPB
      }
      else {
        this.EPB = 0;
      }
      if (initObj.hasOwnProperty('retarder_active')) {
        this.retarder_active = initObj.retarder_active
      }
      else {
        this.retarder_active = 0;
      }
      if (initObj.hasOwnProperty('retarder')) {
        this.retarder = initObj.retarder
      }
      else {
        this.retarder = 0.0;
      }
      if (initObj.hasOwnProperty('gear_active')) {
        this.gear_active = initObj.gear_active
      }
      else {
        this.gear_active = 0;
      }
      if (initObj.hasOwnProperty('max_forward_gear')) {
        this.max_forward_gear = initObj.max_forward_gear
      }
      else {
        this.max_forward_gear = 0;
      }
      if (initObj.hasOwnProperty('gear')) {
        this.gear = initObj.gear
      }
      else {
        this.gear = 0;
      }
      if (initObj.hasOwnProperty('hang_active')) {
        this.hang_active = initObj.hang_active
      }
      else {
        this.hang_active = 0;
      }
      if (initObj.hasOwnProperty('hang')) {
        this.hang = initObj.hang
      }
      else {
        this.hang = 0;
      }
      if (initObj.hasOwnProperty('left')) {
        this.left = initObj.left
      }
      else {
        this.left = 0;
      }
      if (initObj.hasOwnProperty('right')) {
        this.right = initObj.right
      }
      else {
        this.right = 0;
      }
      if (initObj.hasOwnProperty('near')) {
        this.near = initObj.near
      }
      else {
        this.near = 0;
      }
      if (initObj.hasOwnProperty('far')) {
        this.far = initObj.far
      }
      else {
        this.far = 0;
      }
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
      if (initObj.hasOwnProperty('cooler')) {
        this.cooler = initObj.cooler
      }
      else {
        this.cooler = 0;
      }
      if (initObj.hasOwnProperty('axle_diff')) {
        this.axle_diff = initObj.axle_diff
      }
      else {
        this.axle_diff = 0;
      }
      if (initObj.hasOwnProperty('exhaust_brake')) {
        this.exhaust_brake = initObj.exhaust_brake
      }
      else {
        this.exhaust_brake = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LowspeedControl
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [hands]
    bufferOffset = _serializer.string(obj.hands, buffer, bufferOffset);
    // Serialize message field [EPB_active]
    bufferOffset = _serializer.uint8(obj.EPB_active, buffer, bufferOffset);
    // Serialize message field [EPB]
    bufferOffset = _serializer.uint8(obj.EPB, buffer, bufferOffset);
    // Serialize message field [retarder_active]
    bufferOffset = _serializer.uint8(obj.retarder_active, buffer, bufferOffset);
    // Serialize message field [retarder]
    bufferOffset = _serializer.float64(obj.retarder, buffer, bufferOffset);
    // Serialize message field [gear_active]
    bufferOffset = _serializer.uint8(obj.gear_active, buffer, bufferOffset);
    // Serialize message field [max_forward_gear]
    bufferOffset = _serializer.uint8(obj.max_forward_gear, buffer, bufferOffset);
    // Serialize message field [gear]
    bufferOffset = _serializer.uint8(obj.gear, buffer, bufferOffset);
    // Serialize message field [hang_active]
    bufferOffset = _serializer.uint8(obj.hang_active, buffer, bufferOffset);
    // Serialize message field [hang]
    bufferOffset = _serializer.uint8(obj.hang, buffer, bufferOffset);
    // Serialize message field [left]
    bufferOffset = _serializer.uint8(obj.left, buffer, bufferOffset);
    // Serialize message field [right]
    bufferOffset = _serializer.uint8(obj.right, buffer, bufferOffset);
    // Serialize message field [near]
    bufferOffset = _serializer.uint8(obj.near, buffer, bufferOffset);
    // Serialize message field [far]
    bufferOffset = _serializer.uint8(obj.far, buffer, bufferOffset);
    // Serialize message field [top_warn]
    bufferOffset = _serializer.uint8(obj.top_warn, buffer, bufferOffset);
    // Serialize message field [air_beep]
    bufferOffset = _serializer.uint8(obj.air_beep, buffer, bufferOffset);
    // Serialize message field [front_fog]
    bufferOffset = _serializer.uint8(obj.front_fog, buffer, bufferOffset);
    // Serialize message field [front_work]
    bufferOffset = _serializer.uint8(obj.front_work, buffer, bufferOffset);
    // Serialize message field [side]
    bufferOffset = _serializer.uint8(obj.side, buffer, bufferOffset);
    // Serialize message field [position]
    bufferOffset = _serializer.uint8(obj.position, buffer, bufferOffset);
    // Serialize message field [emergency]
    bufferOffset = _serializer.uint8(obj.emergency, buffer, bufferOffset);
    // Serialize message field [brake]
    bufferOffset = _serializer.uint8(obj.brake, buffer, bufferOffset);
    // Serialize message field [reverse]
    bufferOffset = _serializer.uint8(obj.reverse, buffer, bufferOffset);
    // Serialize message field [back_work]
    bufferOffset = _serializer.uint8(obj.back_work, buffer, bufferOffset);
    // Serialize message field [cooler]
    bufferOffset = _serializer.uint8(obj.cooler, buffer, bufferOffset);
    // Serialize message field [axle_diff]
    bufferOffset = _serializer.uint8(obj.axle_diff, buffer, bufferOffset);
    // Serialize message field [exhaust_brake]
    bufferOffset = _serializer.uint8(obj.exhaust_brake, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LowspeedControl
    let len;
    let data = new LowspeedControl(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [hands]
    data.hands = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [EPB_active]
    data.EPB_active = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [EPB]
    data.EPB = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [retarder_active]
    data.retarder_active = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [retarder]
    data.retarder = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [gear_active]
    data.gear_active = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [max_forward_gear]
    data.max_forward_gear = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [gear]
    data.gear = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [hang_active]
    data.hang_active = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [hang]
    data.hang = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [left]
    data.left = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [right]
    data.right = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [near]
    data.near = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [far]
    data.far = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [top_warn]
    data.top_warn = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [air_beep]
    data.air_beep = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [front_fog]
    data.front_fog = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [front_work]
    data.front_work = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [side]
    data.side = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [emergency]
    data.emergency = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [brake]
    data.brake = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [reverse]
    data.reverse = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [back_work]
    data.back_work = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [cooler]
    data.cooler = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [axle_diff]
    data.axle_diff = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [exhaust_brake]
    data.exhaust_brake = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.hands.length;
    return length + 37;
  }

  static datatype() {
    // Returns string type for a message object
    return 'control_msgs/LowspeedControl';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '575bedbd92f3b388148e6ef92921e040';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    string hands
    
    uint8 EPB_active 
    uint8 EPB
    uint8 retarder_active
    float64 retarder
    uint8 gear_active
    uint8 max_forward_gear
    uint8 gear
    uint8 hang_active
    uint8 hang
    
    # body switch
    uint8 left
    uint8 right
    uint8 near
    uint8 far
    uint8 top_warn
    uint8 air_beep
    uint8 front_fog
    uint8 front_work
    uint8 side
    uint8 position
    uint8 emergency
    uint8 brake
    uint8 reverse
    uint8 back_work
    uint8 cooler
    uint8 axle_diff
    uint8 exhaust_brake
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
    const resolved = new LowspeedControl(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.hands !== undefined) {
      resolved.hands = msg.hands;
    }
    else {
      resolved.hands = ''
    }

    if (msg.EPB_active !== undefined) {
      resolved.EPB_active = msg.EPB_active;
    }
    else {
      resolved.EPB_active = 0
    }

    if (msg.EPB !== undefined) {
      resolved.EPB = msg.EPB;
    }
    else {
      resolved.EPB = 0
    }

    if (msg.retarder_active !== undefined) {
      resolved.retarder_active = msg.retarder_active;
    }
    else {
      resolved.retarder_active = 0
    }

    if (msg.retarder !== undefined) {
      resolved.retarder = msg.retarder;
    }
    else {
      resolved.retarder = 0.0
    }

    if (msg.gear_active !== undefined) {
      resolved.gear_active = msg.gear_active;
    }
    else {
      resolved.gear_active = 0
    }

    if (msg.max_forward_gear !== undefined) {
      resolved.max_forward_gear = msg.max_forward_gear;
    }
    else {
      resolved.max_forward_gear = 0
    }

    if (msg.gear !== undefined) {
      resolved.gear = msg.gear;
    }
    else {
      resolved.gear = 0
    }

    if (msg.hang_active !== undefined) {
      resolved.hang_active = msg.hang_active;
    }
    else {
      resolved.hang_active = 0
    }

    if (msg.hang !== undefined) {
      resolved.hang = msg.hang;
    }
    else {
      resolved.hang = 0
    }

    if (msg.left !== undefined) {
      resolved.left = msg.left;
    }
    else {
      resolved.left = 0
    }

    if (msg.right !== undefined) {
      resolved.right = msg.right;
    }
    else {
      resolved.right = 0
    }

    if (msg.near !== undefined) {
      resolved.near = msg.near;
    }
    else {
      resolved.near = 0
    }

    if (msg.far !== undefined) {
      resolved.far = msg.far;
    }
    else {
      resolved.far = 0
    }

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

    if (msg.cooler !== undefined) {
      resolved.cooler = msg.cooler;
    }
    else {
      resolved.cooler = 0
    }

    if (msg.axle_diff !== undefined) {
      resolved.axle_diff = msg.axle_diff;
    }
    else {
      resolved.axle_diff = 0
    }

    if (msg.exhaust_brake !== undefined) {
      resolved.exhaust_brake = msg.exhaust_brake;
    }
    else {
      resolved.exhaust_brake = 0
    }

    return resolved;
    }
};

module.exports = LowspeedControl;
