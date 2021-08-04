#include "LatController1.h"

namespace zone3 {
namespace control {

LatController1::LatController1()
    : pp_ptr_(new PurePursuit()),
      yawrate_pid_ptr_(new Pid(yawrate_kp_, yawrate_ki_, yawrate_kd_, 0, 0)) {
    ros::NodeHandle node;
    ros::NodeHandle priv_nh("~");
    // get params
    node.param<double>("/truck/axle_base1", axle_base1_, 3.5);
    node.param<double>("/truck/steer_to_wheel_ratio", steer_to_wheel_ratio_,
                       1.5);
    node.param<double>("/truck/max_steer_angle", max_steer_angle_, 800.0);
    node.param<double>("/truck/min_steer_angle", min_steer_angle_, -800.0);
}

double LatController1::Interpolate(double x, vector<vector<double>> map) {
    int size = map.size();
    for (auto i = 0; i < size - 1; i++) {
        if (x >= map[i][0] && x < map[i + 1][0]) {
            return map[i][1] + (x - map[i][0]) * (map[i + 1][1] - map[i][1]) /
                                   (map[i + 1][0] - map[i][0]);
        }
    }
    if (x < map[0][0]) {
        return map[0][1];
    } else {
        return map[size - 1][1];
    }
}

void LatController1::Clamp(double &value, double upper_limit,
                           double lower_limit) {
    value = min(max(value, lower_limit), upper_limit);
}

double LatController1::Function(TruckState &st) {
    double steer;
    // PurePursuit controller
    double steer1 = pp_ptr_->PPFunction(st.target_x, st.target_y, axle_base1_,
                                        steer_to_wheel_ratio_);
    steer1 *= Interpolate(fabs(st.kalman_vx), speed_steer_curve_);
    // yawrate pid controller
    double steer2 =
        yawrate_pid_ptr_->PidFunction(st.kalman_yawrate, st.target_yawrate);
    // steer output
    steer = steer1 + steer2;
    Clamp(steer, max_steer_angle_, min_steer_angle_);

    // ROS_ERROR_STREAM("steer : " << steer1 << ", " << steer2 << ", "
    //                             << ",,,, ");

    return steer;
}

void LatController1::ClearIntegral() { yawrate_pid_ptr_->ClearIntegral(); }

void LatController1::ClearErrLast() { yawrate_pid_ptr_->ClearErrLast(); }

double *LatController1::SetYawRateK(const double kp, const double ki,
                                    const double kd) {
    double yawrate_kp_ = kp;
    double yawrate_ki_ = ki;
    double yawrate_kd_ = kd;
    yawrate_pid_ptr_->SetKp(kp);
    yawrate_pid_ptr_->SetKi(ki);
    yawrate_pid_ptr_->SetKd(kd);
    yawrate_pid_ptr_->SetUpperLimit(max_steer_angle_);
    yawrate_pid_ptr_->SetLowerLimit(min_steer_angle_);
    static double p[3] = {yawrate_kp_, yawrate_ki_, yawrate_kd_};
    return p;
}

void LatController1::SetSpeedSteerCurve(vector<vector<double>> curve) {
    speed_steer_curve_ = curve;
}

double LatController1::SetDt(const double value) {
    dt_ = value;
    yawrate_pid_ptr_->SetDt(value);
}

} // namespace control
} // namespace zone3