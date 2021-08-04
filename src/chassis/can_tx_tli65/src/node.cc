#include "CanTxTli65.h"

int main(int argc, char **argv) {
    ros::init(argc, argv, "can_tx_tli65");
    ros::NodeHandle node;
    ros::NodeHandle priv_nh("~");

    zone3::chassis::CanTxTli65 n(node, priv_nh);
    ros::spin();

    return 0;
}