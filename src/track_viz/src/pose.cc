#include "localization_msgs/Pose.h"
#include <ros/ros.h>
#include <visualization_msgs/Marker.h>

using namespace std;

ros::Subscriber sub_pose;
ros::Publisher pub_pose, pub_heading;

string pose_topic;
string pose_marker_topic;
string pose_heading_topic;

void DeletePose(void) {
    visualization_msgs::Marker point;
    point.header.frame_id = "enu";
    point.ns = "pose";
    point.id = 0;
    point.action = visualization_msgs::Marker::DELETEALL;
    pub_pose.publish(point);

    point.id = 1;
    pub_heading.publish(point);
}

void PubPose(const localization_msgs::Pose &msg) {
    visualization_msgs::Marker point;
    point.header.frame_id = "enu";
    point.ns = "pose";
    point.id = 0;
    point.type = visualization_msgs::Marker::SPHERE;
    point.action = visualization_msgs::Marker::ADD;
    point.scale.x = 0.5;
    point.scale.y = 0.5;
    point.scale.z = 0.5;
    point.color.r = 1.0;
    point.color.g = 1.0;
    point.color.a = 1.0;
    point.pose.position.x = msg.x_enu;
    point.pose.position.y = msg.y_enu;
    point.pose.position.z = msg.z_enu;
    point.pose.orientation.w = 1.0;
    pub_pose.publish(point);
}

void PubHeading(const localization_msgs::Pose &msg) {
    visualization_msgs::Marker point;
    point.header.frame_id = "enu";
    point.ns = "heading";
    point.id = 1;
    point.type = visualization_msgs::Marker::ARROW;
    point.action = visualization_msgs::Marker::ADD;

    geometry_msgs::Point arrow_start, arrow_end;
    arrow_start.x = msg.x_enu;
    arrow_start.y = msg.y_enu;
    arrow_start.z = msg.z_enu;
    arrow_end.x = arrow_start.x + 6.0 * sin(msg.yaw);
    arrow_end.y = arrow_start.y + 6.0 * cos(msg.yaw);
    arrow_end.z = msg.z_enu;
    point.points.push_back(arrow_start);
    point.points.push_back(arrow_end);

    point.pose.orientation.w = 1.0;
    point.scale.x = 0.3;
    point.scale.y = 1.0;
    point.scale.z = 0;
    point.color.r = 1.0;
    point.color.a = 1.0;
    pub_heading.publish(point);
}

void PoseCallback(const localization_msgs::Pose &msg) {
    DeletePose();
    PubHeading(msg);
    PubPose(msg);
}

int main(int argc, char **argv) {
    ros::init(argc, argv, "pose_rviz");
    ros::NodeHandle node;
    ros::NodeHandle priv_nh("~");

    // get topic name
    priv_nh.param<string>("pose_topic", pose_topic, "");
    priv_nh.param<string>("pose_marker_topic", pose_marker_topic, "");
    priv_nh.param<string>("pose_heading_topic", pose_heading_topic, "");
    // sub
    sub_pose = node.subscribe(pose_topic, 10, &PoseCallback);
    // pub
    pub_pose = node.advertise<visualization_msgs::Marker>(pose_marker_topic, 1);
    pub_heading =
        node.advertise<visualization_msgs::Marker>(pose_heading_topic, 1);

    ros::spin();

    return 0;
}