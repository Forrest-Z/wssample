# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from displaydata_msgs/DisplayData.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import std_msgs.msg

class DisplayData(genpy.Message):
  _md5sum = "75ffc4b8292bc3aabb3225b01b095200"
  _type = "displaydata_msgs/DisplayData"
  _has_header = True  # flag to mark the presence of a Header object
  _full_text = """Header header

# RTK
int32 rtk_state 
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

# kalman speed
float64 speed

#GPS HEADING 
float64 headingangle

# Tli65 vehicle parameters can_rx
float64 current_steer
float64 current_brake_pedal_pos
int32 current_throttle_percentage
int32 current_retarder_torque_percentage
int32 current_EPB
string current_gear
int32 current_hangangle
int32 auto_mode
int32 left_light
int32 right_light
int32 near_light
int32 far_light
int32 air_beep
int32 top_warning_light
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
int32 fuel_consumption

# Tli65 vehicle parameters can_rx
float64 control_steer
int32 control_throttle_percentage
float64 control_xbr
int32 control_EPB
string control_gear
string control_hang
int32 control_fsm_state
int32 vehicle_auto_mode
int32 left
int32 right
int32 near
int32 far
int32 top_warn
int32 control_air_beep
int32 front_fog
int32 front_work
int32 side
int32 position
int32 emergency
int32 brake
int32 reverse
int32 back_work

# waypoints planning 
float64 target_x
float64 target_y
int32 planner_fsm

# number of satellite
int32 NumSate

# VEHICLE Fault Information 
# ft1
int32 engine_fault
int32 gear_fault
int32 EBS_fault
int32 EPS_fault
int32 EPB_fault

# ft2
int32 truck_fault_level
int32 engine_fault_code
int32 gear_fault_code

# ft3
int32 EPS_fault_code
int32 EBS_fault_code
int32 electric_fault_code

# tyre
int32 tyre_pressure_leftfront
int32 tyre_pressure_rightfront
float64 front_left_temperature
float64 front_right_temperature
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
"""
  __slots__ = ['header','rtk_state','lat','lng','alt','latlng_std','x_enu','y_enu','z_enu','xy_std_enu','speed','headingangle','current_steer','current_brake_pedal_pos','current_throttle_percentage','current_retarder_torque_percentage','current_EPB','current_gear','current_hangangle','auto_mode','left_light','right_light','near_light','far_light','air_beep','top_warning_light','front_fog_light','front_work_light','side_light','position_light','back_left_light','back_right_light','back_position_light','brake_light','reverse_light','back_work_light','fuel_consumption','control_steer','control_throttle_percentage','control_xbr','control_EPB','control_gear','control_hang','control_fsm_state','vehicle_auto_mode','left','right','near','far','top_warn','control_air_beep','front_fog','front_work','side','position','emergency','brake','reverse','back_work','target_x','target_y','planner_fsm','NumSate','engine_fault','gear_fault','EBS_fault','EPS_fault','EPB_fault','truck_fault_level','engine_fault_code','gear_fault_code','EPS_fault_code','EBS_fault_code','electric_fault_code','tyre_pressure_leftfront','tyre_pressure_rightfront','front_left_temperature','front_right_temperature']
  _slot_types = ['std_msgs/Header','int32','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','int32','int32','int32','string','int32','int32','int32','int32','int32','int32','int32','int32','int32','int32','int32','int32','int32','int32','int32','int32','int32','int32','int32','float64','int32','float64','int32','string','string','int32','int32','int32','int32','int32','int32','int32','int32','int32','int32','int32','int32','int32','int32','int32','int32','float64','float64','int32','int32','int32','int32','int32','int32','int32','int32','int32','int32','int32','int32','int32','int32','int32','float64','float64']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,rtk_state,lat,lng,alt,latlng_std,x_enu,y_enu,z_enu,xy_std_enu,speed,headingangle,current_steer,current_brake_pedal_pos,current_throttle_percentage,current_retarder_torque_percentage,current_EPB,current_gear,current_hangangle,auto_mode,left_light,right_light,near_light,far_light,air_beep,top_warning_light,front_fog_light,front_work_light,side_light,position_light,back_left_light,back_right_light,back_position_light,brake_light,reverse_light,back_work_light,fuel_consumption,control_steer,control_throttle_percentage,control_xbr,control_EPB,control_gear,control_hang,control_fsm_state,vehicle_auto_mode,left,right,near,far,top_warn,control_air_beep,front_fog,front_work,side,position,emergency,brake,reverse,back_work,target_x,target_y,planner_fsm,NumSate,engine_fault,gear_fault,EBS_fault,EPS_fault,EPB_fault,truck_fault_level,engine_fault_code,gear_fault_code,EPS_fault_code,EBS_fault_code,electric_fault_code,tyre_pressure_leftfront,tyre_pressure_rightfront,front_left_temperature,front_right_temperature

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(DisplayData, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.rtk_state is None:
        self.rtk_state = 0
      if self.lat is None:
        self.lat = 0.
      if self.lng is None:
        self.lng = 0.
      if self.alt is None:
        self.alt = 0.
      if self.latlng_std is None:
        self.latlng_std = 0.
      if self.x_enu is None:
        self.x_enu = 0.
      if self.y_enu is None:
        self.y_enu = 0.
      if self.z_enu is None:
        self.z_enu = 0.
      if self.xy_std_enu is None:
        self.xy_std_enu = 0.
      if self.speed is None:
        self.speed = 0.
      if self.headingangle is None:
        self.headingangle = 0.
      if self.current_steer is None:
        self.current_steer = 0.
      if self.current_brake_pedal_pos is None:
        self.current_brake_pedal_pos = 0.
      if self.current_throttle_percentage is None:
        self.current_throttle_percentage = 0
      if self.current_retarder_torque_percentage is None:
        self.current_retarder_torque_percentage = 0
      if self.current_EPB is None:
        self.current_EPB = 0
      if self.current_gear is None:
        self.current_gear = ''
      if self.current_hangangle is None:
        self.current_hangangle = 0
      if self.auto_mode is None:
        self.auto_mode = 0
      if self.left_light is None:
        self.left_light = 0
      if self.right_light is None:
        self.right_light = 0
      if self.near_light is None:
        self.near_light = 0
      if self.far_light is None:
        self.far_light = 0
      if self.air_beep is None:
        self.air_beep = 0
      if self.top_warning_light is None:
        self.top_warning_light = 0
      if self.front_fog_light is None:
        self.front_fog_light = 0
      if self.front_work_light is None:
        self.front_work_light = 0
      if self.side_light is None:
        self.side_light = 0
      if self.position_light is None:
        self.position_light = 0
      if self.back_left_light is None:
        self.back_left_light = 0
      if self.back_right_light is None:
        self.back_right_light = 0
      if self.back_position_light is None:
        self.back_position_light = 0
      if self.brake_light is None:
        self.brake_light = 0
      if self.reverse_light is None:
        self.reverse_light = 0
      if self.back_work_light is None:
        self.back_work_light = 0
      if self.fuel_consumption is None:
        self.fuel_consumption = 0
      if self.control_steer is None:
        self.control_steer = 0.
      if self.control_throttle_percentage is None:
        self.control_throttle_percentage = 0
      if self.control_xbr is None:
        self.control_xbr = 0.
      if self.control_EPB is None:
        self.control_EPB = 0
      if self.control_gear is None:
        self.control_gear = ''
      if self.control_hang is None:
        self.control_hang = ''
      if self.control_fsm_state is None:
        self.control_fsm_state = 0
      if self.vehicle_auto_mode is None:
        self.vehicle_auto_mode = 0
      if self.left is None:
        self.left = 0
      if self.right is None:
        self.right = 0
      if self.near is None:
        self.near = 0
      if self.far is None:
        self.far = 0
      if self.top_warn is None:
        self.top_warn = 0
      if self.control_air_beep is None:
        self.control_air_beep = 0
      if self.front_fog is None:
        self.front_fog = 0
      if self.front_work is None:
        self.front_work = 0
      if self.side is None:
        self.side = 0
      if self.position is None:
        self.position = 0
      if self.emergency is None:
        self.emergency = 0
      if self.brake is None:
        self.brake = 0
      if self.reverse is None:
        self.reverse = 0
      if self.back_work is None:
        self.back_work = 0
      if self.target_x is None:
        self.target_x = 0.
      if self.target_y is None:
        self.target_y = 0.
      if self.planner_fsm is None:
        self.planner_fsm = 0
      if self.NumSate is None:
        self.NumSate = 0
      if self.engine_fault is None:
        self.engine_fault = 0
      if self.gear_fault is None:
        self.gear_fault = 0
      if self.EBS_fault is None:
        self.EBS_fault = 0
      if self.EPS_fault is None:
        self.EPS_fault = 0
      if self.EPB_fault is None:
        self.EPB_fault = 0
      if self.truck_fault_level is None:
        self.truck_fault_level = 0
      if self.engine_fault_code is None:
        self.engine_fault_code = 0
      if self.gear_fault_code is None:
        self.gear_fault_code = 0
      if self.EPS_fault_code is None:
        self.EPS_fault_code = 0
      if self.EBS_fault_code is None:
        self.EBS_fault_code = 0
      if self.electric_fault_code is None:
        self.electric_fault_code = 0
      if self.tyre_pressure_leftfront is None:
        self.tyre_pressure_leftfront = 0
      if self.tyre_pressure_rightfront is None:
        self.tyre_pressure_rightfront = 0
      if self.front_left_temperature is None:
        self.front_left_temperature = 0.
      if self.front_right_temperature is None:
        self.front_right_temperature = 0.
    else:
      self.header = std_msgs.msg.Header()
      self.rtk_state = 0
      self.lat = 0.
      self.lng = 0.
      self.alt = 0.
      self.latlng_std = 0.
      self.x_enu = 0.
      self.y_enu = 0.
      self.z_enu = 0.
      self.xy_std_enu = 0.
      self.speed = 0.
      self.headingangle = 0.
      self.current_steer = 0.
      self.current_brake_pedal_pos = 0.
      self.current_throttle_percentage = 0
      self.current_retarder_torque_percentage = 0
      self.current_EPB = 0
      self.current_gear = ''
      self.current_hangangle = 0
      self.auto_mode = 0
      self.left_light = 0
      self.right_light = 0
      self.near_light = 0
      self.far_light = 0
      self.air_beep = 0
      self.top_warning_light = 0
      self.front_fog_light = 0
      self.front_work_light = 0
      self.side_light = 0
      self.position_light = 0
      self.back_left_light = 0
      self.back_right_light = 0
      self.back_position_light = 0
      self.brake_light = 0
      self.reverse_light = 0
      self.back_work_light = 0
      self.fuel_consumption = 0
      self.control_steer = 0.
      self.control_throttle_percentage = 0
      self.control_xbr = 0.
      self.control_EPB = 0
      self.control_gear = ''
      self.control_hang = ''
      self.control_fsm_state = 0
      self.vehicle_auto_mode = 0
      self.left = 0
      self.right = 0
      self.near = 0
      self.far = 0
      self.top_warn = 0
      self.control_air_beep = 0
      self.front_fog = 0
      self.front_work = 0
      self.side = 0
      self.position = 0
      self.emergency = 0
      self.brake = 0
      self.reverse = 0
      self.back_work = 0
      self.target_x = 0.
      self.target_y = 0.
      self.planner_fsm = 0
      self.NumSate = 0
      self.engine_fault = 0
      self.gear_fault = 0
      self.EBS_fault = 0
      self.EPS_fault = 0
      self.EPB_fault = 0
      self.truck_fault_level = 0
      self.engine_fault_code = 0
      self.gear_fault_code = 0
      self.EPS_fault_code = 0
      self.EBS_fault_code = 0
      self.electric_fault_code = 0
      self.tyre_pressure_leftfront = 0
      self.tyre_pressure_rightfront = 0
      self.front_left_temperature = 0.
      self.front_right_temperature = 0.

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_i12d3i().pack(_x.rtk_state, _x.lat, _x.lng, _x.alt, _x.latlng_std, _x.x_enu, _x.y_enu, _x.z_enu, _x.xy_std_enu, _x.speed, _x.headingangle, _x.current_steer, _x.current_brake_pedal_pos, _x.current_throttle_percentage, _x.current_retarder_torque_percentage, _x.current_EPB))
      _x = self.current_gear
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_19ididi().pack(_x.current_hangangle, _x.auto_mode, _x.left_light, _x.right_light, _x.near_light, _x.far_light, _x.air_beep, _x.top_warning_light, _x.front_fog_light, _x.front_work_light, _x.side_light, _x.position_light, _x.back_left_light, _x.back_right_light, _x.back_position_light, _x.brake_light, _x.reverse_light, _x.back_work_light, _x.fuel_consumption, _x.control_steer, _x.control_throttle_percentage, _x.control_xbr, _x.control_EPB))
      _x = self.control_gear
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.control_hang
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_16i2d15i2d().pack(_x.control_fsm_state, _x.vehicle_auto_mode, _x.left, _x.right, _x.near, _x.far, _x.top_warn, _x.control_air_beep, _x.front_fog, _x.front_work, _x.side, _x.position, _x.emergency, _x.brake, _x.reverse, _x.back_work, _x.target_x, _x.target_y, _x.planner_fsm, _x.NumSate, _x.engine_fault, _x.gear_fault, _x.EBS_fault, _x.EPS_fault, _x.EPB_fault, _x.truck_fault_level, _x.engine_fault_code, _x.gear_fault_code, _x.EPS_fault_code, _x.EBS_fault_code, _x.electric_fault_code, _x.tyre_pressure_leftfront, _x.tyre_pressure_rightfront, _x.front_left_temperature, _x.front_right_temperature))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 112
      (_x.rtk_state, _x.lat, _x.lng, _x.alt, _x.latlng_std, _x.x_enu, _x.y_enu, _x.z_enu, _x.xy_std_enu, _x.speed, _x.headingangle, _x.current_steer, _x.current_brake_pedal_pos, _x.current_throttle_percentage, _x.current_retarder_torque_percentage, _x.current_EPB,) = _get_struct_i12d3i().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.current_gear = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.current_gear = str[start:end]
      _x = self
      start = end
      end += 100
      (_x.current_hangangle, _x.auto_mode, _x.left_light, _x.right_light, _x.near_light, _x.far_light, _x.air_beep, _x.top_warning_light, _x.front_fog_light, _x.front_work_light, _x.side_light, _x.position_light, _x.back_left_light, _x.back_right_light, _x.back_position_light, _x.brake_light, _x.reverse_light, _x.back_work_light, _x.fuel_consumption, _x.control_steer, _x.control_throttle_percentage, _x.control_xbr, _x.control_EPB,) = _get_struct_19ididi().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.control_gear = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.control_gear = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.control_hang = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.control_hang = str[start:end]
      _x = self
      start = end
      end += 156
      (_x.control_fsm_state, _x.vehicle_auto_mode, _x.left, _x.right, _x.near, _x.far, _x.top_warn, _x.control_air_beep, _x.front_fog, _x.front_work, _x.side, _x.position, _x.emergency, _x.brake, _x.reverse, _x.back_work, _x.target_x, _x.target_y, _x.planner_fsm, _x.NumSate, _x.engine_fault, _x.gear_fault, _x.EBS_fault, _x.EPS_fault, _x.EPB_fault, _x.truck_fault_level, _x.engine_fault_code, _x.gear_fault_code, _x.EPS_fault_code, _x.EBS_fault_code, _x.electric_fault_code, _x.tyre_pressure_leftfront, _x.tyre_pressure_rightfront, _x.front_left_temperature, _x.front_right_temperature,) = _get_struct_16i2d15i2d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_i12d3i().pack(_x.rtk_state, _x.lat, _x.lng, _x.alt, _x.latlng_std, _x.x_enu, _x.y_enu, _x.z_enu, _x.xy_std_enu, _x.speed, _x.headingangle, _x.current_steer, _x.current_brake_pedal_pos, _x.current_throttle_percentage, _x.current_retarder_torque_percentage, _x.current_EPB))
      _x = self.current_gear
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_19ididi().pack(_x.current_hangangle, _x.auto_mode, _x.left_light, _x.right_light, _x.near_light, _x.far_light, _x.air_beep, _x.top_warning_light, _x.front_fog_light, _x.front_work_light, _x.side_light, _x.position_light, _x.back_left_light, _x.back_right_light, _x.back_position_light, _x.brake_light, _x.reverse_light, _x.back_work_light, _x.fuel_consumption, _x.control_steer, _x.control_throttle_percentage, _x.control_xbr, _x.control_EPB))
      _x = self.control_gear
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.control_hang
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_16i2d15i2d().pack(_x.control_fsm_state, _x.vehicle_auto_mode, _x.left, _x.right, _x.near, _x.far, _x.top_warn, _x.control_air_beep, _x.front_fog, _x.front_work, _x.side, _x.position, _x.emergency, _x.brake, _x.reverse, _x.back_work, _x.target_x, _x.target_y, _x.planner_fsm, _x.NumSate, _x.engine_fault, _x.gear_fault, _x.EBS_fault, _x.EPS_fault, _x.EPB_fault, _x.truck_fault_level, _x.engine_fault_code, _x.gear_fault_code, _x.EPS_fault_code, _x.EBS_fault_code, _x.electric_fault_code, _x.tyre_pressure_leftfront, _x.tyre_pressure_rightfront, _x.front_left_temperature, _x.front_right_temperature))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 112
      (_x.rtk_state, _x.lat, _x.lng, _x.alt, _x.latlng_std, _x.x_enu, _x.y_enu, _x.z_enu, _x.xy_std_enu, _x.speed, _x.headingangle, _x.current_steer, _x.current_brake_pedal_pos, _x.current_throttle_percentage, _x.current_retarder_torque_percentage, _x.current_EPB,) = _get_struct_i12d3i().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.current_gear = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.current_gear = str[start:end]
      _x = self
      start = end
      end += 100
      (_x.current_hangangle, _x.auto_mode, _x.left_light, _x.right_light, _x.near_light, _x.far_light, _x.air_beep, _x.top_warning_light, _x.front_fog_light, _x.front_work_light, _x.side_light, _x.position_light, _x.back_left_light, _x.back_right_light, _x.back_position_light, _x.brake_light, _x.reverse_light, _x.back_work_light, _x.fuel_consumption, _x.control_steer, _x.control_throttle_percentage, _x.control_xbr, _x.control_EPB,) = _get_struct_19ididi().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.control_gear = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.control_gear = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.control_hang = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.control_hang = str[start:end]
      _x = self
      start = end
      end += 156
      (_x.control_fsm_state, _x.vehicle_auto_mode, _x.left, _x.right, _x.near, _x.far, _x.top_warn, _x.control_air_beep, _x.front_fog, _x.front_work, _x.side, _x.position, _x.emergency, _x.brake, _x.reverse, _x.back_work, _x.target_x, _x.target_y, _x.planner_fsm, _x.NumSate, _x.engine_fault, _x.gear_fault, _x.EBS_fault, _x.EPS_fault, _x.EPB_fault, _x.truck_fault_level, _x.engine_fault_code, _x.gear_fault_code, _x.EPS_fault_code, _x.EBS_fault_code, _x.electric_fault_code, _x.tyre_pressure_leftfront, _x.tyre_pressure_rightfront, _x.front_left_temperature, _x.front_right_temperature,) = _get_struct_16i2d15i2d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_16i2d15i2d = None
def _get_struct_16i2d15i2d():
    global _struct_16i2d15i2d
    if _struct_16i2d15i2d is None:
        _struct_16i2d15i2d = struct.Struct("<16i2d15i2d")
    return _struct_16i2d15i2d
_struct_19ididi = None
def _get_struct_19ididi():
    global _struct_19ididi
    if _struct_19ididi is None:
        _struct_19ididi = struct.Struct("<19ididi")
    return _struct_19ididi
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_i12d3i = None
def _get_struct_i12d3i():
    global _struct_i12d3i
    if _struct_i12d3i is None:
        _struct_i12d3i = struct.Struct("<i12d3i")
    return _struct_i12d3i
