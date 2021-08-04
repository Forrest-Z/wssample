# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from planner_msgs/WayPoints.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import planner_msgs.msg
import std_msgs.msg

class WayPoints(genpy.Message):
  _md5sum = "573e1dc003839203bc6a8d30ca76058b"
  _type = "planner_msgs/WayPoints"
  _has_header = True  # flag to mark the presence of a Header object
  _full_text = """Header header

# all of the waypoints are in ego coordinate system
# coord_type = "ego"
# track use enu, and is sended to rviz
# coord_type = "enu"
string coord_type

# teledrive
# follow_tracks
string control_type

string planner_fsm

WayPoint[] points
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
MSG: planner_msgs/WayPoint
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
bool flag_lock_down_index_offload"""
  __slots__ = ['header','coord_type','control_type','planner_fsm','points']
  _slot_types = ['std_msgs/Header','string','string','string','planner_msgs/WayPoint[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,coord_type,control_type,planner_fsm,points

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(WayPoints, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.coord_type is None:
        self.coord_type = ''
      if self.control_type is None:
        self.control_type = ''
      if self.planner_fsm is None:
        self.planner_fsm = ''
      if self.points is None:
        self.points = []
    else:
      self.header = std_msgs.msg.Header()
      self.coord_type = ''
      self.control_type = ''
      self.planner_fsm = ''
      self.points = []

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
      _x = self.coord_type
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.control_type
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.planner_fsm
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      length = len(self.points)
      buff.write(_struct_I.pack(length))
      for val1 in self.points:
        _x = val1
        buff.write(_get_struct_2i12db3B2dB().pack(_x.lock_down_index, _x.aim_pt_index, _x.x, _x.y, _x.z, _x.roll, _x.pitch, _x.yaw, _x.kalman_yawrate, _x.kalman_vx, _x.acceleration, _x.steer, _x.throttle_percentage, _x.xbr, _x.gear, _x.left_light, _x.right_light, _x.air_beep, _x.time_to_last_point, _x.current_lat_error, _x.flag_lock_down_index_offload))
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
      if self.points is None:
        self.points = None
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
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.coord_type = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.coord_type = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.control_type = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.control_type = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.planner_fsm = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.planner_fsm = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.points = []
      for i in range(0, length):
        val1 = planner_msgs.msg.WayPoint()
        _x = val1
        start = end
        end += 125
        (_x.lock_down_index, _x.aim_pt_index, _x.x, _x.y, _x.z, _x.roll, _x.pitch, _x.yaw, _x.kalman_yawrate, _x.kalman_vx, _x.acceleration, _x.steer, _x.throttle_percentage, _x.xbr, _x.gear, _x.left_light, _x.right_light, _x.air_beep, _x.time_to_last_point, _x.current_lat_error, _x.flag_lock_down_index_offload,) = _get_struct_2i12db3B2dB().unpack(str[start:end])
        val1.flag_lock_down_index_offload = bool(val1.flag_lock_down_index_offload)
        self.points.append(val1)
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
      _x = self.coord_type
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.control_type
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.planner_fsm
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      length = len(self.points)
      buff.write(_struct_I.pack(length))
      for val1 in self.points:
        _x = val1
        buff.write(_get_struct_2i12db3B2dB().pack(_x.lock_down_index, _x.aim_pt_index, _x.x, _x.y, _x.z, _x.roll, _x.pitch, _x.yaw, _x.kalman_yawrate, _x.kalman_vx, _x.acceleration, _x.steer, _x.throttle_percentage, _x.xbr, _x.gear, _x.left_light, _x.right_light, _x.air_beep, _x.time_to_last_point, _x.current_lat_error, _x.flag_lock_down_index_offload))
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
      if self.points is None:
        self.points = None
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
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.coord_type = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.coord_type = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.control_type = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.control_type = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.planner_fsm = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.planner_fsm = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.points = []
      for i in range(0, length):
        val1 = planner_msgs.msg.WayPoint()
        _x = val1
        start = end
        end += 125
        (_x.lock_down_index, _x.aim_pt_index, _x.x, _x.y, _x.z, _x.roll, _x.pitch, _x.yaw, _x.kalman_yawrate, _x.kalman_vx, _x.acceleration, _x.steer, _x.throttle_percentage, _x.xbr, _x.gear, _x.left_light, _x.right_light, _x.air_beep, _x.time_to_last_point, _x.current_lat_error, _x.flag_lock_down_index_offload,) = _get_struct_2i12db3B2dB().unpack(str[start:end])
        val1.flag_lock_down_index_offload = bool(val1.flag_lock_down_index_offload)
        self.points.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2i12db3B2dB = None
def _get_struct_2i12db3B2dB():
    global _struct_2i12db3B2dB
    if _struct_2i12db3B2dB is None:
        _struct_2i12db3B2dB = struct.Struct("<2i12db3B2dB")
    return _struct_2i12db3B2dB
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
