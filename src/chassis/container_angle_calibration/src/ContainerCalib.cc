#include <cstdlib>
#include <ctime>
#include <math.h>
#include <ros/ros.h>
#include <std_msgs/Float32.h>

#include "kalman.h"
#include "localization_msgs/Pose.h"
#include "tli65_can_msgs/ContainerCalib.h"
#include "tli65_can_msgs/RxContainer.h"

#define RAD2DEG(x) ((x)*180. / M_PI)

using namespace std;

ros::Publisher pub_container_calib;
ros::Subscriber sub_pose;
ros::Subscriber sub_container;

double pose_pitch;
double pitch_degree;
double ego_speed;
double absolute_chassis_container_angle;
double rela_container_angle;
tli65_can_msgs::RxContainer container_msg;
tli65_can_msgs::ContainerCalib container_calib_msg;

namespace zone3 {
namespace container_angle_calibration {

void ProcPose(const localization_msgs::Pose msg) {
    pose_pitch = msg.pitch;
    pitch_degree = RAD2DEG(pose_pitch);

    ego_speed = msg.speed;
}

void ProcContainer(const tli65_can_msgs::RxContainer msg) {
    absolute_chassis_container_angle = msg.container_angle;

    container_calib_msg.pitch_degree = pitch_degree * (-1.0);

    if (absolute_chassis_container_angle <= 125) {
        container_calib_msg.k_before_carr_angle =
            absolute_chassis_container_angle - container_calib_msg.pitch_degree;
    } else {
        container_calib_msg.k_before_carr_angle =
            absolute_chassis_container_angle - 256 -
            container_calib_msg.pitch_degree;
    }

    KalmanInfo data;
    // set kalman parameters
    Init_KalmanInfo(&data, 1.0, 60.0);
    // set new meausurment
    double n = container_calib_msg.k_before_carr_angle;

    if (ego_speed <= 1) {
        container_calib_msg.relative_container_angle =
            container_calib_msg.k_before_carr_angle;
    } else {
        container_calib_msg.relative_container_angle = KalmanFilter(&data, n);
    }

    pub_container_calib.publish(container_calib_msg);
}

} // namespace container_angle_calibration
} // namespace zone3

int main(int argc, char **argv) {
    ros::init(argc, argv, "container_angle_calibration");

    ros::NodeHandle node;
    ros::NodeHandle priv_nh("~");

    string pose_topic;
    string container_topic;
    string container_calib_topic;

    // get topic name
    priv_nh.param<string>("pose_topic", pose_topic, "");
    priv_nh.param<string>("container_topic", container_topic, "");
    priv_nh.param<string>("container_calib_topic", container_calib_topic, "");

    // sub

    sub_pose = node.subscribe(pose_topic, 10,
                              zone3::container_angle_calibration::ProcPose);
    sub_container = node.subscribe(
        container_topic, 10, zone3::container_angle_calibration::ProcContainer);

    // pub
    pub_container_calib = node.advertise<tli65_can_msgs::ContainerCalib>(
        container_calib_topic, 10);

    ros::spin();

    return 0;
}
