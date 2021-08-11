#include "G29Socket.pb.h"
#include "g29_socket_msgs/G29Socket.h"
#include <arpa/inet.h>
#include <fcntl.h>
#include <netinet/in.h>
#include <ros/ros.h>

using namespace std;

pthread_mutex_t mutex1;

struct user {
    int32_t sock;
    string name;
};

vector<int32_t> socks;

ros::Publisher teledrive_pub;

int start_up(const char *local_ip, int32_t local_port) {
    int32_t sock = socket(AF_INET, SOCK_STREAM, 0);
    if (sock < 0) {
        ROS_ERROR_STREAM("[g29 socket recv] Socket init failed!");
    } else {
        ROS_INFO_STREAM("[g29 socket recv] Socket init OK!");
    }
    struct sockaddr_in local;
    local.sin_family = AF_INET;
    local.sin_port = htons(local_port);
    local.sin_addr.s_addr = inet_addr(local_ip);
    const int32_t on = 1;
    setsockopt(sock, SOL_SOCKET, SO_REUSEADDR, &on, sizeof(on));
    if (bind(sock, (struct sockaddr *)&local, sizeof(local)) < 0) {
        ROS_ERROR_STREAM("[g29 socket recv] Bind failed!");
    } else {
        ROS_INFO("[g29 socket recv] Bind OK!");
    }
    if (listen(sock, 100) < 0) {
        ROS_ERROR_STREAM("[g29 socket recv] Listen failed!");
    } else {
        ROS_INFO("[g29 socket recv] Listenning OK!");
    }

    return sock;
}

void *HandlerRequest(void *arg) {
    // lock
    pthread_mutex_lock(&mutex1);
    user *t = (user *)arg;
    int32_t new_sock = t->sock;
    string idname = t->name;
    int32_t uLen;
    int32_t nRead;
    int32_t recvsuccess = 0;
    int32_t recvfailed = 0;
    int64_t heartbeattime = 0;
    char chsize;
    char *uData = (char *)malloc(150);
    G29Socket::G29SocketPack g29_recv;
    while (true) {
        int64_t localtime = chrono::duration_cast<chrono::milliseconds>(
                                chrono::system_clock::now().time_since_epoch())
                                .count();
        if (heartbeattime == 0) {
        } else if ((localtime - heartbeattime) > 300) {
            g29_socket_msgs::G29Socket connect_recv;
            connect_recv.connect = 0;
            teledrive_pub.publish(connect_recv);
            ROS_ERROR_STREAM("Connect Failed!");
            return ((void *)0);
        }
        uData[149] = '0';
        if ((nRead = recv(new_sock, uData, 150, MSG_DONTWAIT)) > 0) {
            chsize = uData[149];
            g29_socket_msgs::G29Socket driver_recv;
            switch (chsize) {
            case '1':
            case '2':
            case '3':
            case '4':
                uLen = chsize - '0' + 140;
                ROS_INFO("The length of the message is: %d", uLen);
                if (!g29_recv.ParseFromArray(uData, uLen)) {
                    ROS_ERROR_STREAM("[g29 socket recv] Parse failed!");
                }

                driver_recv.header.seq = g29_recv.seq();
                driver_recv.header.stamp.sec = g29_recv.secs();
                driver_recv.header.stamp.nsec = g29_recv.nsecs();
                driver_recv.header.frame_id = g29_recv.frame_id();

                for (int32_t i = 0; i < 6; i++) {
                    driver_recv.axes[i] = g29_recv.axes(i);
                }
                for (int32_t j = 0; j < 25; j++) {
                    driver_recv.buttons[j] = g29_recv.buttons(j);
                }
                driver_recv.connect = 1;
                teledrive_pub.publish(driver_recv);
                recvsuccess++;
                ROS_INFO("recvsuccess is: %d , recvfailed is: %d.", recvsuccess,
                         recvfailed);
                break;
            case 'h':
                heartbeattime =
                    chrono::duration_cast<chrono::milliseconds>(
                        chrono::system_clock::now().time_since_epoch())
                        .count();
                break;
            default:
                recvfailed++;
                break;
            }
        }
    }
    close(new_sock);
    // unlock
    pthread_mutex_unlock(&mutex1);
    pthread_exit(NULL);
}

int main(int argc, char **argv) {
    ros::init(argc, argv, "g29_socket_recv");
    ros::NodeHandle node("");
    ros::NodeHandle priv_nh("~");

    string socket_recv_ip;
    string pub_topic;
    int32_t socket_port;

    // load params
    node.param<string>("/teledrive/socket_recv_ip", socket_recv_ip, "default");
    node.param<int32_t>("/teledrive/socket_port", socket_port, 10);

    // get topic name
    priv_nh.param<string>("teledrive_command", pub_topic, "");

    // pub
    teledrive_pub = node.advertise<g29_socket_msgs::G29Socket>(pub_topic, 1);

    // socket init
    int32_t sock = start_up(socket_recv_ip.c_str(), socket_port);
    struct sockaddr_in client;
    socklen_t len = sizeof(client);

    // spin
    ros::Rate loop_rate(10);
    while (ros::ok()) {
        pthread_mutex_init(&mutex1, NULL);
        // accept new clients
        int new_sock = accept(sock, (struct sockaddr *)&client, &len);
        // ROS_INFO_STREAM("[g29 socket recv] accept!");
        char recvBuf[10] = {};
        if (new_sock > 0) {
            ROS_INFO("[g29 socket recv] G29 is connect. ( socket id: %d )",
                     new_sock);
            socks.push_back(new_sock);
            int socks_size = socks.size();
            ROS_INFO("[g29 socket recv] %d clients connected.", socks_size);
        } else {
            ROS_INFO("[g29 socket recv] Failed to accept socket.");
        }

        // create new thread to process
        user t;
        t.name = recvBuf;
        t.sock = new_sock;
        pthread_t id;
        pthread_create(&id, NULL, HandlerRequest, &t);
        pthread_mutex_destroy(&mutex1);

        ros::spinOnce();
        loop_rate.sleep();
    }

    return 0;
}
