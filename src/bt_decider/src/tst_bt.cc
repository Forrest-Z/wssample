#include "perception_msgs/Objs.h"
#include "planner_msgs/WayPoints.h"
#include <behaviortree_cpp_v3/action_node.h>
#include <behaviortree_cpp_v3/bt_factory.h>
#include <behaviortree_cpp_v3/loggers/bt_cout_logger.h>
#include <ros/ros.h>

using namespace std;

int main(int argc, char **argv) {
    ros::init(argc, argv, "bt_decider");
    ros::NodeHandle node;
    ros::NodeHandle priv_nh("~");

    perception_msgs::Objs ob;
    planner_msgs::WayPoints wp;

    ros::Publisher pub_ob =
        node.advertise<perception_msgs::Objs>("/zone3/perception/objs", 2);
    ros::Publisher pub_wp =
        node.advertise<planner_msgs::WayPoints>("/zone3/track/lanes", 2);

    int kk = 0;

    while (ros::ok()) {
        if (kk % 2 == 0) {
            pub_ob.publish(ob);
        } else {
            pub_wp.publish(wp);
        }
        kk++;
        // Sleep 100 milliseconds
        std::this_thread::sleep_for(std::chrono::milliseconds(1000));
    }

    return 0;
}