#include <ros/ros.h>

#include "localization_msgs/Pose.h"
#include "localization_msgs/SteerSpeedYawRate.h"
#include "tli65_can_msgs/RxStHighspeed.h"

using namespace std;

ros::Publisher pub_yawrate;
ros::Subscriber sub_pose;
ros::Subscriber sub_st_highspeed;

double vx_ego;
double speed;
double base1;
localization_msgs::SteerSpeedYawRate yawrate_msg;

vector<vector<double>> interpolation_steer_wheel;
vector<double> tmp;

namespace zone3 {
namespace localization {

double interpolation_steer_wheel_angle(double x) {
    int size = interpolation_steer_wheel.size();
    for (auto i = 0; i < size - 1; i++) {
        if (x >= interpolation_steer_wheel[i][0] &&
            x < interpolation_steer_wheel[i + 1][0]) {
            return interpolation_steer_wheel[i][1] +
                   (x - interpolation_steer_wheel[i][0]) *
                       (interpolation_steer_wheel[i + 1][1] -
                        interpolation_steer_wheel[i][1]) /
                       (interpolation_steer_wheel[i + 1][0] -
                        interpolation_steer_wheel[i][0]);
        }
    }

    if (x < interpolation_steer_wheel[0][0]) {
        return interpolation_steer_wheel[0][1];
    } else {
        return interpolation_steer_wheel[size - 1][1];
    }
}

void ProcPose(const localization_msgs::Pose msg) {
    vx_ego = msg.vx_ego;
    speed = msg.speed;
}

void ProcStHighspeed(const tli65_can_msgs::RxStHighspeed msg) {
    yawrate_msg.header.frame_id = "gnss";
    yawrate_msg.header.stamp = msg.header.stamp;

    yawrate_msg.yawrate =
        speed / base1 *
        tan(zone3::localization::interpolation_steer_wheel_angle(
                msg.steer_angle) *
            M_PI / 180) *
        vx_ego / (fabs(vx_ego) + 1e-6);
    pub_yawrate.publish(yawrate_msg);
}

} // namespace localization
} // namespace zone3

int main(int argc, char **argv) {
    ros::init(argc, argv, "steer_speed_yawrate");
    ros::NodeHandle node;
    ros::NodeHandle priv_nh("~");

    string pose_topic;
    string st_highspeed_topic;
    string node_pub_topic;

    // load params
    node.param<double>("/truck/axle_base1", base1, 0.);
    node.getParam("/truck/steer_wheel_angle", tmp);
    int size = tmp.size() / 2;
    for (int i = 0; i < size; i++) {
        vector<double> data;
        data.push_back(tmp[0 + 2 * i]);
        data.push_back(tmp[1 + 2 * i]);
        interpolation_steer_wheel.push_back(data);
    }

    // get topic name
    priv_nh.param<string>("pose_topic", pose_topic, "");
    priv_nh.param<string>("st_highspeed_topic", st_highspeed_topic, "");
    priv_nh.param<string>("node_pub_topic", node_pub_topic, "");

    // sub
    sub_pose = node.subscribe(pose_topic, 10, zone3::localization::ProcPose);
    sub_st_highspeed = node.subscribe(st_highspeed_topic, 10,
                                      zone3::localization::ProcStHighspeed);

    // pub
    pub_yawrate = node.advertise<localization_msgs::SteerSpeedYawRate>(
        node_pub_topic, 10);

    ros::spin();

    return 0;
}
