#include <eigen3/Eigen/Dense>
#include <ros/ros.h>

#include "ControlStruct.h"
#include "PlannerStruct.h"
#include "TrackPoints.pb.h"
#include "control_msgs/ControlFSM.h"
#include "control_msgs/LowspeedControl.h"
#include "localization_msgs/Pose.h"
#include "planner_msgs/PlannerFSM.h"
#include "planner_msgs/PlannerFSMTrigger.h"
#include "planner_msgs/StopGo.h"
#include "planner_msgs/WayPoint.h"
#include "planner_msgs/WayPoints.h"

using namespace std;
using namespace Eigen;

namespace zone3 {
namespace planner {

extern map<int, string> global_planner_fsm_map;

ros::Publisher pub_waypoints;
ros::Publisher pub_waypoints_viz;
ros::Publisher pub_control_cmd;
ros::Publisher pub_planner_fsm_trigger;

string predir;
string track_path;
string file_name;
double long_aim;
double short_aim;
double aim_switch_speed;
double lock_down_radius;
TrackPoints::Track trk;
int trk_pt_size;
// the most nearest track point
int trk_search_index = 0;
int aim_pt_index = 0;
double self_x;
double self_y;
double heading;
planner_msgs::WayPoints wps_msg;
planner_msgs::WayPoint way_point;
planner_msgs::WayPoint way_point_rviz;
double total_dis;
double current_lat_error;
bool ready_to_send_waypoint = false;
Matrix4d enu_to_ego;
Vector4d wpt_4d_ego;
int now_planner_fsm_state;
int gear;
planner_msgs::PlannerFSMTrigger trigger_msg;
bool flag_lockdown_in_map1;

void Hold(void) {
    planner_msgs::StopGo msg;
    msg.stop_or_go = "wait";
    pub_control_cmd.publish(msg);
}

// parse trk from protobuf
void ParseTrack(void) {
    // todo : offload point set in map
    string fn = predir + track_path + "/" + file_name;
    FILE *file = fopen(fn.c_str(), "r");
    if (!file) {
        ROS_ERROR_STREAM("[planner] no such track file");
        ros::shutdown();
    }
    fseek(file, 0, SEEK_END);
    long len = ftell(file);
    fclose(file);

    string trk_str;
    trk_str.resize(len);
    file = fopen(fn.c_str(), "r");
    size_t sz = fread(&trk_str[0], 1, len, file);
    fclose(file);

    if (trk.ParseFromString(trk_str)) {
        ROS_INFO_STREAM("[planner] parse track ok ! (" << sz << ")");
        ROS_INFO_STREAM("[planner] Track start at [" << trk.pt(0).x() << ", "
                                                     << trk.pt(0).y() << "]");
    } else {
        ROS_ERROR_STREAM("[planner] parse track FAIL !!!");
        ros::shutdown();
    }
    trk_pt_size = trk.pt_size();
}

// yaw diff set in -pi and pi
double YawDiff(double yaw1, double yaw2) {
    double tmp = fabs(yaw1 - yaw2);
    if (tmp > M_PI_2) {
        return 2 * M_PI - tmp;
    }
    return tmp;
}

void ProcPose(const localization_msgs::Pose &msg) {
    flag_lockdown_in_map1 = false;
    if (msg.rtk_state != 2) {
        ROS_ERROR_STREAM("[planner] RTK not ok");
        trigger_msg.flag_lockdown_in_map = false;
        pub_planner_fsm_trigger.publish(trigger_msg);
        return;
    }

    // in ENU coord, yaw in rad
    self_x = msg.x_enu;
    self_y = msg.y_enu;
    heading = msg.yaw;

    // for circle following
    // trk_search_index is the nearest trk point to current position
    if (trk_search_index > trk_pt_size - 6) {
        trk_search_index = 0;
    }

    // find nearest start point, may be front or back, gear not change,
    // change planner fsm
    double dis_ref = fabs(self_x - trk.pt(trk_search_index).x()) +
                     fabs(self_y - trk.pt(trk_search_index).y());
    double dis;
    for (int i = trk_search_index; i < trk_pt_size; i++) {
        dis = fabs(self_x - trk.pt(i).x()) + fabs(self_y - trk.pt(i).y());
        // dis, gear, heading
        if (dis < 2 * lock_down_radius && trk.pt(i).gear() * gear >= 0 &&
            YawDiff(heading, trk.pt(i).yaw()) < M_PI_4 / 2) {
            flag_lockdown_in_map1 = true;
            trk_search_index = i;
        } else if (flag_lockdown_in_map1) {
            break;
        }

        if (flag_lockdown_in_map1) {
            if (dis <= dis_ref + 1e-3) {
                dis_ref = dis;
            } else {
                trk_search_index--;
                break;
            }
        }
    }
    trigger_msg.flag_lockdown_in_map = flag_lockdown_in_map1;
    pub_planner_fsm_trigger.publish(trigger_msg);

    // prepare for calculatiing waypoint
    if (now_planner_fsm_state != FSM_STATEOUTOFMAP) {
        // cal current lat error
        current_lat_error = 0;
        double p1_x = trk.pt(trk_search_index).x();
        double p1_y = trk.pt(trk_search_index).y();
        double p2_x, p2_y;
        if (trk_search_index == 0) {
            p2_x = trk.pt(1).x();
            p2_y = trk.pt(1).y();
        } else {
            p2_x = trk.pt(trk_search_index - 1).x();
            p2_y = trk.pt(trk_search_index - 1).y();
        }
        current_lat_error =
            -((self_x - p1_x) * (p2_y - p1_y) -
              (p2_x - p1_x) * (self_y - p1_y)) /
            sqrt((p2_y - p1_y) * (p2_y - p1_y) + (p2_x - p1_x) * (p2_x - p1_x));

        // rotation matrix from enu to imu
        Quaterniond q_z(cos(M_PI_4), 0, 0, sin(M_PI_4));
        Quaterniond q_x(0, -1, 0, 0);
        Quaterniond imu_coord_enu_coord = q_z * q_x;
        Quaterniond q(msg.orientation.w, msg.orientation.x, msg.orientation.y,
                      msg.orientation.z);
        Matrix3d truck_body_rotation_matrix_enu =
            (imu_coord_enu_coord * q).toRotationMatrix();
        Matrix4d ego_to_enu(Matrix4d::Identity());
        ego_to_enu.block<3, 3>(0, 0) = truck_body_rotation_matrix_enu;
        ego_to_enu.block<3, 1>(0, 3) = Vector3d(self_x, self_y, msg.z_enu);
        enu_to_ego = ego_to_enu.inverse();
    }
}

void ProcPlannerFSM(const planner_msgs::PlannerFSM &msg) {
    gear = msg.gear;
    now_planner_fsm_state = msg.planner_fsm;
    // find aim point
    total_dis = 0;
    // default aim point should be farther
    aim_pt_index = trk_search_index + 3;
    switch (now_planner_fsm_state) {
    case FSM_STATENNAVI:
        // N navi, find a same gear direction waypoint
        // gear should not change
        for (int i = trk_search_index; i < trk_pt_size; i++) {
            if (trk.pt(i).gear() * trk.pt(trk_search_index).gear() > 0) {
                total_dis += trk.pt(i).this_to_last_dis();
                if (fabs(trk.pt(i).kalman_vx()) > aim_switch_speed) {
                    if (total_dis > long_aim) {
                        break;
                    }
                } else {
                    if (total_dis > short_aim) {
                        break;
                    }
                }
            } else {
                break;
            }
            aim_pt_index = i;
        }

        break;

    case FSM_STATEDNAVI:
        // D navi, find a gear > 0 waypoint, never pass a stop point
        for (int i = trk_search_index; i < trk_pt_size; i++) {
            if (trk.pt(i).gear() > 0) {
                total_dis += trk.pt(i).this_to_last_dis();
                if (fabs(trk.pt(i).kalman_vx()) > aim_switch_speed) {
                    if (total_dis > long_aim) {
                        break;
                    }
                } else {
                    if (total_dis > short_aim) {
                        break;
                    }
                }
            } else {
                break;
            }
            aim_pt_index = i;
        }

        break;

    case FSM_STATERNAVI:
        // R navi, find a gear < 0 waypoint, never pass a stop point
        for (int i = trk_search_index; i < trk_pt_size; i++) {
            if (trk.pt(i).gear() < 0) {
                total_dis += trk.pt(i).this_to_last_dis();
                if (fabs(trk.pt(i).kalman_vx()) > aim_switch_speed) {
                    if (total_dis > long_aim) {
                        break;
                    }
                } else {
                    if (total_dis > short_aim) {
                        break;
                    }
                }
            } else {
                break;
            }
            aim_pt_index = i;
        }

        break;

    case FSM_STATEEXCEED:
        // exceed, pos pass the stop point, and gear should change direction
        for (int i = trk_search_index; i < trk_pt_size; i++) {
            if (trk.pt(i).gear() * trk.pt(trk_search_index).gear() <= 0) {
                total_dis += trk.pt(i).this_to_last_dis();
                if (fabs(trk.pt(i).kalman_vx()) > aim_switch_speed) {
                    if (total_dis > long_aim) {
                        break;
                    }
                } else {
                    if (total_dis > short_aim) {
                        break;
                    }
                }
            } else {
                break;
            }
            aim_pt_index = i;
        }

        break;

    default:
        //  do nothing
        break;
    }

    // if out of map, send current waypoint with "out of map"
    // if in map, send normal waypoint
    if (now_planner_fsm_state != FSM_STATEOUTOFMAP) {
        way_point.lock_down_index = trk_search_index;
        way_point.aim_pt_index = aim_pt_index;

        // change waypoint from enu to ego coordinate
        Vector4d wpt_4d_enu(trk.pt(aim_pt_index).x(), trk.pt(aim_pt_index).y(),
                            trk.pt(aim_pt_index).z(), 1.0);
        wpt_4d_ego = enu_to_ego * wpt_4d_enu;
        way_point.x = wpt_4d_ego(0);
        way_point.y = wpt_4d_ego(1);
        way_point.z = wpt_4d_ego(2);

        // other waypoint information
        way_point.kalman_vx = trk.pt(trk_search_index).kalman_vx();
        way_point.yaw = trk.pt(trk_search_index).yaw();
        way_point.kalman_yawrate = trk.pt(trk_search_index).kalman_yawrate();
        way_point.acceleration = trk.pt(trk_search_index).accel();
        way_point.steer = trk.pt(trk_search_index).steer();
        way_point.throttle_percentage =
            trk.pt(trk_search_index).throttle_pedal();
        way_point.xbr = trk.pt(trk_search_index).xbr();
        way_point.gear = trk.pt(aim_pt_index).gear();
        way_point.left_light = trk.pt(trk_search_index).left_light();
        way_point.right_light = trk.pt(trk_search_index).right_light();
        // way_point.emergency_light = trk.pt(aim_pt_index).emergency_light();
        way_point.air_beep = trk.pt(trk_search_index).air_beep();
        way_point.current_lat_error = current_lat_error;
    }

    // pub control
    wps_msg.header.stamp = ros::Time::now();
    wps_msg.header.frame_id = "zone3";
    wps_msg.coord_type = "ego";
    wps_msg.control_type = "follow_tracks";
    wps_msg.planner_fsm = global_planner_fsm_map[now_planner_fsm_state];
    wps_msg.points.clear();
    wps_msg.points.push_back(way_point);
    if (ready_to_send_waypoint) {
        pub_waypoints.publish(wps_msg);
    }

    // pub rviz waypoint in enu coord
    way_point_rviz.x = trk.pt(aim_pt_index).x();
    way_point_rviz.y = trk.pt(aim_pt_index).y();
    way_point_rviz.z = trk.pt(aim_pt_index).z();
    way_point_rviz.lock_down_index = trk_search_index;
    way_point_rviz.aim_pt_index = aim_pt_index;
    wps_msg.points.clear();
    wps_msg.points.push_back(way_point_rviz);
    if (ready_to_send_waypoint) {
        pub_waypoints_viz.publish(wps_msg);
    }
}

// planner on/off switch, teledrive has higher priority
// if planner is off, not send waypoint
void ProcControlFSM(const control_msgs::ControlFSM &msg) {
    if (msg.control_fsm == FSM_STATETELEDRIVE) {
        ready_to_send_waypoint = false;
    }
    if (!ready_to_send_waypoint) {
        string datain;
        while (true) {
            ROS_INFO_STREAM(
                "[planner] to start follow_track planner, please enter \"go\"");
            cin >> datain;
            if (datain == "go") {
                break;
            }
        }
        ready_to_send_waypoint = true;
        planner_msgs::StopGo msg;
        msg.stop_or_go = "go";
        pub_control_cmd.publish(msg);
    }
}

} // namespace planner
} // namespace zone3

int main(int argc, char **argv) {
    ros::init(argc, argv, "follow_track");
    ros::NodeHandle node;
    ros::NodeHandle priv_nh("~");

    string pose_topic;
    string planner_fsm_topic;
    string control_fsm_topic;
    string pub_waypoint_topic;
    string pub_waypoint_rviz_topic;
    string pub_command_topic;
    string pub_fsm_trigger_topic;

    // get topic
    priv_nh.param<string>("pose_topic", pose_topic, "");
    priv_nh.param<string>("planner_fsm_topic", planner_fsm_topic, "");
    priv_nh.param<string>("control_fsm_topic", control_fsm_topic, "");
    priv_nh.param<string>("pub_waypoint_topic", pub_waypoint_topic, "");
    priv_nh.param<string>("pub_waypoint_rviz_topic", pub_waypoint_rviz_topic,
                          "");
    priv_nh.param<string>("pub_command_topic", pub_command_topic, "");
    priv_nh.param<string>("pub_fsm_trigger_topic", pub_fsm_trigger_topic, "");

    // get parameters
    node.param<string>("/pre_dir", zone3::planner::predir, "");
    node.param<string>("/track/track_folder", zone3::planner::track_path, "");
    node.param<string>("/file_name", zone3::planner::file_name, "");
    node.param<double>("/planner/high_speed_aim_distance",
                       zone3::planner::long_aim, 10);
    node.param<double>("/planner/low_speed_aim_distance",
                       zone3::planner::short_aim, 8);
    node.param<double>("/planner/aim_distance_switch_speed",
                       zone3::planner::aim_switch_speed, 5);
    node.param<double>("/planner/lock_down_in_track_radius",
                       zone3::planner::lock_down_radius, 4);

    // sub
    ros::Subscriber sub_pose =
        node.subscribe(pose_topic, 10, &zone3::planner::ProcPose);
    ros::Subscriber sub_planner_fsm =
        node.subscribe(planner_fsm_topic, 10, &zone3::planner::ProcPlannerFSM);
    ros::Subscriber sub_control_fsm =
        node.subscribe(control_fsm_topic, 10, &zone3::planner::ProcControlFSM);

    // pub
    zone3::planner::pub_waypoints =
        node.advertise<planner_msgs::WayPoints>(pub_waypoint_topic, 1);
    zone3::planner::pub_waypoints_viz =
        node.advertise<planner_msgs::WayPoints>(pub_waypoint_rviz_topic, 1);
    zone3::planner::pub_control_cmd =
        node.advertise<planner_msgs::StopGo>(pub_command_topic, 1);
    zone3::planner::pub_planner_fsm_trigger =
        node.advertise<planner_msgs::PlannerFSMTrigger>(pub_fsm_trigger_topic,
                                                        1);

    // parse track
    zone3::planner::ParseTrack();

    // hold not go
    zone3::planner::Hold();

    ros::spin();

    return 0;
}