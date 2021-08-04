#include "CanTxTli65.h"

ros::Publisher pub_highspeed;
ros::Publisher pub_lowspeed;

control_msgs::HighspeedControl msg_Highspeed;
control_msgs::LowspeedControl msg_Lowspeed;

void TimerCallback_highspeed(const ros::TimerEvent &event) {
    // 0 : engine stop, 1 : engine start, 0x11 : null
    msg_Highspeed.ignition = 0x11;
    msg_Highspeed.throttle_active = 0;
    msg_Highspeed.throttle_precentage = 10;

    msg_Highspeed.XBR_active = 0;
    msg_Highspeed.XBR = -2;

    msg_Highspeed.steer_active = 1;
    // for Tli65
    msg_Highspeed.steer_angle_rate = 80;
    // for Tli90 front wheel angle
    // msg.steer_mode = 0x01;
    // - : left, + : right, max : 30
    msg_Highspeed.steer = 0;

    pub_highspeed.publish(msg_Highspeed);
}

void TimerCallback_lowspeed(const ros::TimerEvent &event) {
    msg_Lowspeed.hands = "MF_READY";

    msg_Lowspeed.EPB_active = 0;
    // 0 : brake, 1 : loose
    msg_Lowspeed.EPB = 0;

    msg_Lowspeed.retarder_active = 0;
    // percent
    msg_Lowspeed.retarder = -10;

    msg_Lowspeed.gear_active = 0;
    msg_Lowspeed.max_forward_gear = 6;
    // 0x40 : null, 0x52 : reverse, 0x4e : N, 0x44 : D
    msg_Lowspeed.gear = 0x4e;

    msg_Lowspeed.hang_active = 0;
    // 0x00 : down, 0x01 : up, 0x11 : null
    msg_Lowspeed.hang = 0x11;

    // light
    msg_Lowspeed.left = 1;
    msg_Lowspeed.right = 0;
    msg_Lowspeed.near = 0;
    msg_Lowspeed.far = 0;

    msg_Lowspeed.top_warn = 2;
    msg_Lowspeed.air_beep = 0;
    msg_Lowspeed.front_fog = 0;
    msg_Lowspeed.front_work = 2;

    msg_Lowspeed.side = 0;
    msg_Lowspeed.position = 0;
    msg_Lowspeed.emergency = 2;
    msg_Lowspeed.brake = 0;
    msg_Lowspeed.reverse = 0;
    msg_Lowspeed.back_work = 3;

    msg_Lowspeed.cooler = 3;
    msg_Lowspeed.axle_diff = 0;

    pub_lowspeed.publish(msg_Lowspeed);
}

int main(int argc, char **argv) {
    ros::init(argc, argv, "test_can_tx");
    ros::NodeHandle node;
    ros::NodeHandle priv_nh("~");

    pub_highspeed = node.advertise<control_msgs::HighspeedControl>(
        "/zone3/control/highspeed_command", 10);
    pub_lowspeed = node.advertise<control_msgs::LowspeedControl>(
        "/zone3/control/lowspeed_command", 10);

    // Timer for Highspeed&Lowspeed
    ros::Timer timer1 =
        node.createTimer(ros::Duration(0.1), &TimerCallback_highspeed);
    ros::Timer timer2 =
        node.createTimer(ros::Duration(0.1), &TimerCallback_lowspeed);

    ros::spin();

    return 0;
}