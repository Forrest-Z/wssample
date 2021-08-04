#include <Eigen/Dense>
#include <Eigen/Eigen>
#include <Eigen/Eigenvalues>
#include <Eigen/Geometry>
#include <fstream>
#include <iostream>
#include <math.h>
#include <ros/ros.h>
#include <signal.h>
#include <sstream>
#include <yaml-cpp/yaml.h>

#include "diagnostic_msgs/DiagnosticStatus.h"
#include "geometry_msgs/Twist.h"
#include "localization_msgs/Pose.h"
#include "sensor_msgs/Imu.h"
#include "sensor_msgs/NavSatFix.h"

#define RAD2DEG(x) ((x)*180. / M_PI)
#define DEG2RAD(x) ((x)*M_PI / 180.)

using namespace std;
using namespace Eigen;

ros::Subscriber sub_NavSatFix;
ros::Subscriber sub_imu;

vector<double> imu_q;
bool flg_rec_start = false;
vector<double> start_pt, end_pt;
string pre_dir;

// string ENU_tag = "wan lin C";
// double Enu_base[3] = {40.033949910963166, 116.29841197941587, 50};
// string ENU_tag = "tong li";
// double Enu_base[3] = {34.3112081822, 108.761270122, 351};
string ENU_tag = "ordos";
double Enu_base[3] = {39.7976858595, 110.274013484, 1411};

double *p0;

namespace zone3 {
namespace localization {

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

// xuy proved to be true (2021.3)
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

void ProcNavSatFix(const sensor_msgs::NavSatFix &msg) {
    double *p = ecefToEnu(p0, msg.latitude, msg.longitude, msg.altitude);
    if (!flg_rec_start) {
        flg_rec_start = true;
        start_pt.clear();
        start_pt.push_back(p[0]);
        start_pt.push_back(p[1]);
        start_pt.push_back(p[2]);
    } else {
        end_pt.clear();
        end_pt.push_back(p[0]);
        end_pt.push_back(p[1]);
        end_pt.push_back(p[2]);
    }
}

void ProcIMU(const sensor_msgs::Imu &msg) {
    imu_q.clear();
    imu_q.push_back(msg.orientation.w);
    imu_q.push_back(msg.orientation.x);
    imu_q.push_back(msg.orientation.y);
    imu_q.push_back(msg.orientation.z);
}

} // namespace localization
} // namespace zone3

void TrackSignalHandler(int sig) {
    if (flg_rec_start) {
        double x = end_pt[0] - start_pt[0];
        double y = end_pt[1] - start_pt[1];
        double heading_in_imu = M_PI_2 - atan2(y, x);
        ROS_INFO_STREAM("truck heading(rad) is : " << heading_in_imu);
        // define truck pos in imu coord
        Quaterniond truck_q(cos(heading_in_imu / 2), 0, 0,
                            sin(heading_in_imu / 2));
        // real imu pos in imu coord
        Quaterniond imu_q_reverse(imu_q[0], -imu_q[1], -imu_q[2], -imu_q[3]);

        // transform * x
        Quaterniond transf = truck_q * imu_q_reverse;
        vector<double> tmp({transf.w(), transf.x(), transf.y(), transf.z()});
        ROS_INFO_STREAM("q : " << transf.w() << ", " << transf.x() << ", "
                               << transf.y() << ", " << transf.z());

        YAML::Emitter out;
        out << YAML::BeginMap;
        out << YAML::Key << "truck";
        out << YAML::BeginMap;
        out << YAML::Key << "imu_ego_origin_q";
        out << YAML::Flow << tmp;
        out << YAML::EndMap;
        out << YAML::EndMap;
        ROS_INFO_STREAM(pre_dir + "/config/imu_cal_" +
                        to_string(ros::Time::now().sec) + ".calib");
        ofstream fout(pre_dir + "/config/imu_cal_" +
                      to_string(ros::Time::now().sec) + ".calib");
        fout << out.c_str();
        fout.close();
        ROS_INFO_STREAM("[imu] finish imu calibration !!!");
    } else {
        ROS_INFO_STREAM("[imu] not finish imu calibration !!!");
    }
    ros::shutdown();
}

void Hold(void) {
    string datain;
    while (true) {
        ROS_INFO_STREAM(
            "[imu cal] truck should go straight, on a horizon flat road.     "
            "  please enter \"go\"");
        cin >> datain;
        if (datain == "go") {
            break;
        }
    }
}

int main(int argc, char **argv) {
    ros::init(argc, argv, "simple_imu_calibration");
    ros::NodeHandle node;
    ros::NodeHandle priv_nh("~");

    string NavSatFix_topic;
    string Imu_topic;

    // load params
    node.param<string>("/pre_dir", pre_dir, "default");
    // get topic name
    priv_nh.param<string>("NavSatFix_topic", NavSatFix_topic, "");
    priv_nh.param<string>("Imu_topic", Imu_topic, "");

    // sub
    sub_NavSatFix =
        node.subscribe(NavSatFix_topic, 1, zone3::localization::ProcNavSatFix);
    sub_imu = node.subscribe(Imu_topic, 1, zone3::localization::ProcIMU);

    // ctrl-c handler
    signal(SIGINT, TrackSignalHandler);

    // ENU base
    p0 =
        zone3::localization::wgs84ToEcef(Enu_base[0], Enu_base[1], Enu_base[2]);
    ROS_INFO_STREAM("[gnss] enu base (0, 0, 0) is set at :  "
                    << ENU_tag << " (" << setprecision(14) << Enu_base[0]
                    << ", " << Enu_base[1] << ", " << Enu_base[2] << ")");

    Hold();

    ros::spin();

    return 0;
}
