#include <message_filters/subscriber.h>
#include <message_filters/sync_policies/approximate_time.h>
#include <message_filters/synchronizer.h>
#include <ros/console.h>
#include <ros/ros.h>
#include <signal.h>

#include "TrackPoints.pb.h"
#include "kalman_msgs/Kinematics.h"
#include "localization_msgs/Pose.h"
#include "localization_msgs/SteerSpeedYawRate.h"
#include "tli65_can_msgs/RxStHighspeed.h"
#include "tli65_can_msgs/RxStLowspeed.h"

using namespace std;

string pre_dir;
string track_path;
string file_name_date;
string pose_topic;
string st_highspeed_topic;
string st_lowspeed_topic;
string kalman_topic;

string coord_type = "enu";
double track_length = 0.;
int track_point_count = 0;
double track_points_dis = 0.;
int fail_track_point_count = 0;
int last_gear = 0;
TrackPoints::Track trk;

bool msg_sync_flag = false;
double last_track_point_x = 0.;
double last_track_point_y = 0.;
double steer_yawrate = 0.;
double kalman_yawrate = 0.;

namespace zone3 {
namespace record {

// tst code
// using SyncPolicy = message_filters::sync_policies::ApproximateTime<
//     localization_msgs::Pose, tli65_can_msgs::RxStHighspeed,
//     kalman_msgs::Kinematics>;

// tst code
// void SyncTst(const localization_msgs::Pose::ConstPtr pose,
//              const tli65_can_msgs::RxStHighspeed::ConstPtr st_highspeed,
//              const kalman_msgs::Kinematics::ConstPtr kalman) {
//     ROS_ERROR_STREAM("1");
// }

// sync pose and Rx
using SyncPolicy = message_filters::sync_policies::ApproximateTime<
    localization_msgs::Pose, tli65_can_msgs::RxStHighspeed,
    tli65_can_msgs::RxStLowspeed, kalman_msgs::Kinematics>;

// update track
void SyncTrackPoint(const localization_msgs::Pose::ConstPtr pose,
                    const tli65_can_msgs::RxStHighspeed::ConstPtr st_highspeed,
                    const tli65_can_msgs::RxStLowspeed::ConstPtr st_lowspeed,
                    const kalman_msgs::Kinematics::ConstPtr kalman) {
    // ROS_ERROR_STREAM("22");
    msg_sync_flag = true;
    if (pose->rtk_state < 2) {
        fail_track_point_count++;
        if (fail_track_point_count > 10) {
            ROS_ERROR_STREAM(
                "(2) record track error! please check topic and sync : "
                "pose, StHighspeed, StLowspeed, kalman");
            ROS_ERROR_STREAM("check rtk state !!!");
            ros::shutdown();
        }
        return;
    }

    if (track_point_count == 0) {
        trk.set_coord_type("enu");
    }

    double tmp = sqrt(pow(pose->x_enu - last_track_point_x, 2) +
                      pow(pose->y_enu - last_track_point_y, 2));
    //   speed < 1.8 km/h
    if (tmp > track_points_dis ||
        (tmp > track_points_dis / 2.0 && pose->speed < 0.5)) {
        last_track_point_x = pose->x_enu;
        last_track_point_y = pose->y_enu;

        // wheel base origin point, in ENU coord
        TrackPoints::Point *tpt = trk.add_pt();
        tpt->set_x(pose->x_enu);
        tpt->set_y(pose->y_enu);
        tpt->set_z(pose->z_enu);
        tpt->set_yaw(pose->yaw);
        tpt->set_kalman_vx(kalman->k_vx);
        tpt->set_accel(pose->ax_ego);
        tpt->set_kalman_yawrate(kalman->k_yawrate);
        tpt->set_steer(st_highspeed->steer_angle);
        tpt->set_throttle_pedal((int)st_highspeed->throttle_pedal_pos);
        tpt->set_xbr(pose->ax_ego);
        tpt->set_gear(st_highspeed->gear);
        if (track_point_count == 0) {
            tpt->set_this_to_last_dis(0.);
        } else {
            tpt->set_this_to_last_dis(tmp);
            track_length += tmp;
        }
        tpt->set_left_light(st_lowspeed->left_light);
        tpt->set_right_light(st_lowspeed->right_light);
        tpt->set_air_beep(st_lowspeed->air_beep);

        track_point_count += 1;

        if (last_gear * st_highspeed->gear <= 0 && track_point_count > 1) {
            trk.mutable_pt(track_point_count - 2)->set_kalman_vx(0);
        }
        last_gear = st_highspeed->gear;
    }
}

void Timeout(const ros::TimerEvent &event) {
    if (!msg_sync_flag) {
        fail_track_point_count++;
    }
    msg_sync_flag = false;
    if (fail_track_point_count > 10) {
        ROS_ERROR_STREAM(
            "(1) record track error! please check topic and sync : "
            "pose, StHighspeed, StLowspeed, kalman");
        ROS_ERROR_STREAM("check rtk state !!!");
        ros::shutdown();
    }
}

void TrackSignalHandler(int sig) {
    if (track_point_count > 10) {
        ROS_INFO_STREAM(
            "saving track, total length is : "
            << track_length << "  track point count is : " << track_point_count
            << ", fail point count is : " << fail_track_point_count);
        trk.set_track_points_count(track_point_count);
        trk.set_track_dis(track_length);

        string str;
        trk.SerializeToString(&str);
        int len = str.size();
        string fn = pre_dir + track_path + "/Tli65_" + file_name_date + ".trk";
        FILE *file = fopen(fn.c_str(), "w");
        fwrite(&str[0], len, 1, file);
        fclose(file);
    } else {
        ROS_ERROR_STREAM("too few track points to save track");
    }
    ROS_INFO_STREAM("[record track] shut down");
    ros::shutdown();
}

} // namespace record
} // namespace zone3

int main(int argc, char **argv) {
    if (ros::console::set_logger_level(ROSCONSOLE_DEFAULT_NAME,
                                       ros::console::levels::Debug)) {
        ros::console::notifyLoggerLevelsChanged();
    }

    ros::init(argc, argv, "record_track");
    ros::NodeHandle node("");
    ros::NodeHandle priv_nh("~");

    // load params
    node.param<string>("/pre_dir", pre_dir, "default");
    node.param<string>("/track/track_folder", track_path, "default");
    node.param<string>("/file_name_date", file_name_date, "dafault");
    node.param<double>("/track/track_points_dis", track_points_dis, 1.);
    // get topic name
    priv_nh.param<string>("pose_topic", pose_topic, "");
    priv_nh.param<string>("st_highspeed_topic", st_highspeed_topic, "");
    priv_nh.param<string>("st_lowspeed_topic", st_lowspeed_topic, "");
    priv_nh.param<string>("kalman_topic", kalman_topic, "");

    // sub and sync
    // 50ms
    message_filters::Subscriber<localization_msgs::Pose> sub_pose(
        node, pose_topic, 1);
    // 20ms
    message_filters::Subscriber<tli65_can_msgs::RxStHighspeed> sub_st_highspeed(
        node, st_highspeed_topic, 1);
    // 100ms
    message_filters::Subscriber<tli65_can_msgs::RxStLowspeed> sub_st_lowspeed(
        node, st_lowspeed_topic, 1);

    message_filters::Subscriber<kalman_msgs::Kinematics> sub_kalman(
        node, kalman_topic, 1);

    // tst code
    // message_filters::Synchronizer<zone3::record::SyncPolicy> sync(
    //     zone3::record::SyncPolicy(100), sub_pose, sub_st_highspeed,
    //     sub_kalman);
    // sync.registerCallback(boost::bind(&zone3::record::SyncTst, _1, _2, _3));

    message_filters::Synchronizer<zone3::record::SyncPolicy> sync(
        zone3::record::SyncPolicy(100), sub_pose, sub_st_highspeed,
        sub_st_lowspeed, sub_kalman);
    sync.registerCallback(
        boost::bind(&zone3::record::SyncTrackPoint, _1, _2, _3, _4));

    // 300ms
    ros::Timer timer;
    timer = node.createTimer(ros::Duration(0.3), &zone3::record::Timeout);

    // ctrl-c handler
    signal(SIGINT, zone3::record::TrackSignalHandler);

    ROS_INFO_STREAM("node begins to start record track ...");

    ros::spin();
}
