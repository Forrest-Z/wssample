#include "localization_msgs/Pose.h"
#include <ros/ros.h>
#include <tf/transform_broadcaster.h>

using namespace std;

string pose_topic;

void PoseCallback(const localization_msgs::Pose &msg) {
    static tf::TransformBroadcaster b;
    tf::Transform transform;
    // enu coordinate
    transform.setOrigin(tf::Vector3(msg.x_enu, msg.y_enu, 0.0));
    tf::Quaternion q;
    q.setRPY(0, 0, 0);
    transform.setRotation(q);
    b.sendTransform(
        tf::StampedTransform(transform, ros::Time::now(), "enu", "track_viz"));
}

int main(int argc, char **argv) {
    ros::init(argc, argv, "rviz_tf");
    ros::NodeHandle node;
    ros::NodeHandle priv_nh("~");

    // get topic name
    priv_nh.param<string>("pose_topic", pose_topic, "");

    // sub
    ros::Subscriber sub = node.subscribe(pose_topic, 10, &PoseCallback);

    ros::spin();

    return 0;
};