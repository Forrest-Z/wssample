#include "kalman2D.h"
#include <ros/ros.h>

#include "kalman_msgs/Kinematics.h"
#include "localization_msgs/Pose.h"
#include "localization_msgs/SteerSpeedYawRate.h"
#include "tli65_can_msgs/RxSpeed.h"
#include "tli65_can_msgs/RxStHighspeed.h"

using namespace std;

ros::Subscriber sub_pose;
ros::Subscriber sub_RxSpeed;
ros::Subscriber sub_Highspeed;
ros::Subscriber sub_yawrate;
ros::Publisher pub_kinematics;
ros::Timer timer_10_;

double pose_speed;
double front_axle_speed;
double gear;
double ego_abs_speed;
double pose_yawrate;
double steer_yawrate;
float dq_speed;
float dq_yawrate;

kalman_msgs::Kinematics k_msg;

namespace zone3 {
namespace kalman_filter {

Kalman kalman_speed;
Kalman kalman_yawrate;

void ProcPose(const localization_msgs::Pose msg) {
    pose_speed = msg.speed;
    pose_yawrate = msg.yaw_rate;
}

void ProHighspeed(const tli65_can_msgs::RxStHighspeed msg) {
    gear = msg.gear;
    // ROS_INFO_STREAM(" gear1: " << gear << " gear2: " << msg.gear);
}

void Timer10Callback(const ros::TimerEvent &event) {
    dq_speed = pose_speed;
    dq_yawrate = pose_yawrate;
}

void ProcSpeed(const tli65_can_msgs::RxSpeed msg) {
    // front_axle_speed = msg.front_axle_speed;
    if (msg.front_axle_speed < 0.75) {
        front_axle_speed = pose_speed;
    } else {
        front_axle_speed = msg.front_axle_speed;
    }

    // Kalman kalman;
    kalman_speed.setRmeasure(0.1);

    ego_abs_speed =
        kalman_speed.getFilterValue(front_axle_speed, pose_speed, dq_speed);

    if (gear < 0) {
        k_msg.k_vx = ego_abs_speed * (-1);
        // ROS_INFO_STREAM("speed:" << ego_abs_speed << ",  k_speed:" <<
        // msg.k_vx << " gaer : " << gear );
    } else {
        k_msg.k_vx = ego_abs_speed;
        // ROS_INFO_STREAM(" gear1: " << gear   );
        // ROS_INFO_STREAM("speed2:" << ego_abs_speed << ",  k_speed2:"
        //                           << k_msg.k_vx << " gear2 : " << gear
        //                           << " front: " << front_axle_speed
        //                           << " pose_speed: " << pose_speed);
    }
    // msg.k_vx = ego_abs_speed;

    pub_kinematics.publish(k_msg);
}

void ProcSteerSpeedYawRate(const localization_msgs::SteerSpeedYawRate msg) {
    steer_yawrate = msg.yawrate;

    // Kalman kalman;
    kalman_yawrate.setRmeasure(0.1);

    k_msg.k_yawrate =
        kalman_yawrate.getFilterValue(steer_yawrate, pose_yawrate, dq_yawrate);

    // stamp
    k_msg.header.stamp = msg.header.stamp;
    pub_kinematics.publish(k_msg);
}

} // namespace kalman_filter
} // namespace zone3

int main(int argc, char **argv) {
    ros::init(argc, argv, "kalman_kinematics");
    ros::NodeHandle node;
    ros::NodeHandle priv_nh("~");

    string pose_topic;
    string st_highspeed_topic;
    string speed_topic;
    string steer_speed_yawrate_topic;
    string node_pub_topic;

    // get topic name
    priv_nh.param<string>("pose_topic", pose_topic, "");
    priv_nh.param<string>("st_highspeed_topic", st_highspeed_topic, "");
    priv_nh.param<string>("speed_topic", speed_topic, "");
    priv_nh.param<string>("steer_speed_yawrate_topic",
                          steer_speed_yawrate_topic, "");
    priv_nh.param<string>("node_pub_topic", node_pub_topic, "");

    // sub
    sub_pose = node.subscribe(pose_topic, 10, zone3::kalman_filter::ProcPose);
    sub_Highspeed = node.subscribe(st_highspeed_topic, 10,
                                   zone3::kalman_filter::ProHighspeed);
    sub_RxSpeed =
        node.subscribe(speed_topic, 10, zone3::kalman_filter::ProcSpeed);
    sub_yawrate = node.subscribe(steer_speed_yawrate_topic, 10,
                                 zone3::kalman_filter::ProcSteerSpeedYawRate);

    // pub
    pub_kinematics =
        node.advertise<kalman_msgs::Kinematics>(node_pub_topic, 10);

    timer_10_ = node.createTimer(ros::Duration(0.01),
                                 zone3::kalman_filter::Timer10Callback);

    ros::spin();

    return 0;
}
