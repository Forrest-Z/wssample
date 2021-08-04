#include "planner_msgs/WayPoints.h"
#include <ros/ros.h>
#include <visualization_msgs/Marker.h>
#include <visualization_msgs/MarkerArray.h>

using namespace std;

ros::Subscriber sub_waypoints;
ros::Publisher pub_waypoints_markers;

string waypoints_topic;
string pub_markers_topic;

visualization_msgs::MarkerArray waypoints_marker;

void DeleteWaypoints(void) {
    visualization_msgs::Marker point;
    point.header.frame_id = "enu";
    point.ns = "waypoints";
    point.id = 0;
    point.action = visualization_msgs::Marker::DELETEALL;
    waypoints_marker.markers.push_back(point);

    pub_waypoints_markers.publish(waypoints_marker);
}

void PubWaypoints(const planner_msgs::WayPoints &msg) {
    size_t icount = msg.points.size();
    for (size_t i = 0; i < icount; i++) {
        visualization_msgs::Marker point;
        point.header.frame_id = "enu";
        point.ns = "waypoints";
        point.id = i;
        point.type = visualization_msgs::Marker::SPHERE;
        point.action = visualization_msgs::Marker::ADD;
        point.scale.x = 1.8;
        point.scale.y = 1.8;
        point.scale.z = 1.8;
        point.color.g = 1.0;
        point.color.a = 1.0;
        point.pose.position.x = msg.points[i].x;
        point.pose.position.y = msg.points[i].y;
        point.pose.position.z = msg.points[i].z;
        point.pose.orientation.w = 1.0;
        waypoints_marker.markers.push_back(point);
    }
    pub_waypoints_markers.publish(waypoints_marker);
}

void WaypointsCallback(const planner_msgs::WayPoints &msg) {
    waypoints_marker.markers.clear();
    DeleteWaypoints();
    waypoints_marker.markers.clear();
    PubWaypoints(msg);
}

int main(int argc, char **argv) {
    ros::init(argc, argv, "waypoints_rviz");
    ros::NodeHandle node;
    ros::NodeHandle priv_nh("~");

    // get topic name
    priv_nh.param<string>("waypoints_topic", waypoints_topic, "");
    priv_nh.param<string>("waypoints_marker_topic", pub_markers_topic, "");

    // sub
    sub_waypoints = node.subscribe(waypoints_topic, 10, &WaypointsCallback);
    // pub
    pub_waypoints_markers =
        node.advertise<visualization_msgs::MarkerArray>(pub_markers_topic, 1);

    ros::spin();

    return 0;
}