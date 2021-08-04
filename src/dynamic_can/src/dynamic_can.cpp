#include "../../chassis/can_tx_tli65/src/CanTxTli65.h"
#include "control_msgs/HighspeedControl.h"
#include "control_msgs/LowspeedControl.h"
#include <dynamic_can/canConfig.h>
#include <dynamic_reconfigure/server.h>
#include <ros/ros.h>
#include <string.h>

ros::Publisher pub_lowspeed;
ros::Publisher pub_highspeed;

control_msgs::HighspeedControl msg_high;
control_msgs::LowspeedControl msg_low;

void callback(dynamic_can::canConfig &config, uint32_t level) {
    if (config.ignition == "00") {
        msg_high.ignition = 0;
    } else if (config.ignition == "01") {
        msg_high.ignition = 1;
    } else {
        msg_high.ignition = 17;
    }
    //
    // msg_high.ignition = config.ignition;//0
    // 3
    msg_high.throttle_active = config.throttle_active;
    // 4 //
    msg_high.throttle_precentage = config.throttle_precentage;
    // 6
    msg_high.XBR_active = config.XBR_active;
    // 5
    msg_high.XBR = config.XBR;
    // 2 //
    msg_high.steer_active = config.steer_active;
    //.5 //
    msg_high.steer = config.steer;
    // 2.5  //for TLi65
    msg_high.steer_angle_rate = config.steer_angle_rate;

    msg_low.hands = config.hands;
    msg_low.EPB_active = config.EPB_active;
    msg_low.EPB = config.EPB;
    msg_low.retarder_active = config.retarder_active;
    msg_low.retarder = config.retarder;
    msg_low.gear_active = config.gear_active;
    msg_low.max_forward_gear = config.max_forward_gear;
    msg_low.gear = config.gear_R82_N78_D68;
    msg_low.hang_active = config.hang_active;
    if (config.hang == "00") {
        msg_low.hang = 0;
    } else if (config.hang == "01") {
        msg_low.hang = 1;
    } else {
        msg_low.hang = 0x11;
    }

    msg_low.left = config.left;
    msg_low.right = config.right;
    msg_low.near = config.near;
    msg_low.far = config.far;
    msg_low.top_warn = config.top_warn;
    msg_low.air_beep = config.air_beep;
    msg_low.front_fog = config.front_fog;
    msg_low.front_work = config.front_work;
    msg_low.side = config.side;
    msg_low.position = config.position;
    msg_low.emergency = config.emergency;
    msg_low.brake = config.brake;
    msg_low.reverse = config.reverse;
    msg_low.back_work = config.back_work;
    msg_low.cooler = config.cooler;
    msg_low.axle_diff = config.axle_diff;
    msg_low.exhaust_brake = config.exhaust_brake;
}

void TimerCallback(const ros::TimerEvent &event) {
    pub_highspeed.publish(msg_high);
    pub_lowspeed.publish(msg_low);
}

int main(int argc, char **argv) {
    ros::init(argc, argv, "dynamic_can");
    ros::NodeHandle node;
    ros::NodeHandle priv_nh("~");

    pub_highspeed = node.advertise<control_msgs::HighspeedControl>(
        "/zone3/control/highspeed_command", 10);
    pub_lowspeed = node.advertise<control_msgs::LowspeedControl>(
        "/zone3/control/lowspeed_command", 10);

    ros::Timer timer1 = node.createTimer(ros::Duration(0.01), &TimerCallback);

    dynamic_reconfigure::Server<dynamic_can::canConfig> server;
    dynamic_reconfigure::Server<dynamic_can::canConfig>::CallbackType f;
    f = boost::bind(&callback, _1, _2);
    server.setCallback(f);

    ROS_INFO("Spinning node");
    ros::spin();

    return 0;
}
