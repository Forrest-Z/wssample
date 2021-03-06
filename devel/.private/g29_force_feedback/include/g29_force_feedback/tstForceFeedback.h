// Generated by gencpp from file g29_force_feedback/tstForceFeedback.msg
// DO NOT EDIT!


#ifndef G29_FORCE_FEEDBACK_MESSAGE_TSTFORCEFEEDBACK_H
#define G29_FORCE_FEEDBACK_MESSAGE_TSTFORCEFEEDBACK_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace g29_force_feedback
{
template <class ContainerAllocator>
struct tstForceFeedback_
{
  typedef tstForceFeedback_<ContainerAllocator> Type;

  tstForceFeedback_()
    : header()
    , calforce(0.0)
    , finalforce(0.0)
    , pforce(0.0)
    , iforce(0.0)
    , dforce(0.0)
    , error(0.0)
    , current_angle(0.0)  {
    }
  tstForceFeedback_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , calforce(0.0)
    , finalforce(0.0)
    , pforce(0.0)
    , iforce(0.0)
    , dforce(0.0)
    , error(0.0)
    , current_angle(0.0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef double _calforce_type;
  _calforce_type calforce;

   typedef double _finalforce_type;
  _finalforce_type finalforce;

   typedef double _pforce_type;
  _pforce_type pforce;

   typedef double _iforce_type;
  _iforce_type iforce;

   typedef double _dforce_type;
  _dforce_type dforce;

   typedef double _error_type;
  _error_type error;

   typedef double _current_angle_type;
  _current_angle_type current_angle;





  typedef boost::shared_ptr< ::g29_force_feedback::tstForceFeedback_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::g29_force_feedback::tstForceFeedback_<ContainerAllocator> const> ConstPtr;

}; // struct tstForceFeedback_

typedef ::g29_force_feedback::tstForceFeedback_<std::allocator<void> > tstForceFeedback;

typedef boost::shared_ptr< ::g29_force_feedback::tstForceFeedback > tstForceFeedbackPtr;
typedef boost::shared_ptr< ::g29_force_feedback::tstForceFeedback const> tstForceFeedbackConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::g29_force_feedback::tstForceFeedback_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::g29_force_feedback::tstForceFeedback_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace g29_force_feedback

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'g29_force_feedback': ['/home/oligay_61/zone3/src/drivers/g29_force_feedback/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::g29_force_feedback::tstForceFeedback_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::g29_force_feedback::tstForceFeedback_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::g29_force_feedback::tstForceFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::g29_force_feedback::tstForceFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::g29_force_feedback::tstForceFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::g29_force_feedback::tstForceFeedback_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::g29_force_feedback::tstForceFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "75d82f66d771fc3961daa29af4f7949f";
  }

  static const char* value(const ::g29_force_feedback::tstForceFeedback_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x75d82f66d771fc39ULL;
  static const uint64_t static_value2 = 0x61daa29af4f7949fULL;
};

template<class ContainerAllocator>
struct DataType< ::g29_force_feedback::tstForceFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "g29_force_feedback/tstForceFeedback";
  }

  static const char* value(const ::g29_force_feedback::tstForceFeedback_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::g29_force_feedback::tstForceFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Header header\n\
float64 calforce\n\
float64 finalforce\n\
float64 pforce\n\
float64 iforce\n\
float64 dforce\n\
float64 error\n\
float64 current_angle\n\
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

  static const char* value(const ::g29_force_feedback::tstForceFeedback_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::g29_force_feedback::tstForceFeedback_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.calforce);
      stream.next(m.finalforce);
      stream.next(m.pforce);
      stream.next(m.iforce);
      stream.next(m.dforce);
      stream.next(m.error);
      stream.next(m.current_angle);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct tstForceFeedback_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::g29_force_feedback::tstForceFeedback_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::g29_force_feedback::tstForceFeedback_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "calforce: ";
    Printer<double>::stream(s, indent + "  ", v.calforce);
    s << indent << "finalforce: ";
    Printer<double>::stream(s, indent + "  ", v.finalforce);
    s << indent << "pforce: ";
    Printer<double>::stream(s, indent + "  ", v.pforce);
    s << indent << "iforce: ";
    Printer<double>::stream(s, indent + "  ", v.iforce);
    s << indent << "dforce: ";
    Printer<double>::stream(s, indent + "  ", v.dforce);
    s << indent << "error: ";
    Printer<double>::stream(s, indent + "  ", v.error);
    s << indent << "current_angle: ";
    Printer<double>::stream(s, indent + "  ", v.current_angle);
  }
};

} // namespace message_operations
} // namespace ros

#endif // G29_FORCE_FEEDBACK_MESSAGE_TSTFORCEFEEDBACK_H
