// Generated by gencpp from file perception_msgs/Objs.msg
// DO NOT EDIT!


#ifndef PERCEPTION_MSGS_MESSAGE_OBJS_H
#define PERCEPTION_MSGS_MESSAGE_OBJS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <perception_msgs/Obj.h>

namespace perception_msgs
{
template <class ContainerAllocator>
struct Objs_
{
  typedef Objs_<ContainerAllocator> Type;

  Objs_()
    : header()
    , objs()  {
    }
  Objs_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , objs(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::vector< ::perception_msgs::Obj_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::perception_msgs::Obj_<ContainerAllocator> >::other >  _objs_type;
  _objs_type objs;





  typedef boost::shared_ptr< ::perception_msgs::Objs_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::perception_msgs::Objs_<ContainerAllocator> const> ConstPtr;

}; // struct Objs_

typedef ::perception_msgs::Objs_<std::allocator<void> > Objs;

typedef boost::shared_ptr< ::perception_msgs::Objs > ObjsPtr;
typedef boost::shared_ptr< ::perception_msgs::Objs const> ObjsConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::perception_msgs::Objs_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::perception_msgs::Objs_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace perception_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'perception_msgs': ['/home/oligay_61/zone3/src/message/perception_msgs/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::perception_msgs::Objs_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::perception_msgs::Objs_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::perception_msgs::Objs_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::perception_msgs::Objs_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::perception_msgs::Objs_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::perception_msgs::Objs_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::perception_msgs::Objs_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41aae8b6289d3d5c6019e425ce539df";
  }

  static const char* value(const ::perception_msgs::Objs_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41aae8b6289d3d5ULL;
  static const uint64_t static_value2 = 0xc6019e425ce539dfULL;
};

template<class ContainerAllocator>
struct DataType< ::perception_msgs::Objs_<ContainerAllocator> >
{
  static const char* value()
  {
    return "perception_msgs/Objs";
  }

  static const char* value(const ::perception_msgs::Objs_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::perception_msgs::Objs_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
\n\
Obj[] objs\n\
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
\n\
================================================================================\n\
MSG: perception_msgs/Obj\n\
int32 id\n\
\n\
float32 confidence\n\
int32 age\n\
int32 left_time\n\
\n\
geometry_msgs/Point32 left_bottom\n\
geometry_msgs/Point32 right_bottom\n\
geometry_msgs/Point32 left_top\n\
geometry_msgs/Point32 right_top\n\
\n\
# v north, east, to ground\n\
float32 v_north\n\
float32 v_east\n\
float32 v_ground\n\
================================================================================\n\
MSG: geometry_msgs/Point32\n\
# This contains the position of a point in free space(with 32 bits of precision).\n\
# It is recommeded to use Point wherever possible instead of Point32.  \n\
# \n\
# This recommendation is to promote interoperability.  \n\
#\n\
# This message is designed to take up less space when sending\n\
# lots of points at once, as in the case of a PointCloud.  \n\
\n\
float32 x\n\
float32 y\n\
float32 z\n\
";
  }

  static const char* value(const ::perception_msgs::Objs_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::perception_msgs::Objs_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.objs);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Objs_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::perception_msgs::Objs_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::perception_msgs::Objs_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "objs[]" << std::endl;
    for (size_t i = 0; i < v.objs.size(); ++i)
    {
      s << indent << "  objs[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::perception_msgs::Obj_<ContainerAllocator> >::stream(s, indent + "    ", v.objs[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // PERCEPTION_MSGS_MESSAGE_OBJS_H
