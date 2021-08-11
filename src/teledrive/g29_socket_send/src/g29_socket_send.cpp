#include "G29Socket.pb.h"
#include "sensor_msgs/Joy.h"
#include <arpa/inet.h>
#include <fcntl.h>
#include <linux/input.h>
#include <netinet/in.h>
#include <pthread.h>
#include <ros/ros.h>

using namespace std;

int32_t sock;

// void *receive(void *arg) {
//     int *temp = ((int *)arg);
//     int sock = *temp;
//     while (true) {
//         char recvBuf[1024] = {};
//         int reLen = recv(sock, recvBuf, 1024, 0);
//     }
//     pthread_exit(NULL);
// }

void SendCallback(const sensor_msgs::Joy::ConstPtr &msg) {
    // protobuf
    string strsendmsg;
    G29Socket::G29SocketPack sendmsg;
    sendmsg.set_seq(msg->header.seq);
    sendmsg.set_secs(msg->header.stamp.sec);
    sendmsg.set_nsecs(msg->header.stamp.nsec);
    sendmsg.set_frame_id(msg->header.frame_id);
    for (int32_t i = 0; i < 6; i++) {
        sendmsg.add_axes(msg->axes[i]);
    }
    for (int32_t j = 0; j < 25; j++) {
        sendmsg.add_buttons(msg->buttons[j]);
    }
    sendmsg.SerializeToString(&strsendmsg);
    int32_t usize = strsendmsg.size();
    ROS_INFO("The length of the msg is: %d", usize);
    if (usize < 140 || usize > 150) {
        ROS_ERROR_STREAM("The length of the message is failed!");
        ROS_ERROR_STREAM(strsendmsg);
    } else {
        char chsize = usize - 140 + '0';
        strsendmsg.append(149 - usize, '0');
        strsendmsg.append(1, chsize);
        send(sock, strsendmsg.data(), 150, 0);
    }
}

void *Sendheartbeat(void *arg) {
    while (true) {
        string heartbeatmsg = "heartbeat";
        heartbeatmsg.append(140, '\0');
        heartbeatmsg.append(1, 'h');
        send(sock, heartbeatmsg.data(), 150, 0);
        usleep(50000);
    }
}

int main(int argc, char **argv) {
    ros::init(argc, argv, "g29_socket_send");
    ros::NodeHandle node("");
    ros::NodeHandle priv_nh("~");

    string socket_send_ip;
    int32_t socket_port;
    string local_G29_topic;

    // load params
    node.param<string>("/teledrive/socket_send_ip", socket_send_ip, "default");
    node.param<int32_t>("/teledrive/socket_port", socket_port, 10);

    // get topic name
    priv_nh.param<string>("local_G29_topic", local_G29_topic, "");

    // sub
    ros::Subscriber sub_g29 = node.subscribe(local_G29_topic, 10, SendCallback);

    // socket init
    sock = socket(AF_INET, SOCK_STREAM, 0);
    struct sockaddr_in server;
    server.sin_family = AF_INET;
    server.sin_port = htons(socket_port);
    server.sin_addr.s_addr = inet_addr(socket_send_ip.c_str());
    if (connect(sock, (struct sockaddr *)&server, sizeof(server)) < 0) {
        ROS_ERROR_STREAM("[g29 socket send] G29 Socket Connect Failed!");
    } else {
        ROS_INFO_STREAM("[g29 socket send] G29 Socket Connect OK!");
    }

    pthread_t heartbeat;
    pthread_create(&heartbeat, NULL, Sendheartbeat, NULL);

    // ros spin
    ros::Rate loop_rate(10);
    while (ros::ok()) {
        ros::spinOnce();
        loop_rate.sleep();
    }

    close(sock);

    return 0;
}
