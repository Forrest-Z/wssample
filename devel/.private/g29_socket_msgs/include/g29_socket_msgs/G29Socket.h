// Generated by gencpp from file g29_socket_msgs/G29Socket.msg
// DO NOT EDIT!


#ifndef G29_SOCKET_MSGS_MESSAGE_G29SOCKET_H
#define G29_SOCKET_MSGS_MESSAGE_G29SOCKET_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace g29_socket_msgs
{
template <class ContainerAllocator>
struct G29Socket_
{
  typedef G29Socket_<ContainerAllocator> Type;

  G29Socket_()
    : header()
    , axes()
    , buttons()  {
      axes.assign(0.0);

      buttons.assign(0.0);
  }
  G29Socket_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , axes()
    , buttons()  {
  (void)_alloc;
      axes.assign(0.0);

      buttons.assign(0.0);
  }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef boost::array<double, 6>  _axes_type;
  _axes_type axes;

   typedef boost::array<double, 25>  _buttons_type;
  _buttons_type buttons;





  typedef boost::shared_ptr< ::g29_socket_msgs::G29Socket_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::g29_socket_msgs::G29Socket_<ContainerAllocator> const> ConstPtr;

}; // struct G29Socket_

typedef ::g29_socket_msgs::G29Socket_<std::allocator<void> > G29Socket;

typedef boost::shared_ptr< ::g29_socket_msgs::G29Socket > G29SocketPtr;
typedef boost::shared_ptr< ::g29_socket_msgs::G29Socket const> G29SocketConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::g29_socket_msgs::G29Socket_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::g29_socket_msgs::G29Socket_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace g29_socket_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'g29_socket_msgs': ['/home/oligay_61/zone3/src/message/g29_socket_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::g29_socket_msgs::G29Socket_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::g29_socket_msgs::G29Socket_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::g29_socket_msgs::G29Socket_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::g29_socket_msgs::G29Socket_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::g29_socket_msgs::G29Socket_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::g29_socket_msgs::G29Socket_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::g29_socket_msgs::G29Socket_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b8eb7f320e43cf539122a332e9191771";
  }

  static const char* value(const ::g29_socket_msgs::G29Socket_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb8eb7f320e43cf53ULL;
  static const uint64_t static_value2 = 0x9122a332e9191771ULL;
};

template<class ContainerAllocator>
struct DataType< ::g29_socket_msgs::G29Socket_<ContainerAllocator> >
{
  static const char* value()
  {
    return "g29_socket_msgs/G29Socket";
  }

  static const char* value(const ::g29_socket_msgs::G29Socket_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::g29_socket_msgs::G29Socket_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
\n\
float64[6] axes\n\
float64[25] buttons\n\
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

  static const char* value(const ::g29_socket_msgs::G29Socket_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::g29_socket_msgs::G29Socket_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.axes);
      stream.next(m.buttons);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct G29Socket_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::g29_socket_msgs::G29Socket_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::g29_socket_msgs::G29Socket_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "axes[]" << std::endl;
    for (size_t i = 0; i < v.axes.size(); ++i)
    {
      s << indent << "  axes[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.axes[i]);
    }
    s << indent << "buttons[]" << std::endl;
    for (size_t i = 0; i < v.buttons.size(); ++i)
    {
      s << indent << "  buttons[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.buttons[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // G29_SOCKET_MSGS_MESSAGE_G29SOCKET_H
