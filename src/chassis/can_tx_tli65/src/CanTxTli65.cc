#include "CanTxTli65.h"

namespace zone3 {
namespace chassis {

using namespace std;

CanTxTli65::~CanTxTli65() {}

CanTxTli65::CanTxTli65(ros::NodeHandle &node, ros::NodeHandle &priv_nh)
    : throttle_msg_counter_(0), XBR_msg_counter_(0), EPB_msg_counter_(0),
      retarder_msg_counter_(0), steer_msg_counter_(0), gear_msg_counter_(0),
      hang_msg_counter_(0) {
    // get topic name
    priv_nh.param<string>("highspeed_topic", highspeed_topic_, "");
    priv_nh.param<string>("lowspeed_topic", lowspeed_topic_, "");
    priv_nh.param<string>("node_pub_topic", node_pub_topic_, "");

    // sub
    sub_highspeed_ =
        node.subscribe(highspeed_topic_, 1, &CanTxTli65::ProcHighspeed, this);
    sub_lowspeed_ =
        node.subscribe(lowspeed_topic_, 1, &CanTxTli65::ProcLowspeed, this);

    // pub
    pub_can_tx_ = node.advertise<can_msgs::Frame>(node_pub_topic_, 10);

    // timer
    timer_100_ = node.createTimer(ros::Duration(0.1),
                                  &CanTxTli65::Timer100Callback, this);
    timer_50_ = node.createTimer(ros::Duration(0.05),
                                 &CanTxTli65::Timer50Callback, this);
    timer_20_ = node.createTimer(ros::Duration(0.02),
                                 &CanTxTli65::Timer20Callback, this);
    timer_10_ = node.createTimer(ros::Duration(0.01),
                                 &CanTxTli65::Timer10Callback, this);
    // reset frame
    ResetFrame(hands_);
    ResetFrame(throttle_);
    ResetFrame(XBR_);
    ResetFrame(EPB_);
    ResetFrame(retarder_);
    ResetFrame(steer_);
    ResetFrame(gear_);
    ResetFrame(hang_);
    ResetFrame(light_);

    // 5663 *
    hands_.id = 0x1820FF2F;
    // 3791 *
    throttle_.id = 0xC20002F;
    // 7887 *
    XBR_.id = 0xC20102F;
    // 8143 *
    EPB_.id = 0xC20112F;
    // 8399 *
    retarder_.id = 0xC20122F;
    // 1983 *
    // for Tli90; 20202F for Tli65
    steer_.id = 0xC20202F;
    // 6079 *
    gear_.id = 0xC20302F;
    // 0175 *
    hang_.id = 0xC20402F;
    // 1343 *
    light_.id = 0x1820A02F;

    hands_ptr_ = reinterpret_cast<StruHands *>(hands_.data.elems);
    throttle_ptr_ = reinterpret_cast<StruThrottle *>(throttle_.data.elems);
    XBR_ptr_ = reinterpret_cast<StruXBR *>(XBR_.data.elems);
    EPB_ptr_ = reinterpret_cast<StruEPB *>(EPB_.data.elems);
    retarder_ptr_ = reinterpret_cast<StruRetarder *>(retarder_.data.elems);
    steer_ptr_ = reinterpret_cast<StruSteer *>(steer_.data.elems);
    gear_ptr_ = reinterpret_cast<StruGear *>(gear_.data.elems);
    hang_ptr_ = reinterpret_cast<StruHang *>(hang_.data.elems);
    light_ptr_ = reinterpret_cast<StruLight *>(light_.data.elems);

    hands_char_ptr_ = reinterpret_cast<uint8_t *>(hands_.data.elems);
    throttle_char_ptr_ = reinterpret_cast<uint8_t *>(throttle_.data.elems);
    XBR_char_ptr_ = reinterpret_cast<uint8_t *>(XBR_.data.elems);
    EPB_char_ptr_ = reinterpret_cast<uint8_t *>(EPB_.data.elems);
    retarder_char_ptr_ = reinterpret_cast<uint8_t *>(retarder_.data.elems);
    steer_char_ptr_ = reinterpret_cast<uint8_t *>(steer_.data.elems);
    gear_char_ptr_ = reinterpret_cast<uint8_t *>(gear_.data.elems);
    hang_char_ptr_ = reinterpret_cast<uint8_t *>(hang_.data.elems);
    light_char_ptr_ = reinterpret_cast<uint8_t *>(light_.data.elems);

    string str_hands = "MF_READY";
    strncpy(hands_ptr_->ASC, (char *)str_hands.c_str(), 8);
}

void CanTxTli65::ResetFrame(can_msgs::Frame &frame) {
    frame.header.frame_id = "chassis";
    frame.is_extended = true;
    frame.dlc = 8;
}

void CanTxTli65::ProcLowspeed(const control_msgs::LowspeedControl &msg) {
    hands_.header.stamp = msg.header.stamp;
    EPB_.header.stamp = msg.header.stamp;
    EPB_ptr_->active = static_cast<uint8_t>(msg.EPB_active);
    EPB_ptr_->EPB = static_cast<uint8_t>(msg.EPB);
    retarder_.header.stamp = msg.header.stamp;
    retarder_ptr_->active = static_cast<uint8_t>(msg.retarder_active);
    retarder_ptr_->retarder = static_cast<uint8_t>(round(msg.retarder + 125));
    gear_.header.stamp = msg.header.stamp;
    gear_ptr_->active = static_cast<uint8_t>(msg.gear_active);
    gear_ptr_->max_forward_gear =
        static_cast<uint8_t>(msg.max_forward_gear + 125);
    gear_ptr_->gear = static_cast<uint8_t>(msg.gear);
    hang_.header.stamp = msg.header.stamp;
    hang_ptr_->active = static_cast<uint8_t>(msg.hang_active);
    hang_ptr_->hang = static_cast<uint8_t>(msg.hang);
    light_.header.stamp = msg.header.stamp;
    light_ptr_->left = static_cast<uint8_t>(msg.left);
    light_ptr_->right = static_cast<uint8_t>(msg.right);
    light_ptr_->near = static_cast<uint8_t>(msg.near);
    light_ptr_->far = static_cast<uint8_t>(msg.far);
    light_ptr_->top_warn = static_cast<uint8_t>(msg.top_warn);
    light_ptr_->air_beep = static_cast<uint8_t>(msg.air_beep);
    light_ptr_->front_fog = static_cast<uint8_t>(msg.front_fog);
    light_ptr_->front_work = static_cast<uint8_t>(msg.front_work);
    light_ptr_->side = static_cast<uint8_t>(msg.side);
    light_ptr_->position = static_cast<uint8_t>(msg.position);
    light_ptr_->emergency = static_cast<uint8_t>(msg.emergency);
    light_ptr_->brake = static_cast<uint8_t>(msg.brake);
    light_ptr_->reverse = static_cast<uint8_t>(msg.reverse);
    light_ptr_->back_work = static_cast<uint8_t>(msg.back_work);
    light_ptr_->cooler = static_cast<uint8_t>(msg.cooler);
    light_ptr_->axle_diff = static_cast<uint8_t>(msg.axle_diff);
    light_ptr_->exhaust_brake = static_cast<uint8_t>(msg.exhaust_brake);
}

void CanTxTli65::ProcHighspeed(const control_msgs::HighspeedControl &msg) {
    throttle_.header.stamp = msg.header.stamp;
    throttle_ptr_->ignition = static_cast<uint8_t>(msg.ignition);

    throttle_ptr_->active = static_cast<uint8_t>(msg.throttle_active);
    throttle_ptr_->throttle_precentage =
        static_cast<uint8_t>(round(msg.throttle_precentage / 0.4));
    XBR_.header.stamp = msg.header.stamp;
    XBR_ptr_->active = static_cast<uint8_t>(msg.XBR_active);
    XBR_ptr_->XBR = static_cast<uint16_t>(round((msg.XBR + 15.687) * 2048));
    steer_.header.stamp = msg.header.stamp;
    steer_ptr_->active = static_cast<uint8_t>(msg.steer_active);
    steer_ptr_->steer_angle_rate = static_cast<uint8_t>(msg.steer_angle_rate);
    steer_ptr_->steer_angle =
        static_cast<uint16_t>(round((msg.steer + 1575) * 10));
}

uint32_t CanTxTli65::CalcChecksum7(uint8_t *ptr) {
    return ptr[0] + ptr[1] + ptr[2] + ptr[3] + ptr[4] + ptr[5] + ptr[6];
}

uint32_t checksum;

void CanTxTli65::Timer100Callback(const ros::TimerEvent &event) {
    // pub hands
    pub_can_tx_.publish(hands_);

    // pub EPB
    EPB_msg_counter_++;
    if (EPB_msg_counter_ == 16) {
        EPB_msg_counter_ = 1;
    }
    EPB_ptr_->msg_counter = EPB_msg_counter_;
    checksum = CalcChecksum7(EPB_char_ptr_) + EPB_msg_counter_;
    checksum = ((checksum >> 4) + checksum) & 0x0F;
    EPB_ptr_->checksum = static_cast<uint8_t>(checksum);
    pub_can_tx_.publish(EPB_);

    // pub retarder
    retarder_msg_counter_++;
    if (retarder_msg_counter_ == 16) {
        retarder_msg_counter_ = 1;
    }
    retarder_ptr_->msg_counter = retarder_msg_counter_;
    checksum = CalcChecksum7(retarder_char_ptr_) + retarder_msg_counter_;
    checksum = ((checksum >> 4) + checksum) & 0x0F;
    retarder_ptr_->checksum = static_cast<uint8_t>(checksum);
    pub_can_tx_.publish(retarder_);

    // pub hang
    hang_msg_counter_++;
    if (hang_msg_counter_ == 16) {
        hang_msg_counter_ = 1;
    }
    hang_ptr_->msg_counter = hang_msg_counter_;
    checksum = CalcChecksum7(hang_char_ptr_) + hang_msg_counter_;
    checksum = ((checksum >> 4) + checksum) & 0x0F;
    hang_ptr_->checksum = static_cast<uint8_t>(checksum);
    pub_can_tx_.publish(hang_);

    // pub light
    pub_can_tx_.publish(light_);
}

void CanTxTli65::Timer50Callback(const ros::TimerEvent &event) {
    // pub gear
    gear_msg_counter_++;
    if (gear_msg_counter_ == 16) {
        gear_msg_counter_ = 1;
    }
    gear_ptr_->msg_counter = gear_msg_counter_;
    checksum = CalcChecksum7(gear_char_ptr_) + gear_msg_counter_;
    checksum = ((checksum >> 4) + checksum) & 0x0F;
    gear_ptr_->checksum = static_cast<uint8_t>(checksum);
    pub_can_tx_.publish(gear_);
}

void CanTxTli65::Timer20Callback(const ros::TimerEvent &event) {
    // pub throttle
    throttle_msg_counter_++;
    if (throttle_msg_counter_ == 16) {
        throttle_msg_counter_ = 1;
    }
    throttle_ptr_->msg_counter = throttle_msg_counter_;
    checksum = CalcChecksum7(throttle_char_ptr_) + throttle_msg_counter_;
    checksum = ((checksum >> 4) + checksum) & 0x0F;
    throttle_ptr_->checksum = static_cast<uint8_t>(checksum);
    pub_can_tx_.publish(throttle_);

    // pub XBR
    XBR_msg_counter_++;
    if (XBR_msg_counter_ == 16) {
        XBR_msg_counter_ = 1;
    }
    XBR_ptr_->msg_counter = XBR_msg_counter_;
    checksum = CalcChecksum7(XBR_char_ptr_) + XBR_msg_counter_;
    checksum = ((checksum >> 4) + checksum) & 0x0F;
    XBR_ptr_->checksum = static_cast<uint8_t>(checksum);
    pub_can_tx_.publish(XBR_);
}

void CanTxTli65::Timer10Callback(const ros::TimerEvent &event) {
    // pub steer for Tli65
    steer_msg_counter_++;
    if (steer_msg_counter_ == 16) {
        steer_msg_counter_ = 1;
    }
    steer_ptr_->msg_counter = steer_msg_counter_;
    checksum = CalcChecksum7(steer_char_ptr_) + steer_msg_counter_;
    checksum = ((checksum >> 4) + checksum) & 0x0F;
    steer_ptr_->checksum = static_cast<uint8_t>(checksum);
    pub_can_tx_.publish(steer_);
}

} // namespace chassis
} // namespace zone3