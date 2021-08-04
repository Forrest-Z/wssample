// Auto-generated. Do not edit!

// (in-package localization_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Pose {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.rtk_state = null;
      this.lat = null;
      this.lng = null;
      this.alt = null;
      this.latlng_std = null;
      this.x_enu = null;
      this.y_enu = null;
      this.z_enu = null;
      this.xy_std_enu = null;
      this.vx_ego = null;
      this.vy_ego = null;
      this.vz_ego = null;
      this.speed = null;
      this.ax_ego = null;
      this.ay_ego = null;
      this.az_ego = null;
      this.roll = null;
      this.pitch = null;
      this.yaw = null;
      this.yaw_rate = null;
      this.orientation = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('rtk_state')) {
        this.rtk_state = initObj.rtk_state
      }
      else {
        this.rtk_state = 0;
      }
      if (initObj.hasOwnProperty('lat')) {
        this.lat = initObj.lat
      }
      else {
        this.lat = 0.0;
      }
      if (initObj.hasOwnProperty('lng')) {
        this.lng = initObj.lng
      }
      else {
        this.lng = 0.0;
      }
      if (initObj.hasOwnProperty('alt')) {
        this.alt = initObj.alt
      }
      else {
        this.alt = 0.0;
      }
      if (initObj.hasOwnProperty('latlng_std')) {
        this.latlng_std = initObj.latlng_std
      }
      else {
        this.latlng_std = 0.0;
      }
      if (initObj.hasOwnProperty('x_enu')) {
        this.x_enu = initObj.x_enu
      }
      else {
        this.x_enu = 0.0;
      }
      if (initObj.hasOwnProperty('y_enu')) {
        this.y_enu = initObj.y_enu
      }
      else {
        this.y_enu = 0.0;
      }
      if (initObj.hasOwnProperty('z_enu')) {
        this.z_enu = initObj.z_enu
      }
      else {
        this.z_enu = 0.0;
      }
      if (initObj.hasOwnProperty('xy_std_enu')) {
        this.xy_std_enu = initObj.xy_std_enu
      }
      else {
        this.xy_std_enu = 0.0;
      }
      if (initObj.hasOwnProperty('vx_ego')) {
        this.vx_ego = initObj.vx_ego
      }
      else {
        this.vx_ego = 0.0;
      }
      if (initObj.hasOwnProperty('vy_ego')) {
        this.vy_ego = initObj.vy_ego
      }
      else {
        this.vy_ego = 0.0;
      }
      if (initObj.hasOwnProperty('vz_ego')) {
        this.vz_ego = initObj.vz_ego
      }
      else {
        this.vz_ego = 0.0;
      }
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = 0.0;
      }
      if (initObj.hasOwnProperty('ax_ego')) {
        this.ax_ego = initObj.ax_ego
      }
      else {
        this.ax_ego = 0.0;
      }
      if (initObj.hasOwnProperty('ay_ego')) {
        this.ay_ego = initObj.ay_ego
      }
      else {
        this.ay_ego = 0.0;
      }
      if (initObj.hasOwnProperty('az_ego')) {
        this.az_ego = initObj.az_ego
      }
      else {
        this.az_ego = 0.0;
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
      if (initObj.hasOwnProperty('yaw_rate')) {
        this.yaw_rate = initObj.yaw_rate
      }
      else {
        this.yaw_rate = 0.0;
      }
      if (initObj.hasOwnProperty('orientation')) {
        this.orientation = initObj.orientation
      }
      else {
        this.orientation = new geometry_msgs.msg.Quaternion();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Pose
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [rtk_state]
    bufferOffset = _serializer.int8(obj.rtk_state, buffer, bufferOffset);
    // Serialize message field [lat]
    bufferOffset = _serializer.float64(obj.lat, buffer, bufferOffset);
    // Serialize message field [lng]
    bufferOffset = _serializer.float64(obj.lng, buffer, bufferOffset);
    // Serialize message field [alt]
    bufferOffset = _serializer.float64(obj.alt, buffer, bufferOffset);
    // Serialize message field [latlng_std]
    bufferOffset = _serializer.float64(obj.latlng_std, buffer, bufferOffset);
    // Serialize message field [x_enu]
    bufferOffset = _serializer.float64(obj.x_enu, buffer, bufferOffset);
    // Serialize message field [y_enu]
    bufferOffset = _serializer.float64(obj.y_enu, buffer, bufferOffset);
    // Serialize message field [z_enu]
    bufferOffset = _serializer.float64(obj.z_enu, buffer, bufferOffset);
    // Serialize message field [xy_std_enu]
    bufferOffset = _serializer.float64(obj.xy_std_enu, buffer, bufferOffset);
    // Serialize message field [vx_ego]
    bufferOffset = _serializer.float64(obj.vx_ego, buffer, bufferOffset);
    // Serialize message field [vy_ego]
    bufferOffset = _serializer.float64(obj.vy_ego, buffer, bufferOffset);
    // Serialize message field [vz_ego]
    bufferOffset = _serializer.float64(obj.vz_ego, buffer, bufferOffset);
    // Serialize message field [speed]
    bufferOffset = _serializer.float64(obj.speed, buffer, bufferOffset);
    // Serialize message field [ax_ego]
    bufferOffset = _serializer.float64(obj.ax_ego, buffer, bufferOffset);
    // Serialize message field [ay_ego]
    bufferOffset = _serializer.float64(obj.ay_ego, buffer, bufferOffset);
    // Serialize message field [az_ego]
    bufferOffset = _serializer.float64(obj.az_ego, buffer, bufferOffset);
    // Serialize message field [roll]
    bufferOffset = _serializer.float64(obj.roll, buffer, bufferOffset);
    // Serialize message field [pitch]
    bufferOffset = _serializer.float64(obj.pitch, buffer, bufferOffset);
    // Serialize message field [yaw]
    bufferOffset = _serializer.float64(obj.yaw, buffer, bufferOffset);
    // Serialize message field [yaw_rate]
    bufferOffset = _serializer.float64(obj.yaw_rate, buffer, bufferOffset);
    // Serialize message field [orientation]
    bufferOffset = geometry_msgs.msg.Quaternion.serialize(obj.orientation, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Pose
    let len;
    let data = new Pose(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [rtk_state]
    data.rtk_state = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [lat]
    data.lat = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [lng]
    data.lng = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [alt]
    data.alt = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [latlng_std]
    data.latlng_std = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [x_enu]
    data.x_enu = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [y_enu]
    data.y_enu = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [z_enu]
    data.z_enu = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [xy_std_enu]
    data.xy_std_enu = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [vx_ego]
    data.vx_ego = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [vy_ego]
    data.vy_ego = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [vz_ego]
    data.vz_ego = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [speed]
    data.speed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ax_ego]
    data.ax_ego = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ay_ego]
    data.ay_ego = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [az_ego]
    data.az_ego = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [roll]
    data.roll = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pitch]
    data.pitch = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [yaw]
    data.yaw = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [yaw_rate]
    data.yaw_rate = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [orientation]
    data.orientation = geometry_msgs.msg.Quaternion.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 185;
  }

  static datatype() {
    // Returns string type for a message object
    return 'localization_msgs/Pose';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3e81e5554b4c298442f33329f73e80ce';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    int8 rtk_state 
    # -1 : no gnss
    # 0 : 2D or 3D gnss fix
    # 1 : SBAS or Starfire gnss fix
    # 2 : Diff or rtk fix
    
    # wgs84
    float64 lat
    float64 lng
    float64 alt
    float64 latlng_std
    
    # enu coord
    float64 x_enu
    float64 y_enu
    float64 z_enu
    float64 xy_std_enu
    
    # v north, east, to ground
    float64 vx_ego
    float64 vy_ego
    float64 vz_ego
    float64 speed
    float64 ax_ego
    float64 ay_ego
    float64 az_ego
    
    # ego coord, in rad
    float64 roll
    float64 pitch
    float64 yaw
    float64 yaw_rate
    geometry_msgs/Quaternion orientation
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
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Pose(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.rtk_state !== undefined) {
      resolved.rtk_state = msg.rtk_state;
    }
    else {
      resolved.rtk_state = 0
    }

    if (msg.lat !== undefined) {
      resolved.lat = msg.lat;
    }
    else {
      resolved.lat = 0.0
    }

    if (msg.lng !== undefined) {
      resolved.lng = msg.lng;
    }
    else {
      resolved.lng = 0.0
    }

    if (msg.alt !== undefined) {
      resolved.alt = msg.alt;
    }
    else {
      resolved.alt = 0.0
    }

    if (msg.latlng_std !== undefined) {
      resolved.latlng_std = msg.latlng_std;
    }
    else {
      resolved.latlng_std = 0.0
    }

    if (msg.x_enu !== undefined) {
      resolved.x_enu = msg.x_enu;
    }
    else {
      resolved.x_enu = 0.0
    }

    if (msg.y_enu !== undefined) {
      resolved.y_enu = msg.y_enu;
    }
    else {
      resolved.y_enu = 0.0
    }

    if (msg.z_enu !== undefined) {
      resolved.z_enu = msg.z_enu;
    }
    else {
      resolved.z_enu = 0.0
    }

    if (msg.xy_std_enu !== undefined) {
      resolved.xy_std_enu = msg.xy_std_enu;
    }
    else {
      resolved.xy_std_enu = 0.0
    }

    if (msg.vx_ego !== undefined) {
      resolved.vx_ego = msg.vx_ego;
    }
    else {
      resolved.vx_ego = 0.0
    }

    if (msg.vy_ego !== undefined) {
      resolved.vy_ego = msg.vy_ego;
    }
    else {
      resolved.vy_ego = 0.0
    }

    if (msg.vz_ego !== undefined) {
      resolved.vz_ego = msg.vz_ego;
    }
    else {
      resolved.vz_ego = 0.0
    }

    if (msg.speed !== undefined) {
      resolved.speed = msg.speed;
    }
    else {
      resolved.speed = 0.0
    }

    if (msg.ax_ego !== undefined) {
      resolved.ax_ego = msg.ax_ego;
    }
    else {
      resolved.ax_ego = 0.0
    }

    if (msg.ay_ego !== undefined) {
      resolved.ay_ego = msg.ay_ego;
    }
    else {
      resolved.ay_ego = 0.0
    }

    if (msg.az_ego !== undefined) {
      resolved.az_ego = msg.az_ego;
    }
    else {
      resolved.az_ego = 0.0
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

    if (msg.yaw_rate !== undefined) {
      resolved.yaw_rate = msg.yaw_rate;
    }
    else {
      resolved.yaw_rate = 0.0
    }

    if (msg.orientation !== undefined) {
      resolved.orientation = geometry_msgs.msg.Quaternion.Resolve(msg.orientation)
    }
    else {
      resolved.orientation = new geometry_msgs.msg.Quaternion()
    }

    return resolved;
    }
};

module.exports = Pose;
