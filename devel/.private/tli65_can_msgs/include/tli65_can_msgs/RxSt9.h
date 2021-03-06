// Generated by gencpp from file tli65_can_msgs/RxSt9.msg
// DO NOT EDIT!


#ifndef TLI65_CAN_MSGS_MESSAGE_RXST9_H
#define TLI65_CAN_MSGS_MESSAGE_RXST9_H


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
struct RxSt9_
{
  typedef RxSt9_<ContainerAllocator> Type;

  RxSt9_()
    : header()
    , back_left_light(0)
    , back_right_light(0)
    , back_position_light(0)
    , brake_light(0)
    , reverse_light(0)
    , back_work_light(0)
    , cooler1(0)
    , cooler2(0)
    , axle_diff_switch(0)
    , drier_power(0)
    , inclinometer_power(0)
    , cold_water_treasure_power(0)
    , exhaust_brake_switch(0)  {
    }
  RxSt9_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , back_left_light(0)
    , back_right_light(0)
    , back_position_light(0)
    , brake_light(0)
    , reverse_light(0)
    , back_work_light(0)
    , cooler1(0)
    , cooler2(0)
    , axle_diff_switch(0)
    , drier_power(0)
    , inclinometer_power(0)
    , cold_water_treasure_power(0)
    , exhaust_brake_switch(0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef uint8_t _back_left_light_type;
  _back_left_light_type back_left_light;

   typedef uint8_t _back_right_light_type;
  _back_right_light_type back_right_light;

   typedef uint8_t _back_position_light_type;
  _back_position_light_type back_position_light;

   typedef uint8_t _brake_light_type;
  _brake_light_type brake_light;

   typedef uint8_t _reverse_light_type;
  _reverse_light_type reverse_light;

   typedef uint8_t _back_work_light_type;
  _back_work_light_type back_work_light;

   typedef uint8_t _cooler1_type;
  _cooler1_type cooler1;

   typedef uint8_t _cooler2_type;
  _cooler2_type cooler2;

   typedef uint8_t _axle_diff_switch_type;
  _axle_diff_switch_type axle_diff_switch;

   typedef uint8_t _drier_power_type;
  _drier_power_type drier_power;

   typedef uint8_t _inclinometer_power_type;
  _inclinometer_power_type inclinometer_power;

   typedef uint8_t _cold_water_treasure_power_type;
  _cold_water_treasure_power_type cold_water_treasure_power;

   typedef uint8_t _exhaust_brake_switch_type;
  _exhaust_brake_switch_type exhaust_brake_switch;





  typedef boost::shared_ptr< ::tli65_can_msgs::RxSt9_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::tli65_can_msgs::RxSt9_<ContainerAllocator> const> ConstPtr;

}; // struct RxSt9_

typedef ::tli65_can_msgs::RxSt9_<std::allocator<void> > RxSt9;

typedef boost::shared_ptr< ::tli65_can_msgs::RxSt9 > RxSt9Ptr;
typedef boost::shared_ptr< ::tli65_can_msgs::RxSt9 const> RxSt9ConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::tli65_can_msgs::RxSt9_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::tli65_can_msgs::RxSt9_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::tli65_can_msgs::RxSt9_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::tli65_can_msgs::RxSt9_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tli65_can_msgs::RxSt9_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tli65_can_msgs::RxSt9_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tli65_can_msgs::RxSt9_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tli65_can_msgs::RxSt9_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::tli65_can_msgs::RxSt9_<ContainerAllocator> >
{
  static const char* value()
  {
    return "4d003e66e4be8a30497585d13731cb44";
  }

  static const char* value(const ::tli65_can_msgs::RxSt9_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x4d003e66e4be8a30ULL;
  static const uint64_t static_value2 = 0x497585d13731cb44ULL;
};

template<class ContainerAllocator>
struct DataType< ::tli65_can_msgs::RxSt9_<ContainerAllocator> >
{
  static const char* value()
  {
    return "tli65_can_msgs/RxSt9";
  }

  static const char* value(const ::tli65_can_msgs::RxSt9_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::tli65_can_msgs::RxSt9_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
\n\
uint8 back_left_light\n\
uint8 back_right_light\n\
uint8 back_position_light\n\
uint8 brake_light\n\
uint8 reverse_light\n\
uint8 back_work_light\n\
uint8 cooler1\n\
uint8 cooler2\n\
uint8 axle_diff_switch\n\
uint8 drier_power\n\
uint8 inclinometer_power\n\
uint8 cold_water_treasure_power\n\
uint8 exhaust_brake_switch\n\
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

  static const char* value(const ::tli65_can_msgs::RxSt9_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::tli65_can_msgs::RxSt9_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.back_left_light);
      stream.next(m.back_right_light);
      stream.next(m.back_position_light);
      stream.next(m.brake_light);
      stream.next(m.reverse_light);
      stream.next(m.back_work_light);
      stream.next(m.cooler1);
      stream.next(m.cooler2);
      stream.next(m.axle_diff_switch);
      stream.next(m.drier_power);
      stream.next(m.inclinometer_power);
      stream.next(m.cold_water_treasure_power);
      stream.next(m.exhaust_brake_switch);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RxSt9_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::tli65_can_msgs::RxSt9_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::tli65_can_msgs::RxSt9_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "back_left_light: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.back_left_light);
    s << indent << "back_right_light: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.back_right_light);
    s << indent << "back_position_light: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.back_position_light);
    s << indent << "brake_light: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.brake_light);
    s << indent << "reverse_light: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.reverse_light);
    s << indent << "back_work_light: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.back_work_light);
    s << indent << "cooler1: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.cooler1);
    s << indent << "cooler2: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.cooler2);
    s << indent << "axle_diff_switch: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.axle_diff_switch);
    s << indent << "drier_power: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.drier_power);
    s << indent << "inclinometer_power: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.inclinometer_power);
    s << indent << "cold_water_treasure_power: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.cold_water_treasure_power);
    s << indent << "exhaust_brake_switch: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.exhaust_brake_switch);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TLI65_CAN_MSGS_MESSAGE_RXST9_H
