#include "control_msgs/HighspeedControl.h"
#include "localization_msgs/Pose.h"
#include "tli65_can_msgs/RxStHighspeed.h"
#include <eigen3/Eigen/Dense>
#include <ros/ros.h>
#include <visualization_msgs/Marker.h>

using namespace std;
using namespace Eigen;

ros::Subscriber sub_pose;
ros::Subscriber sub_control;
ros::Subscriber sub_st;
ros::Publisher pub_ego_box;

string pose_topic;
string ego_box_marker_topic;
string control_steer;
string st_steer;

double truck_length;
double truck_width;
double truck_height;
double axle_base1;
double front_axle_to_front;
double control_steer_value;
double st_steer_value;
double steer_to_wheel_ratio;
Matrix4d ego_to_enu(Matrix4d::Identity());
Quaterniond imu_coord_enu_coord;
Matrix3d truck_body_rotation_matrix_enu;
Vector4d p1_4d, p2_4d, p3_4d, p4_4d, p5_4d, p6_4d, p7_4d, p8_4d, p_4d;
Vector4d tp1, tp2, tp3, tp4, tp5, tp6, tp7, tp8, tp;

void DeleteEgoBox(void) {
    visualization_msgs::Marker point;
    point.header.frame_id = "enu";
    point.ns = "ego_box";
    point.id = 0;
    point.action = visualization_msgs::Marker::DELETEALL;
    pub_ego_box.publish(point);
}

void PubEgoBox(const localization_msgs::Pose &msg) {
    // ego bbox
    visualization_msgs::Marker lines;
    lines.header.frame_id = "enu";
    lines.ns = "ego_box";
    lines.id = 0;
    lines.type = visualization_msgs::Marker::LINE_LIST;
    lines.action = visualization_msgs::Marker::ADD;
    lines.scale.x = 0.1;
    lines.color.r = 1.0;
    lines.color.g = 1.0;
    lines.color.b = 1.0;
    lines.color.a = 1.0;
    lines.pose.orientation.w = 1.0;

    // rotation matrix
    Quaterniond q(msg.orientation.w, msg.orientation.x, msg.orientation.y,
                  msg.orientation.z);
    truck_body_rotation_matrix_enu =
        (imu_coord_enu_coord * q).toRotationMatrix();
    ego_to_enu.block<3, 3>(0, 0) = truck_body_rotation_matrix_enu;
    ego_to_enu.block<3, 1>(0, 3) = Vector3d(msg.x_enu, msg.y_enu, msg.z_enu);

    tp1 = ego_to_enu * p1_4d;
    tp2 = ego_to_enu * p2_4d;
    tp3 = ego_to_enu * p3_4d;
    tp4 = ego_to_enu * p4_4d;
    tp5 = ego_to_enu * p5_4d;
    tp6 = ego_to_enu * p6_4d;
    tp7 = ego_to_enu * p7_4d;
    tp8 = ego_to_enu * p8_4d;

    geometry_msgs::Point p1;
    p1.x = tp1(0);
    p1.y = tp1(1);
    p1.z = tp1(2);
    geometry_msgs::Point p2;
    p2.x = tp2(0);
    p2.y = tp2(1);
    p2.z = tp2(2);
    geometry_msgs::Point p3;
    p3.x = tp3(0);
    p3.y = tp3(1);
    p3.z = tp3(2);
    geometry_msgs::Point p4;
    p4.x = tp4(0);
    p4.y = tp4(1);
    p4.z = tp4(2);
    geometry_msgs::Point p5;
    p5.x = tp5(0);
    p5.y = tp5(1);
    p5.z = tp5(2);
    geometry_msgs::Point p6;
    p6.x = tp6(0);
    p6.y = tp6(1);
    p6.z = tp6(2);
    geometry_msgs::Point p7;
    p7.x = tp7(0);
    p7.y = tp7(1);
    p7.z = tp7(2);
    geometry_msgs::Point p8;
    p8.x = tp8(0);
    p8.y = tp8(1);
    p8.z = tp8(2);
    lines.points.push_back(p1);
    lines.points.push_back(p2);
    lines.points.push_back(p2);
    lines.points.push_back(p3);
    lines.points.push_back(p3);
    lines.points.push_back(p4);
    lines.points.push_back(p4);
    lines.points.push_back(p1);
    lines.points.push_back(p5);
    lines.points.push_back(p6);
    lines.points.push_back(p6);
    lines.points.push_back(p7);
    lines.points.push_back(p7);
    lines.points.push_back(p8);
    lines.points.push_back(p8);
    lines.points.push_back(p5);
    lines.points.push_back(p1);
    lines.points.push_back(p5);
    lines.points.push_back(p2);
    lines.points.push_back(p6);
    lines.points.push_back(p3);
    lines.points.push_back(p7);
    lines.points.push_back(p4);
    lines.points.push_back(p8);
    pub_ego_box.publish(lines);

    // control steer
    visualization_msgs::Marker point;
    point.header.frame_id = "enu";
    point.ns = "ego_box";
    point.id = 1;
    point.type = visualization_msgs::Marker::ARROW;
    point.action = visualization_msgs::Marker::ADD;

    tp = ego_to_enu * p_4d;

    geometry_msgs::Point arrow_start, arrow_end;
    arrow_start.x = tp(0);
    arrow_start.y = tp(1);
    arrow_start.z = tp(2);
    arrow_end.x = arrow_start.x +
                  2.0 * sin(msg.yaw + control_steer_value /
                                          steer_to_wheel_ratio * M_PI / 180);
    arrow_end.y = arrow_start.y +
                  2.0 * cos(msg.yaw + control_steer_value /
                                          steer_to_wheel_ratio * M_PI / 180);
    arrow_end.z = arrow_start.z;
    point.points.push_back(arrow_start);
    point.points.push_back(arrow_end);

    point.pose.orientation.w = 1.0;
    point.scale.x = 0.2;
    point.scale.y = 0.6;
    point.scale.z = 0;
    point.color.g = 1.0;
    point.color.a = 1.0;
    pub_ego_box.publish(point);

    // state steer
    point.id = 2;
    arrow_end.x =
        arrow_start.x +
        2.0 * sin(msg.yaw + st_steer_value / steer_to_wheel_ratio * M_PI / 180);
    arrow_end.y =
        arrow_start.y +
        2.0 * cos(msg.yaw + st_steer_value / steer_to_wheel_ratio * M_PI / 180);
    point.points.clear();
    point.points.push_back(arrow_start);
    point.points.push_back(arrow_end);
    point.color.a = 0.6;
    pub_ego_box.publish(point);
}

void PoseCallback(const localization_msgs::Pose &msg) {
    DeleteEgoBox();
    PubEgoBox(msg);
}

void ControlCallback(const control_msgs::HighspeedControl &msg) {
    control_steer_value = msg.steer;
}

void StCallback(const tli65_can_msgs::RxStHighspeed &msg) {
    st_steer_value = msg.steer_angle;
}

int main(int argc, char **argv) {
    ros::init(argc, argv, "ego_box_rviz");
    ros::NodeHandle node;
    ros::NodeHandle priv_nh("~");

    // load params
    node.param<double>("/truck/truck_length", truck_length, 1.);
    node.param<double>("/truck/truck_width", truck_width, 1.);
    node.param<double>("/truck/truck_height", truck_height, 1.);
    node.param<double>("/truck/axle_base1", axle_base1, 1.);
    node.param<double>("/truck/front_axle_to_front", front_axle_to_front, 1.);
    node.param<double>("/truck/steer_to_wheel_ratio", steer_to_wheel_ratio, 1.);
    // get topic name
    priv_nh.param<string>("pose_topic", pose_topic, "");
    priv_nh.param<string>("control_steer", control_steer, "");
    priv_nh.param<string>("st_steer", st_steer, "");
    priv_nh.param<string>("ego_box_marker_topic", ego_box_marker_topic, "");

    // sub
    sub_pose = node.subscribe(pose_topic, 10, &PoseCallback);
    sub_control = node.subscribe(control_steer, 10, &ControlCallback);
    sub_st = node.subscribe(st_steer, 10, &StCallback);
    // pub
    pub_ego_box =
        node.advertise<visualization_msgs::Marker>(ego_box_marker_topic, 10);

    Quaterniond q_z(cos(M_PI_4), 0, 0, sin(M_PI_4));
    Quaterniond q_x(0, -1, 0, 0);
    imu_coord_enu_coord = q_z * q_x;

    Vector4d p1(axle_base1 + front_axle_to_front, -truck_width / 2, 0, 1);
    Vector4d p2(axle_base1 + front_axle_to_front, truck_width / 2, 0, 1);
    Vector4d p3(axle_base1 + front_axle_to_front - truck_length,
                truck_width / 2, 0, 1);
    Vector4d p4(axle_base1 + front_axle_to_front - truck_length,
                -truck_width / 2, 0, 1);
    Vector4d p5(axle_base1 + front_axle_to_front, -truck_width / 2,
                -truck_height, 1);
    Vector4d p6(axle_base1 + front_axle_to_front, truck_width / 2,
                -truck_height, 1);
    Vector4d p7(axle_base1 + front_axle_to_front - truck_length,
                truck_width / 2, -truck_height, 1);
    Vector4d p8(axle_base1 + front_axle_to_front - truck_length,
                -truck_width / 2, -truck_height, 1);
    Vector4d p(axle_base1 + front_axle_to_front, 0, 0, 1);
    p1_4d = p1;
    p2_4d = p2;
    p3_4d = p3;
    p4_4d = p4;
    p5_4d = p5;
    p6_4d = p6;
    p7_4d = p7;
    p8_4d = p8;
    p_4d = p;

    ros::spin();

    return 0;
}