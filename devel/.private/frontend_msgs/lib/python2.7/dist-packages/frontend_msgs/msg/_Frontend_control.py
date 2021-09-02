# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from frontend_msgs/Frontend_control.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class Frontend_control(genpy.Message):
  _md5sum = "07e96978fad44d955264fd804f0af5ca"
  _type = "frontend_msgs/Frontend_control"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# frontend lights control
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
int32 back_work"""
  __slots__ = ['top_warn','air_beep','front_fog','front_work','side','position','emergency','brake','reverse','back_work']
  _slot_types = ['int32','int32','int32','int32','int32','int32','int32','int32','int32','int32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       top_warn,air_beep,front_fog,front_work,side,position,emergency,brake,reverse,back_work

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Frontend_control, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.top_warn is None:
        self.top_warn = 0
      if self.air_beep is None:
        self.air_beep = 0
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
    else:
      self.top_warn = 0
      self.air_beep = 0
      self.front_fog = 0
      self.front_work = 0
      self.side = 0
      self.position = 0
      self.emergency = 0
      self.brake = 0
      self.reverse = 0
      self.back_work = 0

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
      buff.write(_get_struct_10i().pack(_x.top_warn, _x.air_beep, _x.front_fog, _x.front_work, _x.side, _x.position, _x.emergency, _x.brake, _x.reverse, _x.back_work))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 40
      (_x.top_warn, _x.air_beep, _x.front_fog, _x.front_work, _x.side, _x.position, _x.emergency, _x.brake, _x.reverse, _x.back_work,) = _get_struct_10i().unpack(str[start:end])
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
      buff.write(_get_struct_10i().pack(_x.top_warn, _x.air_beep, _x.front_fog, _x.front_work, _x.side, _x.position, _x.emergency, _x.brake, _x.reverse, _x.back_work))
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
      end = 0
      _x = self
      start = end
      end += 40
      (_x.top_warn, _x.air_beep, _x.front_fog, _x.front_work, _x.side, _x.position, _x.emergency, _x.brake, _x.reverse, _x.back_work,) = _get_struct_10i().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_10i = None
def _get_struct_10i():
    global _struct_10i
    if _struct_10i is None:
        _struct_10i = struct.Struct("<10i")
    return _struct_10i
