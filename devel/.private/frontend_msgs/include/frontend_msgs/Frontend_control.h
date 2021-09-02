// Generated by gencpp from file frontend_msgs/Frontend_control.msg
// DO NOT EDIT!


#ifndef FRONTEND_MSGS_MESSAGE_FRONTEND_CONTROL_H
#define FRONTEND_MSGS_MESSAGE_FRONTEND_CONTROL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace frontend_msgs
{
template <class ContainerAllocator>
struct Frontend_control_
{
  typedef Frontend_control_<ContainerAllocator> Type;

  Frontend_control_()
    : top_warn(0)
    , air_beep(0)
    , front_fog(0)
    , front_work(0)
    , side(0)
    , position(0)
    , emergency(0)
    , brake(0)
    , reverse(0)
    , back_work(0)  {
    }
  Frontend_control_(const ContainerAllocator& _alloc)
    : top_warn(0)
    , air_beep(0)
    , front_fog(0)
    , front_work(0)
    , side(0)
    , position(0)
    , emergency(0)
    , brake(0)
    , reverse(0)
    , back_work(0)  {
  (void)_alloc;
    }



   typedef int32_t _top_warn_type;
  _top_warn_type top_warn;

   typedef int32_t _air_beep_type;
  _air_beep_type air_beep;

   typedef int32_t _front_fog_type;
  _front_fog_type front_fog;

   typedef int32_t _front_work_type;
  _front_work_type front_work;

   typedef int32_t _side_type;
  _side_type side;

   typedef int32_t _position_type;
  _position_type position;

   typedef int32_t _emergency_type;
  _emergency_type emergency;

   typedef int32_t _brake_type;
  _brake_type brake;

   typedef int32_t _reverse_type;
  _reverse_type reverse;

   typedef int32_t _back_work_type;
  _back_work_type back_work;





  typedef boost::shared_ptr< ::frontend_msgs::Frontend_control_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::frontend_msgs::Frontend_control_<ContainerAllocator> const> ConstPtr;

}; // struct Frontend_control_

typedef ::frontend_msgs::Frontend_control_<std::allocator<void> > Frontend_control;

typedef boost::shared_ptr< ::frontend_msgs::Frontend_control > Frontend_controlPtr;
typedef boost::shared_ptr< ::frontend_msgs::Frontend_control const> Frontend_controlConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::frontend_msgs::Frontend_control_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::frontend_msgs::Frontend_control_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace frontend_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'frontend_msgs': ['/home/oligay_61/zone3/src/message/frontend_msgs/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::frontend_msgs::Frontend_control_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::frontend_msgs::Frontend_control_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::frontend_msgs::Frontend_control_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::frontend_msgs::Frontend_control_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::frontend_msgs::Frontend_control_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::frontend_msgs::Frontend_control_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::frontend_msgs::Frontend_control_<ContainerAllocator> >
{
  static const char* value()
  {
    return "07e96978fad44d955264fd804f0af5ca";
  }

  static const char* value(const ::frontend_msgs::Frontend_control_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x07e96978fad44d95ULL;
  static const uint64_t static_value2 = 0x5264fd804f0af5caULL;
};

template<class ContainerAllocator>
struct DataType< ::frontend_msgs::Frontend_control_<ContainerAllocator> >
{
  static const char* value()
  {
    return "frontend_msgs/Frontend_control";
  }

  static const char* value(const ::frontend_msgs::Frontend_control_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::frontend_msgs::Frontend_control_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# frontend lights control\n\
# int32 left\n\
# int32 right\n\
# int32 near\n\
# int32 far\n\
int32 top_warn\n\
int32 air_beep\n\
int32 front_fog\n\
int32 front_work\n\
int32 side\n\
int32 position\n\
int32 emergency\n\
int32 brake\n\
int32 reverse\n\
int32 back_work\n\
";
  }

  static const char* value(const ::frontend_msgs::Frontend_control_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::frontend_msgs::Frontend_control_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.top_warn);
      stream.next(m.air_beep);
      stream.next(m.front_fog);
      stream.next(m.front_work);
      stream.next(m.side);
      stream.next(m.position);
      stream.next(m.emergency);
      stream.next(m.brake);
      stream.next(m.reverse);
      stream.next(m.back_work);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Frontend_control_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::frontend_msgs::Frontend_control_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::frontend_msgs::Frontend_control_<ContainerAllocator>& v)
  {
    s << indent << "top_warn: ";
    Printer<int32_t>::stream(s, indent + "  ", v.top_warn);
    s << indent << "air_beep: ";
    Printer<int32_t>::stream(s, indent + "  ", v.air_beep);
    s << indent << "front_fog: ";
    Printer<int32_t>::stream(s, indent + "  ", v.front_fog);
    s << indent << "front_work: ";
    Printer<int32_t>::stream(s, indent + "  ", v.front_work);
    s << indent << "side: ";
    Printer<int32_t>::stream(s, indent + "  ", v.side);
    s << indent << "position: ";
    Printer<int32_t>::stream(s, indent + "  ", v.position);
    s << indent << "emergency: ";
    Printer<int32_t>::stream(s, indent + "  ", v.emergency);
    s << indent << "brake: ";
    Printer<int32_t>::stream(s, indent + "  ", v.brake);
    s << indent << "reverse: ";
    Printer<int32_t>::stream(s, indent + "  ", v.reverse);
    s << indent << "back_work: ";
    Printer<int32_t>::stream(s, indent + "  ", v.back_work);
  }
};

} // namespace message_operations
} // namespace ros

#endif // FRONTEND_MSGS_MESSAGE_FRONTEND_CONTROL_H