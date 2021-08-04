#include <ros/ros.h>
#include <visualization_msgs/Marker.h>
#include <visualization_msgs/MarkerArray.h>

#include "TrackPoints.pb.h"
#include "localization_msgs/Pose.h"
#include "planner_msgs/WayPoints.h"

using namespace std;

ros::Subscriber sub_waypoints;
ros::Publisher pub_track_markers;

string pre_dir;
string track_path;
string file_name;
double near_stop_way_point_radius;
vector<vector<double>> off_load_positions;
string waypoints_topic;
string track_marker_topic;
int last_index = 0;

visualization_msgs::MarkerArray trk_marker;
visualization_msgs::MarkerArray trk_lockdown_marker;
TrackPoints::Track trk;

void ParseTrack(void) {
    string fn = pre_dir + track_path + "/" + file_name;
    FILE *file = fopen(fn.c_str(), "r");
    if (!file) {
        ROS_ERROR_STREAM("[track viz] no such track file");
        ROS_ERROR_STREAM(fn);
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
        ROS_INFO_STREAM("[track viz] parse track ok ! (" << sz << ")");
    } else {
        ROS_ERROR_STREAM("[track viz] parse track FAIL !!!");
    }

    // base track, white
    int cnt = trk.pt_size();
    for (int i = 0; i < cnt; i++) {
        visualization_msgs::Marker point;
        point.header.frame_id = "enu";
        point.ns = "track";
        point.id = i;
        point.type = visualization_msgs::Marker::SPHERE;
        point.action = visualization_msgs::Marker::ADD;
        if (fabs(trk.pt(i).kalman_vx()) > 0.5) {
            point.scale.x = 0.5;
            point.scale.y = 0.5;
            point.scale.z = 0.5;
        } else {
            point.scale.x = 0.6;
            point.scale.y = 0.6;
            point.scale.z = 0.6;
            // add stop point cylinder
            visualization_msgs::Marker cy;
            cy.header.frame_id = "enu";
            cy.ns = "track";
            cy.id = cnt + i;
            cy.type = visualization_msgs::Marker::CYLINDER;
            cy.action = visualization_msgs::Marker::ADD;
            cy.scale.x = near_stop_way_point_radius;
            cy.scale.y = near_stop_way_point_radius;
            cy.scale.z = 4;
            cy.color.r = 0.8;
            cy.color.g = 0.8;
            cy.color.b = 0.8;
            cy.color.a = 0.3;
            cy.pose.position.x = trk.pt(i).x();
            cy.pose.position.y = trk.pt(i).y();
            cy.pose.position.z = trk.pt(i).z() + 2;
            cy.pose.orientation.w = 1.0;
            trk_marker.markers.push_back(cy);
        }
        point.color.r = 0.8;
        point.color.g = 0.8;
        point.color.b = 0.8;
        point.color.a = 1.0;
        point.pose.position.x = trk.pt(i).x();
        point.pose.position.y = trk.pt(i).y();
        point.pose.position.z = trk.pt(i).z();
        point.pose.orientation.x = 0;
        point.pose.orientation.y = 0;
        point.pose.orientation.z = 0;
        point.pose.orientation.w = 1.0;
        trk_marker.markers.push_back(point);
    }

    // offload marker, red, large
    for (int i = 0; i < off_load_positions.size(); i++) {
        // add load off point cylinder
        visualization_msgs::Marker cy;
        cy.header.frame_id = "enu";
        cy.ns = "track";
        cy.id = 2 * cnt + i;
        cy.type = visualization_msgs::Marker::CYLINDER;
        cy.action = visualization_msgs::Marker::ADD;
        cy.scale.x = near_stop_way_point_radius;
        cy.scale.y = near_stop_way_point_radius;
        cy.scale.z = 4;
        cy.color.r = 0.8;
        cy.color.b = 0.1;
        cy.color.a = 0.5;
        cy.pose.position.x = off_load_positions[i][0];
        cy.pose.position.y = off_load_positions[i][1];
        cy.pose.orientation.w = 1.0;
        trk_marker.markers.push_back(cy);
    }

    // lock_down_index pt, red, small
    visualization_msgs::Marker lockdown_pt;
    lockdown_pt.header.frame_id = "enu";
    lockdown_pt.ns = "track";
    lockdown_pt.id = 3 * cnt;
    lockdown_pt.type = visualization_msgs::Marker::CYLINDER;
    lockdown_pt.action = visualization_msgs::Marker::ADD;
    lockdown_pt.scale.x = 0.5;
    lockdown_pt.scale.y = 0.5;
    lockdown_pt.scale.z = 0.5;
    lockdown_pt.color.r = 1.;
    lockdown_pt.color.g = 0.;
    lockdown_pt.color.b = 0.;
    lockdown_pt.color.a = 0.8;
    lockdown_pt.pose.position.x = trk.pt(0).x();
    lockdown_pt.pose.position.y = trk.pt(0).y();
    lockdown_pt.pose.position.z = trk.pt(0).z();
    lockdown_pt.pose.orientation.w = 1.0;
    trk_lockdown_marker.markers.push_back(lockdown_pt);

    ROS_INFO_STREAM("[track viz] Track start at [" << trk.pt(0).x() << ", "
                                                   << trk.pt(0).y() << "]");
    ROS_INFO_STREAM("[track viz] Track points : " << trk.track_points_count());
    ROS_INFO_STREAM("[track viz] Track length : " << trk.track_dis());
    ROS_INFO_STREAM("[track viz] Offload pos : ");
}

void ProcTimer(const ros::TimerEvent &event) {
    pub_track_markers.publish(trk_marker);
}

void WaypointsCallback(const planner_msgs::WayPoints &msg) {
    int cnt = trk_marker.markers.size();
    for (int i = 0; i < cnt; i++) {
        if (trk_marker.markers[i].id == msg.points[0].lock_down_index) {
            trk_lockdown_marker.markers[0].pose.position.x =
                trk_marker.markers[i].pose.position.x;
            trk_lockdown_marker.markers[0].pose.position.y =
                trk_marker.markers[i].pose.position.y;
            trk_lockdown_marker.markers[0].pose.position.z =
                trk_marker.markers[i].pose.position.z;
        }
        pub_track_markers.publish(trk_lockdown_marker);
    }
}

int main(int argc, char **argv) {
    if (ros::console::set_logger_level(ROSCONSOLE_DEFAULT_NAME,
                                       ros::console::levels::Debug)) {
        ros::console::notifyLoggerLevelsChanged();
    }

    ros::init(argc, argv, "track_viz");
    ros::NodeHandle node;
    ros::NodeHandle priv_nh("~");

    // load params
    node.param<string>("/pre_dir", pre_dir, "default");
    node.param<string>("/track/track_folder", track_path, "default");
    node.param<string>("/file_name", file_name, "dafault");
    node.param<double>("/control/near_stop_way_point_radius",
                       near_stop_way_point_radius, 2.);
    vector<double> data;
    node.getParam("/global/off_load_position_list_enu", data);
    for (size_t i = 0; i < data.size() / 2; i++) {
        vector<double> tmp;
        tmp.push_back(data[2 * i]);
        tmp.push_back(data[2 * i + 1]);
        off_load_positions.push_back(tmp);
        ROS_INFO_STREAM("[track viz] off_load_position "
                        << i + 1 << ": (" << tmp[0] << "," << tmp[1] << ")");
    }
    data.clear();
    // get topic name
    priv_nh.param<string>("waypoints_topic", waypoints_topic, "");
    priv_nh.param<string>("track_marker_topic", track_marker_topic, "");

    // sub
    sub_waypoints = node.subscribe(waypoints_topic, 10, &WaypointsCallback);
    // pub
    pub_track_markers =
        node.advertise<visualization_msgs::MarkerArray>(track_marker_topic, 1);

    // timer
    ros::Timer timer = node.createTimer(ros::Duration(3), &ProcTimer);

    // parse track
    ParseTrack();

    ros::spin();

    return 0;
}