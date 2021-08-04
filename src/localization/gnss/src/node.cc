#include <Eigen/Dense>
#include <Eigen/Eigen>
#include <Eigen/Eigenvalues>
#include <Eigen/Geometry>
#include <iostream>
#include <math.h>
#include <ros/ros.h>

#include "diagnostic_msgs/DiagnosticStatus.h"
#include "geometry_msgs/Twist.h"
#include "localization_msgs/Pose.h"
#include "sensor_msgs/Imu.h"
#include "sensor_msgs/NavSatFix.h"

#define RAD2DEG(x) ((x)*180. / M_PI)
#define DEG2RAD(x) ((x)*M_PI / 180.)

using namespace std;
using namespace Eigen;

ros::Publisher pub_pose;
ros::Subscriber sub_NavSatFix;
ros::Subscriber sub_imu;
ros::Subscriber sub_twist;
ros::Subscriber sub_systemstatus;
ros::Subscriber sub_filterstatus;

vector<double> imu_ego_origin_q, imu_ego_origin_translation;
Quaterniond truck_body_q_imu_coord, truck_body_q_enu_coord;
Quaterniond imu_coord_enu_coord, transf;
vector<double> v1, v2, v3;
double tmp_enu[3];

// string ENU_tag = "wan lin C";
// double Enu_base[3] = {40.033949910963166, 116.29841197941587, 50};
// string ENU_tag = "tong li";
// double Enu_base[3] = {34.3112081822, 108.761270122, 351};
string ENU_tag = "ordos";
double Enu_base[3] = {39.7976858595, 110.274013484, 1411};

double *p0;

namespace zone3 {
namespace localization {

localization_msgs::Pose pose;

double *wgs84ToEcef(double lat, double lon, double h) {
    double a = 6378137;
    double b = 6356752.3142;
    double f = (a - b) / a;
    double e_sq = f * (2 - f);
    double lamb = DEG2RAD(lat);
    double phi = DEG2RAD(lon);
    double s = sin(lamb);
    double N = a / sqrt(1 - e_sq * s * s);

    double sin_lambda = sin(lamb);
    double cos_lambda = cos(lamb);
    double sin_phi = sin(phi);
    double cos_phi = cos(phi);

    double x = (h + N) * cos_lambda * cos_phi;
    double y = (h + N) * cos_lambda * sin_phi;
    double z = (h + (1 - e_sq) * N) * sin_lambda;
    static double p[3];
    p[0] = x;
    p[1] = y;
    p[2] = z;
    return p;
}

double *ecefToEnu(double *x, double lat, double lng, double height) {
    double a = 6378137;
    double b = 6356752.3142;
    double f = (a - b) / a;
    double e_sq = f * (2 - f);
    double lamb = DEG2RAD(lat);
    double phi = DEG2RAD(lng);
    double s = sin(lamb);
    double N = a / sqrt(1 - e_sq * s * s);

    double sin_lambda = sin(lamb);
    double cos_lambda = cos(lamb);

    double sin_phi = sin(phi);
    double cos_phi = cos(phi);

    double x0 = (height + N) * cos_lambda * cos_phi;
    double y0 = (height + N) * cos_lambda * sin_phi;
    double z0 = (height + (1 - e_sq) * N) * sin_lambda;

    double xd = x0 - x[0];
    double yd = y0 - x[1];
    double zd = z0 - x[2];

    double t = -cos_phi * xd - sin_phi * yd;
    double xEast = -sin_phi * xd + cos_phi * yd;
    double yNorth = t * sin_lambda + cos_lambda * zd;
    double zUp =
        cos_lambda * cos_phi * xd + cos_lambda * sin_phi * yd + sin_lambda * zd;
    static double p[3];
    p[0] = xEast;
    p[1] = yNorth;
    p[2] = zUp;
    return p;
}

double *toEulerAngle(const Quaterniond &q) {
    double roll, pitch, yaw;
    // roll (x-axis rotation)
    double sinr_cosp = +2.0 * (q.w() * q.x() + q.y() * q.z());
    double cosr_cosp = +1.0 - 2.0 * (q.x() * q.x() + q.y() * q.y());
    roll = atan2(sinr_cosp, cosr_cosp);

    // pitch (y-axis rotation)
    double sinp = +2.0 * (q.w() * q.y() - q.z() * q.x());
    if (fabs(sinp) >= 1)
        pitch = copysign(M_PI_2, sinp); // use 90 degrees if out of range
    else
        pitch = asin(sinp);

    // yaw (z-axis rotation)
    double siny_cosp = +2.0 * (q.w() * q.z() + q.x() * q.y());
    double cosy_cosp = +1.0 - 2.0 * (q.y() * q.y() + q.z() * q.z());
    yaw = atan2(siny_cosp, cosy_cosp);
    static double angle[3];
    angle[0] = roll;
    angle[1] = pitch;
    angle[2] = yaw;
    return angle;
}

double filter_6(vector<double> &vec, double new_value) {
    vec.push_back(new_value);
    if (vec.size() > 6) {
        vec.erase(vec.begin());
    }
    return accumulate(vec.begin(), vec.end(), 0.0) / vec.size();
}

void ProcNavSatFix(const sensor_msgs::NavSatFix &msg) {
    pose.rtk_state = msg.status.status;
    pose.lat = msg.latitude;
    pose.lng = msg.longitude;
    pose.alt = msg.altitude;
    double *p = ecefToEnu(p0, msg.latitude, msg.longitude, msg.altitude);
    // imu center pos
    // pose.x_enu = p[0];
    // pose.y_enu = p[1];
    // pose.z_enu = p[2];
    tmp_enu[0] = p[0];
    tmp_enu[1] = p[1];
    tmp_enu[2] = p[2];
    // ROS_ERROR_STREAM("imu pos in enu : " << pose.x_enu << ", " << pose.y_enu
    //                                      << ", " << pose.z_enu);

    // lat covariance, lng covariance
    pose.xy_std_enu =
        sqrt(msg.position_covariance[0] + msg.position_covariance[4]);
}

void ProcTwist(const geometry_msgs::Twist &msg) {
    // v north, east, to ground, in ego coord
    Vector3d v_ego(msg.linear.x, msg.linear.y, msg.linear.z);
    v_ego = (truck_body_q_imu_coord.inverse()) * v_ego;
    pose.vx_ego = v_ego(0);
    pose.vy_ego = v_ego(1);
    pose.vz_ego = v_ego(2);
    pose.speed =
        sqrt(pow(pose.vx_ego, 2) + pow(pose.vy_ego, 2) + pow(pose.vz_ego, 2));
}

void ProcIMU(const sensor_msgs::Imu &msg) {
    Quaterniond q(msg.orientation.w, msg.orientation.x, msg.orientation.y,
                  msg.orientation.z);
    truck_body_q_imu_coord = transf * q;
    truck_body_q_enu_coord = imu_coord_enu_coord * truck_body_q_imu_coord;
    // todo : yaw - roll - pitch
    double *p = toEulerAngle(truck_body_q_imu_coord);
    // in ego coord, in rad
    // todo : check roll and pitch
    // roll pitch yaw may be wrong
    pose.roll = p[0];
    pose.pitch = p[1];
    pose.yaw = p[2];

    pose.orientation.w = truck_body_q_imu_coord.w();
    pose.orientation.x = truck_body_q_imu_coord.x();
    pose.orientation.y = truck_body_q_imu_coord.y();
    pose.orientation.z = truck_body_q_imu_coord.z();

    // todo : yawrate
    Vector3d angle_rate(msg.angular_velocity.x, msg.angular_velocity.y,
                        msg.angular_velocity.z);
    Vector3d imu_ego_angle_rate = truck_body_q_imu_coord * angle_rate;
    pose.yaw_rate = imu_ego_angle_rate(2);

    // Vector3d tmp = q * angle_rate;
    // ROS_ERROR_STREAM(imu_ego_angle_rate(2) << ", " << tmp(2) << ",, "
    //                                        << tmp(2) /
    //                                        imu_ego_angle_rate(2));

    Vector3d acc_ego(msg.linear_acceleration.x, msg.linear_acceleration.y,
                     msg.linear_acceleration.z);
    acc_ego = (truck_body_q_imu_coord.inverse()) * q * acc_ego;
    pose.ax_ego = filter_6(v1, acc_ego(0));
    pose.ay_ego = filter_6(v2, acc_ego(1));
    pose.az_ego = filter_6(v3, acc_ego(2));

    Vector3d imu_offset_ego(imu_ego_origin_translation[0],
                            imu_ego_origin_translation[1],
                            imu_ego_origin_translation[2]);
    Vector3d imu_offset_enu = truck_body_q_enu_coord * imu_offset_ego;
    // ROS_ERROR_STREAM(imu_offset_enu(0)
    //                  << "," << imu_offset_enu(1) << "," <<
    //                  imu_offset_enu(2));

    // adjust to ego coord center
    pose.x_enu = tmp_enu[0] - imu_offset_enu(0);
    pose.y_enu = tmp_enu[1] - imu_offset_enu(1);
    pose.z_enu = tmp_enu[2] - imu_offset_enu(2);

    // imu send time
    pose.header.frame_id = msg.header.frame_id;
    // pose.header.stamp.sec = msg.header.stamp.sec;
    // pose.header.stamp.nsec = msg.header.stamp.nsec;
    pose.header.stamp.sec = ros::Time::now().sec;
    pose.header.stamp.nsec = ros::Time::now().nsec;
    pub_pose.publish(pose);
}

void ProcSys(const diagnostic_msgs::DiagnosticStatus &msg) {}
void ProcFilter(const diagnostic_msgs::DiagnosticStatus &msg) {}

} // namespace localization
} // namespace zone3

int main(int argc, char **argv) {
    ros::init(argc, argv, "gnss");
    ros::NodeHandle node;
    ros::NodeHandle priv_nh("~");

    string NavSatFix_topic;
    string Imu_topic;
    string twist_topic;
    string system_status_topic;
    string filter_status_topic;
    string node_pub_topic;

    // load params
    node.getParam("/truck/imu_ego_origin_q", imu_ego_origin_q);
    Quaterniond q(imu_ego_origin_q[0], imu_ego_origin_q[1], imu_ego_origin_q[2],
                  imu_ego_origin_q[3]);
    Quaterniond tmp(1, 0, 0, 0);
    transf = q * tmp;
    node.getParam("/truck/imu_ego_origin_translation",
                  imu_ego_origin_translation);
    // get topic name
    priv_nh.param<string>("NavSatFix_topic", NavSatFix_topic, "");
    priv_nh.param<string>("Imu_topic", Imu_topic, "");
    priv_nh.param<string>("twist_topic", twist_topic, "");
    priv_nh.param<string>("system_status_topic", system_status_topic, "");
    priv_nh.param<string>("filter_status_topic", filter_status_topic, "");
    priv_nh.param<string>("node_pub_topic", node_pub_topic, "");

    // sub
    sub_NavSatFix =
        node.subscribe(NavSatFix_topic, 10, zone3::localization::ProcNavSatFix);
    sub_imu = node.subscribe(Imu_topic, 10, zone3::localization::ProcIMU);
    sub_twist = node.subscribe(twist_topic, 10, zone3::localization::ProcTwist);
    sub_systemstatus =
        node.subscribe(system_status_topic, 10, zone3::localization::ProcSys);
    sub_filterstatus = node.subscribe(filter_status_topic, 10,
                                      zone3::localization::ProcFilter);
    // pub
    pub_pose = node.advertise<localization_msgs::Pose>(node_pub_topic, 10);

    // ENU base
    p0 =
        zone3::localization::wgs84ToEcef(Enu_base[0], Enu_base[1], Enu_base[2]);
    ROS_INFO_STREAM("[gnss] enu base (0, 0, 0) is set at :  "
                    << ENU_tag << " (" << setprecision(14) << Enu_base[0]
                    << ", " << Enu_base[1] << ", " << Enu_base[2] << ")");
    // const, rotating points contrast to rotating coords
    Quaterniond q_z(cos(M_PI_4), 0, 0, sin(M_PI_4));
    Quaterniond q_x(0, -1, 0, 0);
    imu_coord_enu_coord = q_z * q_x;

    ros::spin();

    return 0;
}
