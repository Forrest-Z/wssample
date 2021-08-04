#pragma once

#include <can_msgs/Frame.h>
#include <ros/ros.h>

#include "control_msgs/HighspeedControl.h"
#include "control_msgs/LowspeedControl.h"

namespace zone3 {
namespace chassis {

using namespace std;

#pragma pack(1)

typedef struct {
    char ASC[8];
} StruHands;

typedef struct {
    uint8_t throttle_precentage;
    uint8_t ignition;
    uint16_t : 16;
    uint16_t : 16;
    uint8_t active;
    uint8_t checksum : 4;
    uint8_t msg_counter : 4;
} StruThrottle;

typedef struct {
    uint16_t XBR;
    uint16_t : 16;
    uint16_t : 16;
    uint8_t active;
    uint8_t checksum : 4;
    uint8_t msg_counter : 4;
} StruXBR;

typedef struct {
    uint8_t EPB;
    uint8_t : 8;
    uint16_t : 16;
    uint16_t : 16;
    uint8_t active;
    uint8_t checksum : 4;
    uint8_t msg_counter : 4;
} StruEPB;

typedef struct {
    uint8_t retarder;
    uint8_t : 8;
    uint16_t : 16;
    uint16_t : 16;
    uint8_t active;
    uint8_t checksum : 4;
    uint8_t msg_counter : 4;
} StruRetarder;

// for Tli65
typedef struct {
    uint16_t steer_angle;
    uint16_t : 16;
    uint8_t steer_angle_rate;
    uint8_t : 8;
    uint8_t active;
    uint8_t checksum : 4;
    uint8_t msg_counter : 4;
} StruSteer;

// for Tli90
/*typedef struct {
    uint16_t steer_angle;
    uint16_t steer_angle1; // to assgin 'FF' for testing
    uint8_t steer_mode1;   // to assgin 'FF' for testing
    uint8_t steer_mode;
    uint8_t active;
    uint8_t checksum : 4;
    uint8_t msg_counter : 4;
} StruSteer;*/

typedef struct {
    uint8_t gear;
    uint8_t max_forward_gear;
    uint16_t : 16;
    uint16_t : 16;
    uint8_t active;
    uint8_t checksum : 4;
    uint8_t msg_counter : 4;
} StruGear;

typedef struct {
    uint8_t hang;
    uint8_t : 8;
    uint16_t : 16;
    uint16_t : 16;
    uint8_t active;
    uint8_t checksum : 4;
    uint8_t msg_counter : 4;
} StruHang;

typedef struct {
    uint8_t left : 2;
    uint8_t right : 2;
    uint8_t near : 2;
    uint8_t far : 2;
    uint8_t top_warn : 2;
    uint8_t air_beep : 2;
    uint8_t front_fog : 2;
    uint8_t front_work : 2;
    uint8_t side : 2;
    uint8_t position : 2;
    uint8_t emergency : 2;
    uint8_t brake : 2;
    uint8_t reverse : 2;
    uint8_t back_work : 2;
    uint8_t : 4;
    uint8_t cooler : 2;
    uint8_t : 2;
    uint8_t axle_diff : 2;
    uint8_t : 2;
    uint8_t exhaust_brake : 2;
    uint8_t : 6;
    uint16_t : 16;
} StruLight;

#pragma pack()

class CanTxTli65 {
  public:
    CanTxTli65(ros::NodeHandle &node, ros::NodeHandle &priv_nh);
    ~CanTxTli65();

  private:
    string hands_topic_;
    string throttle_topic_;
    string xbr_topic_;
    string epb_topic_;
    string retarder_topic_;
    string steer_topic_;
    string gear_topic_;
    string hang_topic_;
    string light_topic_;
    string node_pub_topic_;
    uint8_t throttle_msg_counter_ = 0;
    uint8_t XBR_msg_counter_ = 0;
    uint8_t EPB_msg_counter_ = 0;
    uint8_t retarder_msg_counter_ = 0;
    uint8_t steer_msg_counter_ = 0;
    uint8_t gear_msg_counter_ = 0;
    uint8_t hang_msg_counter_ = 0;

    can_msgs::Frame hands_;
    can_msgs::Frame throttle_;
    can_msgs::Frame XBR_;
    can_msgs::Frame EPB_;
    can_msgs::Frame retarder_;
    can_msgs::Frame steer_;
    can_msgs::Frame gear_;
    can_msgs::Frame hang_;
    can_msgs::Frame light_;

    StruHands *hands_ptr_;
    StruThrottle *throttle_ptr_;
    StruXBR *XBR_ptr_;
    StruEPB *EPB_ptr_;
    StruRetarder *retarder_ptr_;
    StruSteer *steer_ptr_;
    StruGear *gear_ptr_;
    StruHang *hang_ptr_;
    StruLight *light_ptr_;

    uint8_t *hands_char_ptr_;
    uint8_t *throttle_char_ptr_;
    uint8_t *XBR_char_ptr_;
    uint8_t *EPB_char_ptr_;
    uint8_t *retarder_char_ptr_;
    uint8_t *steer_char_ptr_;
    uint8_t *gear_char_ptr_;
    uint8_t *hang_char_ptr_;
    uint8_t *light_char_ptr_;

    void ProcHands(const control_msgs::LowspeedControl &msg);
    void ProcThottle(const control_msgs::HighspeedControl &msg);
    void ProcXbr(const control_msgs::HighspeedControl &msg);
    void ProcEpb(const control_msgs::LowspeedControl &msg);
    void ProcRetarder(const control_msgs::LowspeedControl &msg);
    void ProcSteer(const control_msgs::HighspeedControl &msg);
    void ProcGear(const control_msgs::LowspeedControl &msg);
    void ProcHang(const control_msgs::LowspeedControl &msg);
    void ProcLight(const control_msgs::LowspeedControl &msg);

    void Timer100Callback(const ros::TimerEvent &event);
    void Timer50Callback(const ros::TimerEvent &event);
    void Timer20Callback(const ros::TimerEvent &event);
    void Timer10Callback(const ros::TimerEvent &event);

    void ResetFrame(can_msgs::Frame &frame);
    uint32_t CalcChecksum7(uint8_t *ptr);

    // sub
    ros::Subscriber sub_hands_;
    ros::Subscriber sub_throttle_;
    ros::Subscriber sub_xbr_;
    ros::Subscriber sub_epb_;
    ros::Subscriber sub_retarder_;
    ros::Subscriber sub_steer_;
    ros::Subscriber sub_gear_;
    ros::Subscriber sub_hang_;
    ros::Subscriber sub_light_;

    // pub
    ros::Publisher pub_can_tx_;

    ros::Timer timer_100_;
    ros::Timer timer_50_;
    ros::Timer timer_20_;
    ros::Timer timer_10_;
};

} // namespace chassis
} // namespace zone3