// Auto-generated. Do not edit!

// (in-package perception_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class Obj {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.confidence = null;
      this.age = null;
      this.left_time = null;
      this.left_bottom = null;
      this.right_bottom = null;
      this.left_top = null;
      this.right_top = null;
      this.v_north = null;
      this.v_east = null;
      this.v_ground = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('confidence')) {
        this.confidence = initObj.confidence
      }
      else {
        this.confidence = 0.0;
      }
      if (initObj.hasOwnProperty('age')) {
        this.age = initObj.age
      }
      else {
        this.age = 0;
      }
      if (initObj.hasOwnProperty('left_time')) {
        this.left_time = initObj.left_time
      }
      else {
        this.left_time = 0;
      }
      if (initObj.hasOwnProperty('left_bottom')) {
        this.left_bottom = initObj.left_bottom
      }
      else {
        this.left_bottom = new geometry_msgs.msg.Point32();
      }
      if (initObj.hasOwnProperty('right_bottom')) {
        this.right_bottom = initObj.right_bottom
      }
      else {
        this.right_bottom = new geometry_msgs.msg.Point32();
      }
      if (initObj.hasOwnProperty('left_top')) {
        this.left_top = initObj.left_top
      }
      else {
        this.left_top = new geometry_msgs.msg.Point32();
      }
      if (initObj.hasOwnProperty('right_top')) {
        this.right_top = initObj.right_top
      }
      else {
        this.right_top = new geometry_msgs.msg.Point32();
      }
      if (initObj.hasOwnProperty('v_north')) {
        this.v_north = initObj.v_north
      }
      else {
        this.v_north = 0.0;
      }
      if (initObj.hasOwnProperty('v_east')) {
        this.v_east = initObj.v_east
      }
      else {
        this.v_east = 0.0;
      }
      if (initObj.hasOwnProperty('v_ground')) {
        this.v_ground = initObj.v_ground
      }
      else {
        this.v_ground = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Obj
    // Serialize message field [id]
    bufferOffset = _serializer.int32(obj.id, buffer, bufferOffset);
    // Serialize message field [confidence]
    bufferOffset = _serializer.float32(obj.confidence, buffer, bufferOffset);
    // Serialize message field [age]
    bufferOffset = _serializer.int32(obj.age, buffer, bufferOffset);
    // Serialize message field [left_time]
    bufferOffset = _serializer.int32(obj.left_time, buffer, bufferOffset);
    // Serialize message field [left_bottom]
    bufferOffset = geometry_msgs.msg.Point32.serialize(obj.left_bottom, buffer, bufferOffset);
    // Serialize message field [right_bottom]
    bufferOffset = geometry_msgs.msg.Point32.serialize(obj.right_bottom, buffer, bufferOffset);
    // Serialize message field [left_top]
    bufferOffset = geometry_msgs.msg.Point32.serialize(obj.left_top, buffer, bufferOffset);
    // Serialize message field [right_top]
    bufferOffset = geometry_msgs.msg.Point32.serialize(obj.right_top, buffer, bufferOffset);
    // Serialize message field [v_north]
    bufferOffset = _serializer.float32(obj.v_north, buffer, bufferOffset);
    // Serialize message field [v_east]
    bufferOffset = _serializer.float32(obj.v_east, buffer, bufferOffset);
    // Serialize message field [v_ground]
    bufferOffset = _serializer.float32(obj.v_ground, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Obj
    let len;
    let data = new Obj(null);
    // Deserialize message field [id]
    data.id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [confidence]
    data.confidence = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [age]
    data.age = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [left_time]
    data.left_time = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [left_bottom]
    data.left_bottom = geometry_msgs.msg.Point32.deserialize(buffer, bufferOffset);
    // Deserialize message field [right_bottom]
    data.right_bottom = geometry_msgs.msg.Point32.deserialize(buffer, bufferOffset);
    // Deserialize message field [left_top]
    data.left_top = geometry_msgs.msg.Point32.deserialize(buffer, bufferOffset);
    // Deserialize message field [right_top]
    data.right_top = geometry_msgs.msg.Point32.deserialize(buffer, bufferOffset);
    // Deserialize message field [v_north]
    data.v_north = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [v_east]
    data.v_east = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [v_ground]
    data.v_ground = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 76;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_msgs/Obj';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bad9b664cc24929ab35b00e428cc0976';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 id
    
    float32 confidence
    int32 age
    int32 left_time
    
    geometry_msgs/Point32 left_bottom
    geometry_msgs/Point32 right_bottom
    geometry_msgs/Point32 left_top
    geometry_msgs/Point32 right_top
    
    # v north, east, to ground
    float32 v_north
    float32 v_east
    float32 v_ground
    ================================================================================
    MSG: geometry_msgs/Point32
    # This contains the position of a point in free space(with 32 bits of precision).
    # It is recommeded to use Point wherever possible instead of Point32.  
    # 
    # This recommendation is to promote interoperability.  
    #
    # This message is designed to take up less space when sending
    # lots of points at once, as in the case of a PointCloud.  
    
    float32 x
    float32 y
    float32 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Obj(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.confidence !== undefined) {
      resolved.confidence = msg.confidence;
    }
    else {
      resolved.confidence = 0.0
    }

    if (msg.age !== undefined) {
      resolved.age = msg.age;
    }
    else {
      resolved.age = 0
    }

    if (msg.left_time !== undefined) {
      resolved.left_time = msg.left_time;
    }
    else {
      resolved.left_time = 0
    }

    if (msg.left_bottom !== undefined) {
      resolved.left_bottom = geometry_msgs.msg.Point32.Resolve(msg.left_bottom)
    }
    else {
      resolved.left_bottom = new geometry_msgs.msg.Point32()
    }

    if (msg.right_bottom !== undefined) {
      resolved.right_bottom = geometry_msgs.msg.Point32.Resolve(msg.right_bottom)
    }
    else {
      resolved.right_bottom = new geometry_msgs.msg.Point32()
    }

    if (msg.left_top !== undefined) {
      resolved.left_top = geometry_msgs.msg.Point32.Resolve(msg.left_top)
    }
    else {
      resolved.left_top = new geometry_msgs.msg.Point32()
    }

    if (msg.right_top !== undefined) {
      resolved.right_top = geometry_msgs.msg.Point32.Resolve(msg.right_top)
    }
    else {
      resolved.right_top = new geometry_msgs.msg.Point32()
    }

    if (msg.v_north !== undefined) {
      resolved.v_north = msg.v_north;
    }
    else {
      resolved.v_north = 0.0
    }

    if (msg.v_east !== undefined) {
      resolved.v_east = msg.v_east;
    }
    else {
      resolved.v_east = 0.0
    }

    if (msg.v_ground !== undefined) {
      resolved.v_ground = msg.v_ground;
    }
    else {
      resolved.v_ground = 0.0
    }

    return resolved;
    }
};

module.exports = Obj;
