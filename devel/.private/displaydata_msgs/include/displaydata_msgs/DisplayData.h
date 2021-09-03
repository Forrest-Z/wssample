// Generated by gencpp from file displaydata_msgs/DisplayData.msg
// DO NOT EDIT!


#ifndef DISPLAYDATA_MSGS_MESSAGE_DISPLAYDATA_H
#define DISPLAYDATA_MSGS_MESSAGE_DISPLAYDATA_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace displaydata_msgs
{
template <class ContainerAllocator>
struct DisplayData_
{
  typedef DisplayData_<ContainerAllocator> Type;

  DisplayData_()
    : header()
    , rtk_state(0)
    , lat(0.0)
    , lng(0.0)
    , alt(0.0)
    , x_enu(0.0)
    , y_enu(0.0)
    , z_enu(0.0)
    , xy_std_enu(0.0)
    , heading_angle(0.0)
    , NumSate(0)
    , vx(0.0)
    , auto_mode(0)
    , current_steer(0.0)
    , current_brake_pedal_pos(0.0)
    , current_throttle_percentage(0)
    , current_retarder_torque_percentage(0)
    , current_EPB(0)
    , current_gear(0)
    , current_hang_angle(0)
    , air_pressure1(0)
    , air_pressure2(0)
    , left_light(0)
    , right_light(0)
    , near_light(0)
    , far_light(0)
    , air_beep(0)
    , top_warning_light(0)
    , front_fog_light(0)
    , front_work_light(0)
    , side_light(0)
    , position_light(0)
    , back_left_light(0)
    , back_right_light(0)
    , back_position_light(0)
    , brake_light(0)
    , reverse_light(0)
    , back_work_light(0)
    , fuel_consumption(0)
    , planner_fsm_state()
    , lock_down_index(0)
    , pt_index()
    , wpt_x()
    , wpt_y()
    , control_fsm_state()
    , control_steer(0.0)
    , control_throttle_percentage(0)
    , control_xbr(0.0)
    , control_EPB(0)
    , control_gear()
    , control_hang()
    , engine_fault(0)
    , gear_fault(0)
    , EBS_fault(0)
    , EPS_fault(0)
    , EPB_fault(0)
    , tyre_pressure_leftfront(0)
    , tyre_pressure_rightfront(0)
    , front_left_temperature(0.0)
    , front_right_temperature(0.0)  {
    }
  DisplayData_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , rtk_state(0)
    , lat(0.0)
    , lng(0.0)
    , alt(0.0)
    , x_enu(0.0)
    , y_enu(0.0)
    , z_enu(0.0)
    , xy_std_enu(0.0)
    , heading_angle(0.0)
    , NumSate(0)
    , vx(0.0)
    , auto_mode(0)
    , current_steer(0.0)
    , current_brake_pedal_pos(0.0)
    , current_throttle_percentage(0)
    , current_retarder_torque_percentage(0)
    , current_EPB(0)
    , current_gear(0)
    , current_hang_angle(0)
    , air_pressure1(0)
    , air_pressure2(0)
    , left_light(0)
    , right_light(0)
    , near_light(0)
    , far_light(0)
    , air_beep(0)
    , top_warning_light(0)
    , front_fog_light(0)
    , front_work_light(0)
    , side_light(0)
    , position_light(0)
    , back_left_light(0)
    , back_right_light(0)
    , back_position_light(0)
    , brake_light(0)
    , reverse_light(0)
    , back_work_light(0)
    , fuel_consumption(0)
    , planner_fsm_state(_alloc)
    , lock_down_index(0)
    , pt_index(_alloc)
    , wpt_x(_alloc)
    , wpt_y(_alloc)
    , control_fsm_state(_alloc)
    , control_steer(0.0)
    , control_throttle_percentage(0)
    , control_xbr(0.0)
    , control_EPB(0)
    , control_gear(_alloc)
    , control_hang(_alloc)
    , engine_fault(0)
    , gear_fault(0)
    , EBS_fault(0)
    , EPS_fault(0)
    , EPB_fault(0)
    , tyre_pressure_leftfront(0)
    , tyre_pressure_rightfront(0)
    , front_left_temperature(0.0)
    , front_right_temperature(0.0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef int32_t _rtk_state_type;
  _rtk_state_type rtk_state;

   typedef double _lat_type;
  _lat_type lat;

   typedef double _lng_type;
  _lng_type lng;

   typedef double _alt_type;
  _alt_type alt;

   typedef double _x_enu_type;
  _x_enu_type x_enu;

   typedef double _y_enu_type;
  _y_enu_type y_enu;

   typedef double _z_enu_type;
  _z_enu_type z_enu;

   typedef double _xy_std_enu_type;
  _xy_std_enu_type xy_std_enu;

   typedef double _heading_angle_type;
  _heading_angle_type heading_angle;

   typedef int32_t _NumSate_type;
  _NumSate_type NumSate;

   typedef double _vx_type;
  _vx_type vx;

   typedef int32_t _auto_mode_type;
  _auto_mode_type auto_mode;

   typedef double _current_steer_type;
  _current_steer_type current_steer;

   typedef double _current_brake_pedal_pos_type;
  _current_brake_pedal_pos_type current_brake_pedal_pos;

   typedef int32_t _current_throttle_percentage_type;
  _current_throttle_percentage_type current_throttle_percentage;

   typedef int32_t _current_retarder_torque_percentage_type;
  _current_retarder_torque_percentage_type current_retarder_torque_percentage;

   typedef int32_t _current_EPB_type;
  _current_EPB_type current_EPB;

   typedef int32_t _current_gear_type;
  _current_gear_type current_gear;

   typedef int32_t _current_hang_angle_type;
  _current_hang_angle_type current_hang_angle;

   typedef int32_t _air_pressure1_type;
  _air_pressure1_type air_pressure1;

   typedef int32_t _air_pressure2_type;
  _air_pressure2_type air_pressure2;

   typedef int32_t _left_light_type;
  _left_light_type left_light;

   typedef int32_t _right_light_type;
  _right_light_type right_light;

   typedef int32_t _near_light_type;
  _near_light_type near_light;

   typedef int32_t _far_light_type;
  _far_light_type far_light;

   typedef int32_t _air_beep_type;
  _air_beep_type air_beep;

   typedef int32_t _top_warning_light_type;
  _top_warning_light_type top_warning_light;

   typedef int32_t _front_fog_light_type;
  _front_fog_light_type front_fog_light;

   typedef int32_t _front_work_light_type;
  _front_work_light_type front_work_light;

   typedef int32_t _side_light_type;
  _side_light_type side_light;

   typedef int32_t _position_light_type;
  _position_light_type position_light;

   typedef int32_t _back_left_light_type;
  _back_left_light_type back_left_light;

   typedef int32_t _back_right_light_type;
  _back_right_light_type back_right_light;

   typedef int32_t _back_position_light_type;
  _back_position_light_type back_position_light;

   typedef int32_t _brake_light_type;
  _brake_light_type brake_light;

   typedef int32_t _reverse_light_type;
  _reverse_light_type reverse_light;

   typedef int32_t _back_work_light_type;
  _back_work_light_type back_work_light;

   typedef int32_t _fuel_consumption_type;
  _fuel_consumption_type fuel_consumption;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _planner_fsm_state_type;
  _planner_fsm_state_type planner_fsm_state;

   typedef int32_t _lock_down_index_type;
  _lock_down_index_type lock_down_index;

   typedef std::vector<int32_t, typename ContainerAllocator::template rebind<int32_t>::other >  _pt_index_type;
  _pt_index_type pt_index;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _wpt_x_type;
  _wpt_x_type wpt_x;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _wpt_y_type;
  _wpt_y_type wpt_y;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _control_fsm_state_type;
  _control_fsm_state_type control_fsm_state;

   typedef double _control_steer_type;
  _control_steer_type control_steer;

   typedef int32_t _control_throttle_percentage_type;
  _control_throttle_percentage_type control_throttle_percentage;

   typedef double _control_xbr_type;
  _control_xbr_type control_xbr;

   typedef int32_t _control_EPB_type;
  _control_EPB_type control_EPB;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _control_gear_type;
  _control_gear_type control_gear;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _control_hang_type;
  _control_hang_type control_hang;

   typedef int32_t _engine_fault_type;
  _engine_fault_type engine_fault;

   typedef int32_t _gear_fault_type;
  _gear_fault_type gear_fault;

   typedef int32_t _EBS_fault_type;
  _EBS_fault_type EBS_fault;

   typedef int32_t _EPS_fault_type;
  _EPS_fault_type EPS_fault;

   typedef int32_t _EPB_fault_type;
  _EPB_fault_type EPB_fault;

   typedef int32_t _tyre_pressure_leftfront_type;
  _tyre_pressure_leftfront_type tyre_pressure_leftfront;

   typedef int32_t _tyre_pressure_rightfront_type;
  _tyre_pressure_rightfront_type tyre_pressure_rightfront;

   typedef double _front_left_temperature_type;
  _front_left_temperature_type front_left_temperature;

   typedef double _front_right_temperature_type;
  _front_right_temperature_type front_right_temperature;





  typedef boost::shared_ptr< ::displaydata_msgs::DisplayData_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::displaydata_msgs::DisplayData_<ContainerAllocator> const> ConstPtr;

}; // struct DisplayData_

typedef ::displaydata_msgs::DisplayData_<std::allocator<void> > DisplayData;

typedef boost::shared_ptr< ::displaydata_msgs::DisplayData > DisplayDataPtr;
typedef boost::shared_ptr< ::displaydata_msgs::DisplayData const> DisplayDataConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::displaydata_msgs::DisplayData_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::displaydata_msgs::DisplayData_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace displaydata_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'displaydata_msgs': ['/home/oligay_61/zone3/src/message/displaydata_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::displaydata_msgs::DisplayData_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::displaydata_msgs::DisplayData_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::displaydata_msgs::DisplayData_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::displaydata_msgs::DisplayData_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::displaydata_msgs::DisplayData_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::displaydata_msgs::DisplayData_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::displaydata_msgs::DisplayData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "4ffa05f2036a9bdc4fea667a8a91fa8a";
  }

  static const char* value(const ::displaydata_msgs::DisplayData_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x4ffa05f2036a9bdcULL;
  static const uint64_t static_value2 = 0x4fea667a8a91fa8aULL;
};

template<class ContainerAllocator>
struct DataType< ::displaydata_msgs::DisplayData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "displaydata_msgs/DisplayData";
  }

  static const char* value(const ::displaydata_msgs::DisplayData_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::displaydata_msgs::DisplayData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
\n\
# RTK state\n\
# -1 : no gnss\n\
# 0 : 2D or 3D gnss fix\n\
# 1 : SBAS or Starfire gnss fix\n\
# 2 : Diff or rtk fix\n\
int32 rtk_state \n\
\n\
float64 lat\n\
float64 lng\n\
float64 alt\n\
\n\
# enu coord\n\
float64 x_enu\n\
float64 y_enu\n\
float64 z_enu\n\
float64 xy_std_enu\n\
\n\
#GPS HEADING \n\
float64 heading_angle\n\
\n\
# number of satellite\n\
int32 NumSate\n\
\n\
# kalman velocity\n\
float64 vx\n\
\n\
# Tli65 vehicle can_rx\n\
int32 auto_mode\n\
float64 current_steer\n\
float64 current_brake_pedal_pos\n\
int32 current_throttle_percentage\n\
int32 current_retarder_torque_percentage\n\
int32 current_EPB\n\
int32 current_gear\n\
int32 current_hang_angle\n\
\n\
int32 air_pressure1\n\
int32 air_pressure2\n\
\n\
int32 left_light\n\
int32 right_light\n\
int32 near_light\n\
int32 far_light\n\
int32 air_beep\n\
int32 top_warning_light\n\
int32 front_fog_light\n\
int32 front_work_light\n\
int32 side_light\n\
int32 position_light\n\
int32 back_left_light\n\
int32 back_right_light\n\
int32 back_position_light\n\
int32 brake_light\n\
int32 reverse_light\n\
int32 back_work_light\n\
int32 fuel_consumption\n\
\n\
# planner waypoints\n\
string planner_fsm_state\n\
int32 lock_down_index\n\
int32[] pt_index\n\
float64[] wpt_x\n\
float64[] wpt_y\n\
\n\
# control\n\
string control_fsm_state\n\
float64 control_steer\n\
int32 control_throttle_percentage\n\
float64 control_xbr\n\
int32 control_EPB\n\
string control_gear\n\
string control_hang\n\
 \n\
# ft1\n\
int32 engine_fault\n\
int32 gear_fault\n\
int32 EBS_fault\n\
int32 EPS_fault\n\
int32 EPB_fault\n\
\n\
# tyre\n\
int32 tyre_pressure_leftfront\n\
int32 tyre_pressure_rightfront\n\
float64 front_left_temperature\n\
float64 front_right_temperature\n\
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

  static const char* value(const ::displaydata_msgs::DisplayData_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::displaydata_msgs::DisplayData_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.rtk_state);
      stream.next(m.lat);
      stream.next(m.lng);
      stream.next(m.alt);
      stream.next(m.x_enu);
      stream.next(m.y_enu);
      stream.next(m.z_enu);
      stream.next(m.xy_std_enu);
      stream.next(m.heading_angle);
      stream.next(m.NumSate);
      stream.next(m.vx);
      stream.next(m.auto_mode);
      stream.next(m.current_steer);
      stream.next(m.current_brake_pedal_pos);
      stream.next(m.current_throttle_percentage);
      stream.next(m.current_retarder_torque_percentage);
      stream.next(m.current_EPB);
      stream.next(m.current_gear);
      stream.next(m.current_hang_angle);
      stream.next(m.air_pressure1);
      stream.next(m.air_pressure2);
      stream.next(m.left_light);
      stream.next(m.right_light);
      stream.next(m.near_light);
      stream.next(m.far_light);
      stream.next(m.air_beep);
      stream.next(m.top_warning_light);
      stream.next(m.front_fog_light);
      stream.next(m.front_work_light);
      stream.next(m.side_light);
      stream.next(m.position_light);
      stream.next(m.back_left_light);
      stream.next(m.back_right_light);
      stream.next(m.back_position_light);
      stream.next(m.brake_light);
      stream.next(m.reverse_light);
      stream.next(m.back_work_light);
      stream.next(m.fuel_consumption);
      stream.next(m.planner_fsm_state);
      stream.next(m.lock_down_index);
      stream.next(m.pt_index);
      stream.next(m.wpt_x);
      stream.next(m.wpt_y);
      stream.next(m.control_fsm_state);
      stream.next(m.control_steer);
      stream.next(m.control_throttle_percentage);
      stream.next(m.control_xbr);
      stream.next(m.control_EPB);
      stream.next(m.control_gear);
      stream.next(m.control_hang);
      stream.next(m.engine_fault);
      stream.next(m.gear_fault);
      stream.next(m.EBS_fault);
      stream.next(m.EPS_fault);
      stream.next(m.EPB_fault);
      stream.next(m.tyre_pressure_leftfront);
      stream.next(m.tyre_pressure_rightfront);
      stream.next(m.front_left_temperature);
      stream.next(m.front_right_temperature);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct DisplayData_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::displaydata_msgs::DisplayData_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::displaydata_msgs::DisplayData_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "rtk_state: ";
    Printer<int32_t>::stream(s, indent + "  ", v.rtk_state);
    s << indent << "lat: ";
    Printer<double>::stream(s, indent + "  ", v.lat);
    s << indent << "lng: ";
    Printer<double>::stream(s, indent + "  ", v.lng);
    s << indent << "alt: ";
    Printer<double>::stream(s, indent + "  ", v.alt);
    s << indent << "x_enu: ";
    Printer<double>::stream(s, indent + "  ", v.x_enu);
    s << indent << "y_enu: ";
    Printer<double>::stream(s, indent + "  ", v.y_enu);
    s << indent << "z_enu: ";
    Printer<double>::stream(s, indent + "  ", v.z_enu);
    s << indent << "xy_std_enu: ";
    Printer<double>::stream(s, indent + "  ", v.xy_std_enu);
    s << indent << "heading_angle: ";
    Printer<double>::stream(s, indent + "  ", v.heading_angle);
    s << indent << "NumSate: ";
    Printer<int32_t>::stream(s, indent + "  ", v.NumSate);
    s << indent << "vx: ";
    Printer<double>::stream(s, indent + "  ", v.vx);
    s << indent << "auto_mode: ";
    Printer<int32_t>::stream(s, indent + "  ", v.auto_mode);
    s << indent << "current_steer: ";
    Printer<double>::stream(s, indent + "  ", v.current_steer);
    s << indent << "current_brake_pedal_pos: ";
    Printer<double>::stream(s, indent + "  ", v.current_brake_pedal_pos);
    s << indent << "current_throttle_percentage: ";
    Printer<int32_t>::stream(s, indent + "  ", v.current_throttle_percentage);
    s << indent << "current_retarder_torque_percentage: ";
    Printer<int32_t>::stream(s, indent + "  ", v.current_retarder_torque_percentage);
    s << indent << "current_EPB: ";
    Printer<int32_t>::stream(s, indent + "  ", v.current_EPB);
    s << indent << "current_gear: ";
    Printer<int32_t>::stream(s, indent + "  ", v.current_gear);
    s << indent << "current_hang_angle: ";
    Printer<int32_t>::stream(s, indent + "  ", v.current_hang_angle);
    s << indent << "air_pressure1: ";
    Printer<int32_t>::stream(s, indent + "  ", v.air_pressure1);
    s << indent << "air_pressure2: ";
    Printer<int32_t>::stream(s, indent + "  ", v.air_pressure2);
    s << indent << "left_light: ";
    Printer<int32_t>::stream(s, indent + "  ", v.left_light);
    s << indent << "right_light: ";
    Printer<int32_t>::stream(s, indent + "  ", v.right_light);
    s << indent << "near_light: ";
    Printer<int32_t>::stream(s, indent + "  ", v.near_light);
    s << indent << "far_light: ";
    Printer<int32_t>::stream(s, indent + "  ", v.far_light);
    s << indent << "air_beep: ";
    Printer<int32_t>::stream(s, indent + "  ", v.air_beep);
    s << indent << "top_warning_light: ";
    Printer<int32_t>::stream(s, indent + "  ", v.top_warning_light);
    s << indent << "front_fog_light: ";
    Printer<int32_t>::stream(s, indent + "  ", v.front_fog_light);
    s << indent << "front_work_light: ";
    Printer<int32_t>::stream(s, indent + "  ", v.front_work_light);
    s << indent << "side_light: ";
    Printer<int32_t>::stream(s, indent + "  ", v.side_light);
    s << indent << "position_light: ";
    Printer<int32_t>::stream(s, indent + "  ", v.position_light);
    s << indent << "back_left_light: ";
    Printer<int32_t>::stream(s, indent + "  ", v.back_left_light);
    s << indent << "back_right_light: ";
    Printer<int32_t>::stream(s, indent + "  ", v.back_right_light);
    s << indent << "back_position_light: ";
    Printer<int32_t>::stream(s, indent + "  ", v.back_position_light);
    s << indent << "brake_light: ";
    Printer<int32_t>::stream(s, indent + "  ", v.brake_light);
    s << indent << "reverse_light: ";
    Printer<int32_t>::stream(s, indent + "  ", v.reverse_light);
    s << indent << "back_work_light: ";
    Printer<int32_t>::stream(s, indent + "  ", v.back_work_light);
    s << indent << "fuel_consumption: ";
    Printer<int32_t>::stream(s, indent + "  ", v.fuel_consumption);
    s << indent << "planner_fsm_state: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.planner_fsm_state);
    s << indent << "lock_down_index: ";
    Printer<int32_t>::stream(s, indent + "  ", v.lock_down_index);
    s << indent << "pt_index[]" << std::endl;
    for (size_t i = 0; i < v.pt_index.size(); ++i)
    {
      s << indent << "  pt_index[" << i << "]: ";
      Printer<int32_t>::stream(s, indent + "  ", v.pt_index[i]);
    }
    s << indent << "wpt_x[]" << std::endl;
    for (size_t i = 0; i < v.wpt_x.size(); ++i)
    {
      s << indent << "  wpt_x[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.wpt_x[i]);
    }
    s << indent << "wpt_y[]" << std::endl;
    for (size_t i = 0; i < v.wpt_y.size(); ++i)
    {
      s << indent << "  wpt_y[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.wpt_y[i]);
    }
    s << indent << "control_fsm_state: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.control_fsm_state);
    s << indent << "control_steer: ";
    Printer<double>::stream(s, indent + "  ", v.control_steer);
    s << indent << "control_throttle_percentage: ";
    Printer<int32_t>::stream(s, indent + "  ", v.control_throttle_percentage);
    s << indent << "control_xbr: ";
    Printer<double>::stream(s, indent + "  ", v.control_xbr);
    s << indent << "control_EPB: ";
    Printer<int32_t>::stream(s, indent + "  ", v.control_EPB);
    s << indent << "control_gear: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.control_gear);
    s << indent << "control_hang: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.control_hang);
    s << indent << "engine_fault: ";
    Printer<int32_t>::stream(s, indent + "  ", v.engine_fault);
    s << indent << "gear_fault: ";
    Printer<int32_t>::stream(s, indent + "  ", v.gear_fault);
    s << indent << "EBS_fault: ";
    Printer<int32_t>::stream(s, indent + "  ", v.EBS_fault);
    s << indent << "EPS_fault: ";
    Printer<int32_t>::stream(s, indent + "  ", v.EPS_fault);
    s << indent << "EPB_fault: ";
    Printer<int32_t>::stream(s, indent + "  ", v.EPB_fault);
    s << indent << "tyre_pressure_leftfront: ";
    Printer<int32_t>::stream(s, indent + "  ", v.tyre_pressure_leftfront);
    s << indent << "tyre_pressure_rightfront: ";
    Printer<int32_t>::stream(s, indent + "  ", v.tyre_pressure_rightfront);
    s << indent << "front_left_temperature: ";
    Printer<double>::stream(s, indent + "  ", v.front_left_temperature);
    s << indent << "front_right_temperature: ";
    Printer<double>::stream(s, indent + "  ", v.front_right_temperature);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DISPLAYDATA_MSGS_MESSAGE_DISPLAYDATA_H
