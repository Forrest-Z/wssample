#include "CanTxTli65.h"

using namespace std;

string pub_topic;
control_msgs::LowspeedControl msg;

ros::Publisher pub_hands;

// periodiclly send hands msg
void TimerCallback(const ros::TimerEvent &event) {
    // for Tli65
    msg.hands = "MF_READY";
    msg.EPB_active = 0;
    msg.retarder_active = 0;
    msg.gear_active = 0;
    msg.hang_active = 0;

    pub_hands.publish(msg);
}

int main(int argc, char **argv) {
    ros::init(argc, argv, "shake_hands");
    ros::NodeHandle node;
    ros::NodeHandle priv_nh("~");

    // load params
    priv_nh.param<string>("node_pub_topic", pub_topic, "default");

    // pub
    pub_hands = node.advertise<control_msgs::LowspeedControl>(pub_topic, 10);

    // timer
    ros::Timer timer = node.createTimer(ros::Duration(1.0), &TimerCallback);

    ros::spin();

    return 0;
}