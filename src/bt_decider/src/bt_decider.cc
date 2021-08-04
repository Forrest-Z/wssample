#include "ActionBackToLastLane.h"
#include "ActionKeepLane.h"
#include "ActionLeftBypass.h"
#include "ActionRightBypass.h"
#include "CheckAvailDriveAreaClear.h"
#include "CheckLaneBackClear.h"
#include "CheckLaneFrontClear.h"
#include <behaviortree_cpp_v3/action_node.h>
#include <behaviortree_cpp_v3/bt_factory.h>
#include <behaviortree_cpp_v3/loggers/bt_cout_logger.h>
#include <ros/ros.h>

using namespace BT;
using namespace std;

int main(int argc, char **argv) {

    ros::init(argc, argv, "bt_decider");
    ros::NodeHandle node;
    ros::NodeHandle priv_nh("~");
    string pre_dir;

    // get parameters
    node.param<string>("/pre_dir", pre_dir, "");

    // We use the BehaviorTreeFactory to register our custom nodes
    BehaviorTreeFactory lat_factory;

    ROS_INFO_STREAM("[decider] creating behavior tree for lat control !");
    lat_factory.registerNodeType<CheckLaneFrontClear>("CheckLaneFrontClear");
    lat_factory.registerNodeType<CheckLaneBackClear>("CheckLaneBackClear");
    lat_factory.registerNodeType<CheckAvailDriveAreaClear>(
        "CheckAvailDriveAreaClear");
    lat_factory.registerNodeType<ActionBackToLastLane>("ActionBackToLastLane");
    lat_factory.registerNodeType<ActionKeepLane>("ActionKeepLane");
    lat_factory.registerNodeType<ActionLeftBypass>("ActionLeftBypass");
    lat_factory.registerNodeType<ActionRightBypass>("ActionRightBypass");

    // Trees are created at deployment-time (i.e. at run-time, but only once at
    // the beginning). The currently supported format is XML. IMPORTANT: when
    // the object "lat_tree" goes out of scope, all the TreeNodes are destroyed
    auto lat_tree =
        lat_factory.createTreeFromFile(pre_dir + "/config/BT_lat_decider.xml");

    // Create a logger, show in term
    // StdCoutLogger logger_cout(lat_tree);

    while (ros::ok()) {
        // sub data process
        ros::spinOnce();
        lat_tree.rootNode()->executeTick();
        // Sleep 100 milliseconds
        this_thread::sleep_for(chrono::milliseconds(100));
    }

    return 0;
}