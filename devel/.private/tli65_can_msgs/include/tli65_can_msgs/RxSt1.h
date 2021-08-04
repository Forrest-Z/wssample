// Generated by gencpp from file tli65_can_msgs/RxSt1.msg
// DO NOT EDIT!


#ifndef TLI65_CAN_MSGS_MESSAGE_RXST1_H
#define TLI65_CAN_MSGS_MESSAGE_RXST1_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace tli65_can_msgs
{
template <class ContainerAllocator>
struct RxSt1_
{
  typedef RxSt1_<ContainerAllocator> Type;

  RxSt1_()
    : header()
    , auto_mode(0)
    , engine_active(0)
    , hand_brake_active(0)
    , EBS_active(0)
    , retarder_active(0)
    , gear_active(0)
    , EPS_active(0)
    , hang_active(0)  {
    }
  RxSt1_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , auto_mode(0)
    , engine_active(0)
    , hand_brake_active(0)
    , EBS_active(0)
    , retarder_active(0)
    , gear_active(0)
    , EPS_active(0)
    , hang_active(0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef uint8_t _auto_mode_type;
  _auto_mode_type auto_mode;

   typedef uint8_t _engine_active_type;
  _engine_active_type engine_active;

   typedef uint8_t _hand_brake_active_type;
  _hand_brake_active_type hand_brake_active;

   typedef uint8_t _EBS_active_type;
  _EBS_active_type EBS_active;

   typedef uint8_t _retarder_active_type;
  _retarder_active_type retarder_active;

   typedef uint8_t _gear_active_type;
  _gear_active_type gear_active;

   typedef uint8_t _EPS_active_type;
  _EPS_active_type EPS_active;

   typedef uint8_t _hang_active_type;
  _hang_active_type hang_active;





  typedef boost::shared_ptr< ::tli65_can_msgs::RxSt1_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::tli65_can_msgs::RxSt1_<ContainerAllocator> const> ConstPtr;

}; // struct RxSt1_

typedef ::tli65_can_msgs::RxSt1_<std::allocator<void> > RxSt1;

typedef boost::shared_ptr< ::tli65_can_msgs::RxSt1 > RxSt1Ptr;
typedef boost::shared_ptr< ::tli65_can_msgs::RxSt1 const> RxSt1ConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::tli65_can_msgs::RxSt1_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::tli65_can_msgs::RxSt1_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace tli65_can_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'can_msgs': ['/opt/ros/kinetic/share/can_msgs/cmake/../msg'], 'tli65_can_msgs': ['/home/oligay_61/zone3/src/message/tli65_can_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::tli65_can_msgs::RxSt1_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::tli65_can_msgs::RxSt1_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tli65_can_msgs::RxSt1_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tli65_can_msgs::RxSt1_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tli65_can_msgs::RxSt1_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tli65_can_msgs::RxSt1_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::tli65_can_msgs::RxSt1_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f067e802a0fe3c15d96a577607d1f535";
  }

  static const char* value(const ::tli65_can_msgs::RxSt1_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf067e802a0fe3c15ULL;
  static const uint64_t static_value2 = 0xd96a577607d1f535ULL;
};

template<class ContainerAllocator>
struct DataType< ::tli65_can_msgs::RxSt1_<ContainerAllocator> >
{
  static const char* value()
  {
    return "tli65_can_msgs/RxSt1";
  }

  static const char* value(const ::tli65_can_msgs::RxSt1_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::tli65_can_msgs::RxSt1_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
\n\
uint8 auto_mode\n\
uint8 engine_active\n\
uint8 hand_brake_active\n\
uint8 EBS_active\n\
uint8 retarder_active\n\
uint8 gear_active\n\
uint8 EPS_active\n\
uint8 hang_active\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
";
  }

  static const char* value(const ::tli65_can_msgs::RxSt1_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::tli65_can_msgs::RxSt1_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.auto_mode);
      stream.next(m.engine_active);
      stream.next(m.hand_brake_active);
      stream.next(m.EBS_active);
      stream.next(m.retarder_active);
      stream.next(m.gear_active);
      stream.next(m.EPS_active);
      stream.next(m.hang_active);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RxSt1_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::tli65_can_msgs::RxSt1_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::tli65_can_msgs::RxSt1_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "auto_mode: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.auto_mode);
    s << indent << "engine_active: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.engine_active);
    s << indent << "hand_brake_active: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.hand_brake_active);
    s << indent << "EBS_active: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.EBS_active);
    s << indent << "retarder_active: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.retarder_active);
    s << indent << "gear_active: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.gear_active);
    s << indent << "EPS_active: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.EPS_active);
    s << indent << "hang_active: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.hang_active);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TLI65_CAN_MSGS_MESSAGE_RXST1_H
