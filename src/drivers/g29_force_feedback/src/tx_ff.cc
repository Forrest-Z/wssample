#include <fcntl.h>
#include <linux/input.h>
#include <math.h>
#include <ros/ros.h>
#include <sys/ioctl.h>
#include <unistd.h>

#include "g29_force_feedback/ForceFeedback.h"

ros::Publisher pub_forcefeedback;

void TimerCallback1(const ros::TimerEvent &event) {
    g29_force_feedback::ForceFeedback msg;
    msg.angle = 0;
    msg.force = 0.5;
    msg.pid_mode = true; 
    pub_forcefeedback.publish(msg);
}

int main(int argc, char **argv) {
    ros::init(argc, argv, "tx_ff");
    ros::NodeHandle node;
    ros::NodeHandle priv_nh("~");

    pub_forcefeedback= node.advertise<g29_force_feedback::ForceFeedback>(
        "/ff_target", 10); 
    ros::Timer timer1 = node.createTimer(ros::Duration(0.1), &TimerCallback1);
    ros::spin();

    return 0;
}