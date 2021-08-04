#include "Pid.h"

namespace zone3 {

Pid::Pid(double kp, double ki, double kd, double upper, double lower)
    : kp_(kp), ki_(ki), kd_(kd), clip_upper_limit_(upper),
      clip_lower_limit_(lower){};

// current value, target value
double Pid::PidFunction(const double current_value, const double target_value) {
    double error = target_value - current_value;
    double control_value =
        kp_ * error + ki_ * integral_ + kd_ * (error - error_last_) / dt_;

    if ((control_value > clip_upper_limit_ && error * ki_ >= 0) ||
        (control_value < clip_lower_limit_ && error * ki_ < 0)) {
    } else {
        integral_ = integral_ + error * dt_;
    }

    Clamp(control_value, clip_lower_limit_, clip_upper_limit_);

    error_last_ = error;
    return control_value;
}

void Pid::Clamp(double &value, double lower_limit, double upper_limit) {
    value = min(max(value, lower_limit), upper_limit);
}

void Pid::ClearIntegral() { integral_ = 0; }

void Pid::ClearErrLast() { error_last_ = 0; }

double Pid::SetKp(const double value) {
    kp_ = value;
    return kp_;
}

double Pid::SetKi(const double value) {
    ki_ = value;
    return ki_;
}

double Pid::SetKd(const double value) {
    kd_ = value;
    return kd_;
}

double Pid::SetDt(const double value) {
    dt_ = value;
    return dt_;
}

double Pid::SetUpperLimit(const double value) {
    clip_upper_limit_ = value;
    return clip_upper_limit_;
}

double Pid::SetLowerLimit(const double value) {
    clip_lower_limit_ = value;
    return clip_lower_limit_;
}

} // namespace zone3