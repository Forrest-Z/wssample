#include "g29_socket_msgs/G29Socket.h"
#include "sensor_msgs/Joy.h"
#include "teledrive_msgs/Tli65Teledrive.h"
#include "frontend_msgs/Frontend.h"
#include "tli65_can_msgs/RxStLowspeed.h"
#include <ros/ros.h>

using namespace std;

string local_teledrive_topic;
string socket_teledrive_topic;
string teledrive_topic;
string state_lowspeed_topic_;
string frontend_control_topic_;
string frontend_display_topic_;
ros::Subscriber joy_sub;
ros::Subscriber socket_sub;
ros::Subscriber TL_lights_sub;
ros::Subscriber frontend_lights_sub;
ros::Publisher pub_teledrive;
ros::Publisher pub_frontend_lights;
teledrive_msgs::Tli65Teledrive teledrive_msg1;
teledrive_msgs::Tli65Teledrive teledrive_msg2;
frontend_msgs::Frontend frontend_msg;

namespace zone3 {
namespace teledrive {

// todo : lights
void g29LocalCallback(const sensor_msgs::Joy::ConstPtr &msg) {
    // string
    teledrive_msg1.control_type = "teledrive";

    // g29 steer throttle xbr
    double steer = -msg->axes[0];
    double throttle_pedal = msg->axes[2];
    double xbr = msg->axes[3];
    //steer: degree
    teledrive_msg1.steer = steer * 2.5 * 360;
    teledrive_msg1.xbr = -2.5 * xbr - 2.5;

    // gear
    // circle
    bool gear_null = msg->buttons[2];
    // triangle
    bool gear_drive = msg->buttons[3];
    // X
    bool gear_reverse = msg->buttons[0];
    // square
    // bool gear_park = msg->buttons[1];

    if (gear_drive == 1)
        teledrive_msg1.gear = 0x44;
    else if (gear_null == 1)
        teledrive_msg1.gear = 0x4E;
    else if (gear_reverse == 1)
        teledrive_msg1.gear = 0x52;
    // else if (gear_park == 1)
    //     teledrive_msg1.gear = 0x40;

    // epb
    // enter
    bool epbon_flag = msg->buttons[23];
    // R3
    bool epbdown_flag = msg->buttons[10];
    if (epbon_flag == 1)
        teledrive_msg1.epb = 0x00;
    else if (epbdown_flag == 1)
        teledrive_msg1.epb = 0x01;

    // hang up
    //+
    bool hangup_flag = msg->buttons[19];
    //-
    bool hangdown_flag = msg->buttons[20];

    if (hangup_flag == 1)
        teledrive_msg1.hang = 0x01;
    else if (hangdown_flag == 1)
        teledrive_msg1.hang = 0x00;
    else
        teledrive_msg1.hang = 0x11;

    // D or R protect
    if (teledrive_msg1.gear == 0x44 || teledrive_msg1.gear == 0x52) {

        teledrive_msg1.throttle_pedal = 50 * throttle_pedal + 50;
        teledrive_msg1.hang = 0x11;

    } else if (teledrive_msg1.gear == 0x4E) {
        teledrive_msg1.throttle_pedal = 0;
    }

    //air beep
    teledrive_msg1.air_beep = msg->buttons[24];

    //lights
    bool left_lighton_flag = msg->buttons[5];
    bool right_lighton_flag = msg->buttons[4];
    // enter clockwise
    bool light_down_flag = msg->buttons[21];
    if (left_lighton_flag == 1 && right_lighton_flag !=1){
        teledrive_msg1.left_light = 1;
        teledrive_msg1.right_light = 0;
    } 
    if (right_lighton_flag ==1 && left_lighton_flag != 1) {
        teledrive_msg1.left_light = 0;
        teledrive_msg1.right_light = 1;
    }
    if(light_down_flag == 1){
        teledrive_msg1.left_light = 0;
        teledrive_msg1.right_light = 0;
    } 
    
    //L3
    bool near_lighton_flag = msg->buttons[11];
    //L2
     bool far_lighton_flag = msg->buttons[7];
    // enter anticlockwise
    bool light2_down_flag = msg->buttons[22];

    if (near_lighton_flag == 1 && far_lighton_flag !=1){
        teledrive_msg1.near_light = 1;
        teledrive_msg1.far_light = 0;
    } 
    if (far_lighton_flag ==1 && near_lighton_flag !=1) {
        teledrive_msg1.near_light = 0;
        teledrive_msg1.far_light = 1;
    }
    if (light2_down_flag == 1){
        teledrive_msg1.near_light = 0;
        teledrive_msg1.far_light = 0;
    } 
}

void ProcStFrontend(const frontend_msgs::Frontend &msg) {
    //frontend 2 control
    teledrive_msg1.top_warning_light = msg.TL_top_warning_light;
    teledrive_msg1.front_fog_light = msg.TL_front_fog_light;
    teledrive_msg1.front_work_light = msg.TL_front_work_light;
    teledrive_msg1.side_light = msg.TL_side_light;
    teledrive_msg1.position_light = msg.TL_position_light;
    teledrive_msg1.emergency_light = msg.emergency_light;
    teledrive_msg1.brake_light = msg.TL_brake_light;
    teledrive_msg1.reverse_light = msg.TL_reverse_light;
    teledrive_msg1.back_work_light = msg.TL_back_work_light;
}

void ProcStLowspeed(const tli65_can_msgs::RxStLowspeed &msg) {
    //TL vehicle 2 frontend
    frontend_msg.TL_left_light = msg.left_light;
    frontend_msg.TL_right_light = msg.right_light;
    frontend_msg.TL_near_light = msg.near_light;
    frontend_msg.TL_far_light = msg.far_light;

    frontend_msg.TL_top_warning_light = msg.top_warning_light;
    frontend_msg.TL_front_fog_light = msg.front_fog_light;
    frontend_msg.TL_front_work_light = msg.front_work_light;
    frontend_msg.TL_side_light = msg.side_light;
    // frontend_msg.TL_position_light = msg.position_light;
    // frontend_msg.TL_back_position_light = msg.back_position_light;

    if (msg.position_light ==1 && msg.back_position_light ==1){
        frontend_msg.TL_position_light =1;
    }

    // frontend_msg.TL_back_left_light = msg.back_left_light;
    // frontend_msg.TL_back_right_light = msg.back_right_light;

    if (msg.back_left_light ==1 && msg.back_right_light ==1 && msg.left_light ==1 && msg.right_light ==1){
        frontend_msg.emergency_light =1;
    }
    
    frontend_msg.TL_brake_light = msg.brake_light;
    frontend_msg.TL_reverse_light = msg.reverse_light;
    frontend_msg.TL_back_work_light = msg.back_work_light;
}

// todo : lights
void g29SocketCallback(const g29_socket_msgs::G29Socket::ConstPtr &msg) {
    // string
    teledrive_msg2.control_type = "teledrive";

    // g29 steer throttle xbr
    double steer = -msg->axes[0];
    double throttle_pedal = msg->axes[2];
    double xbr = msg->axes[3];
    // degree
    teledrive_msg2.steer = steer * 2.5 * 360;
    teledrive_msg2.xbr = -2.5 * xbr - 2.5;

    // gear
    // circle
    bool gear_null = msg->buttons[2];
    // triangle
    bool gear_drive = msg->buttons[3];
    // X
    bool gear_reverse = msg->buttons[0];
    // square
    // bool gear_park = msg->buttons[1];

    if (gear_drive == 1)
        teledrive_msg2.gear = 0x44;
    else if (gear_null == 1)
        teledrive_msg2.gear = 0x4E;
    else if (gear_reverse == 1)
        teledrive_msg2.gear = 0x52;
    // else if (gear_park == 1)
    //     teledrive_msg2.gear = 0x40;

    // epb
    // enter
    bool epbon_flag = msg->buttons[23];
    // R3
    bool epbdown_flag = msg->buttons[10];
    if (epbon_flag == 1)
        teledrive_msg2.epb = 0x00;
    else if (epbdown_flag == 1)
        teledrive_msg2.epb = 0x01;

    // hang up
    //+
    bool hangup_flag = msg->buttons[19];
    //-
    bool hangdown_flag = msg->buttons[20];

    if (hangup_flag == 1)
        teledrive_msg2.hang = 0x01;
    else if (hangdown_flag == 1)
        teledrive_msg2.hang = 0x00;
    else
        teledrive_msg2.hang = 0x11;

    // D or R
    if (teledrive_msg2.gear == 0x44 || teledrive_msg2.gear == 0x52) {

        teledrive_msg2.throttle_pedal = 50 * throttle_pedal + 50;
        teledrive_msg2.hang = 0x11;

    } else if (teledrive_msg2.gear == 0x4E) {
        teledrive_msg2.throttle_pedal = 0;
    }
       
    //air beep
    teledrive_msg2.air_beep = msg->buttons[24];

    //lights
    bool left_lighton_flag = msg->buttons[5];
    bool right_lighton_flag = msg->buttons[4];
    // enter clockwise
    bool light_down_flag = msg->buttons[21];
    if (left_lighton_flag == 1 && right_lighton_flag !=1){
        teledrive_msg2.left_light = 1;
        teledrive_msg2.right_light = 0;
    } 
    if (right_lighton_flag ==1 && left_lighton_flag != 1) {
        teledrive_msg2.left_light = 0;
        teledrive_msg2.right_light = 1;
    }
    if(light_down_flag == 1){
        teledrive_msg2.left_light = 0;
        teledrive_msg2.right_light = 0;
    } 
    
    //L3
    bool near_lighton_flag = msg->buttons[11];
    //L2
     bool far_lighton_flag = msg->buttons[7];
    // enter anticlockwise
    bool light2_down_flag = msg->buttons[22];

    if (near_lighton_flag == 1 && far_lighton_flag !=1){
        teledrive_msg2.near_light = 1;
        teledrive_msg2.far_light = 0;
    } 
    if (far_lighton_flag ==1 && near_lighton_flag !=1) {
        teledrive_msg2.near_light = 0;
        teledrive_msg2.far_light = 1;
    }
    if (light2_down_flag == 1){
        teledrive_msg2.near_light = 0;
        teledrive_msg2.far_light = 0;
    } 
}


void Timeout(const ros::TimerEvent &event) {
    // pub
    pub_teledrive.publish(teledrive_msg1);
    pub_teledrive.publish(teledrive_msg2);
    pub_frontend_lights.publish(frontend_msg);
}

} // namespace teledrive
} // namespace zone3

int main(int argc, char **argv) {
    if (ros::console::set_logger_level(ROSCONSOLE_DEFAULT_NAME,
                                       ros::console::levels::Debug)) {
        ros::console::notifyLoggerLevelsChanged();
    }

    ros::init(argc, argv, "teledrive");
    ros::NodeHandle node("");
    ros::NodeHandle priv_nh("~");

    // get topic name
    priv_nh.param<string>("local_teledrive_topic", local_teledrive_topic, "");
    priv_nh.param<string>("socket_teledrive_topic", socket_teledrive_topic, "");
    priv_nh.param<string>("teledrive_command", teledrive_topic, "");
    priv_nh.param<string>("state_lowspeed_topic", state_lowspeed_topic_, "");
    priv_nh.param<string>("frontend_control_topic", frontend_control_topic_, "");
    priv_nh.param<string>("frontend_display_topic", frontend_display_topic_, "");

    // sub
    joy_sub = node.subscribe(local_teledrive_topic, 10,
                             &zone3::teledrive::g29LocalCallback);
    socket_sub = node.subscribe(socket_teledrive_topic, 10,
                                &zone3::teledrive::g29SocketCallback);
    TL_lights_sub = node.subscribe(state_lowspeed_topic_, 10,
                                &zone3::teledrive::ProcStLowspeed);
    frontend_lights_sub = node.subscribe(frontend_control_topic_, 10,
                                &zone3::teledrive::ProcStFrontend);


    // pub
    pub_teledrive =
        node.advertise<teledrive_msgs::Tli65Teledrive>(teledrive_topic, 2);
    pub_frontend_lights =
        node.advertise<frontend_msgs::Frontend>(frontend_display_topic_, 2);

    // 30ms
    ros::Timer timer;
    timer = node.createTimer(ros::Duration(0.03), &zone3::teledrive::Timeout);

    // init
    teledrive_msg1.control_type = "init";
    teledrive_msg2.control_type = "init";

    ros::spin();

    return 0;
}
