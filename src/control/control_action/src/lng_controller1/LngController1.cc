#include "LngController1.h"

namespace zone3 {
namespace control {

LngController1::LngController1()
    : throttle_v_pid_ptr_(
          new Pid(throttle_v_kp_, throttle_v_ki_, throttle_v_kd_, 99, 0)),
      throttle_a_pid_ptr_(
          new Pid(throttle_a_kp_, throttle_a_ki_, throttle_a_kd_, 0, -50)),
      xbr_v_pid_ptr_(new Pid(xbr_v_kp_, xbr_v_ki_, xbr_v_kd_, 0, -4)),
      xbr_turn_pid_ptr_(
          new Pid(turn_speed_kp_, turn_speed_ki_, turn_speed_kd_, 0, -2)) {}

LngController1::LngController1(
    double throttle_v_kp, double throttle_v_ki, double throttle_v_kd,
    vector<vector<double>> speed_throttle_curve, double throttle_a_kp,
    double throttle_a_ki, double throttle_a_kd, double xbr_v_kp,
    double xbr_v_ki, double xbr_v_kd, vector<vector<double>> speed_xbr_curve,
    double turn_speed_kp, double turn_speed_ki, double turn_speed_kd,
    vector<vector<double>> pedal_xbr_curve)
    : throttle_v_kp_(throttle_v_kp), throttle_v_ki_(throttle_v_ki),
      throttle_v_kd_(throttle_v_kd),
      speed_throttle_curve_(speed_throttle_curve),
      throttle_a_kp_(throttle_a_kp), throttle_a_ki_(throttle_a_ki),
      throttle_a_kd_(throttle_a_kd), xbr_v_kp_(xbr_v_kp), xbr_v_ki_(xbr_v_ki),
      xbr_v_kd_(xbr_v_kd), speed_xbr_curve_(speed_xbr_curve),
      turn_speed_kp_(turn_speed_kp), turn_speed_ki_(turn_speed_ki),
      turn_speed_kd_(turn_speed_kd), pedal_xbr_curve_(pedal_xbr_curve) {
    throttle_v_pid_ptr_ =
        make_shared<Pid>(throttle_v_kp_, throttle_v_ki_, throttle_v_kd_, 99, 0);
    throttle_a_pid_ptr_ = make_shared<Pid>(throttle_a_kp_, throttle_a_ki_,
                                           throttle_a_kd_, 0, -50);
    xbr_v_pid_ptr_ = make_shared<Pid>(xbr_v_kp_, xbr_v_ki_, xbr_v_kd_, 0, -4);
    xbr_turn_pid_ptr_ =
        make_shared<Pid>(turn_speed_kp_, turn_speed_ki_, turn_speed_kd_, 0, -4);
}

double LngController1::Interpolate(double x, vector<vector<double>> map) {
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

void LngController1::Clamp(double &value, double upper_limit,
                           double lower_limit) {
    value = min(max(value, lower_limit), upper_limit);
}

double *LngController1::Function(const TruckState &st) {
    double current_value = st.kalman_vx;
    double target_value = st.target_vx;
    double tmp = st.kalman_vx * st.target_vx;
    if (tmp < 0) {
        target_value = 0;
    } else if (tmp > 0) {
        if (current_value < 0) {
            current_value *= -1;
            target_value *= -1;
        }
    }

    double xbr, throttle;
    // xbr speed pid controller
    double xbr_comp1 = xbr_v_pid_ptr_->PidFunction(current_value, target_value);
    xbr_comp1 *= Interpolate(fabs(st.kalman_vx), speed_xbr_curve_);
    // xbr turn pid controller, when turning, no more than 3 m/s
    double xbr_comp2 = 0;
    // in degree
    if (fabs(st.target_steer) > 200) {
        xbr_comp2 = xbr_turn_pid_ptr_->PidFunction(fabs(st.kalman_vx), 3);
    } else {
        // just add integral
        xbr_turn_pid_ptr_->PidFunction(current_value, target_value);
        xbr_comp2 = 0;
    }
    // xbr output
    xbr = xbr_comp1 + xbr_comp2 + st.target_xbr;

    // ROS_ERROR_STREAM("xbr : " << st.vx_ego << ", " << st.target_vx_ego << ",
    // "
    //                           << xbr);

    Clamp(xbr, 0, -3);

    // throttle speed pid controller
    // use trick "target_value + 1"
    // because pid is slower than the ground truth
    if (fabs(st.kalman_vx) < 1) {
        current_value -= st.target_vx;
    }
    double throttle_comp1 =
        throttle_v_pid_ptr_->PidFunction(current_value, target_value + 1);
    // ROS_ERROR_STREAM("thr1 : " << current_value << ", " << target_value + 1
    //                            << ", " << throttle_comp1);
    throttle_comp1 *= Interpolate(fabs(st.kalman_vx), speed_throttle_curve_);

    // acceleration comfort pid controller, no more than 0.5 m/s/s
    double throttle_comp2 = throttle_a_pid_ptr_->PidFunction(st.gps_acc, 0.5);
    // ROS_ERROR_STREAM("thr2 : " << st.gps_acc << ", " << throttle_comp2);
    // throttle output
    throttle = throttle_comp1 + throttle_comp2 + st.target_throttle;
    // ROS_ERROR_STREAM("thr3 : " << st.target_throttle_percentage);

    // ROS_ERROR_STREAM("thr : " << st.vx_ego << ", " << st.target_vx_ego << ",
    // "
    //                           << throttle);

    // for stable
    if (fabs(st.current_lat_error) > 0.5) {
        Clamp(throttle, 30, 0);
    } else {
        Clamp(throttle, 65, 0);
    }

    if (xbr < -0.2) {
        throttle = 0;
    }
    // xbr not too often
    if (xbr > -1) {
        xbr = 0;
    }

    static double p[2];
    p[0] = throttle;
    p[1] = xbr;
    return p;
} // namespace zone3

void LngController1::ClearIntegral(int id) {
    switch (id) {
    case THROTTLE_V_PID:
        throttle_v_pid_ptr_->ClearIntegral();
        break;

    case THROTTLE_A_PID:
        throttle_a_pid_ptr_->ClearIntegral();
        break;

    case XBR_V_PID:
        xbr_v_pid_ptr_->ClearIntegral();
        break;

    case VBR_TURN_PID:
        xbr_turn_pid_ptr_->ClearIntegral();
        break;

    default:
        break;
    }
}

void LngController1::ClearErrLast(int id) {
    switch (id) {
    case THROTTLE_V_PID:
        throttle_v_pid_ptr_->ClearErrLast();
        break;

    case THROTTLE_A_PID:
        throttle_a_pid_ptr_->ClearErrLast();
        break;

    case XBR_V_PID:
        xbr_v_pid_ptr_->ClearErrLast();
        break;

    case VBR_TURN_PID:
        xbr_turn_pid_ptr_->ClearErrLast();
        break;

    default:
        break;
    }
}

double *LngController1::SetThrottleVK(const double kp, const double ki,
                                      const double kd) {
    double throttle_v_kp_ = kp;
    double throttle_v_ki_ = ki;
    double throttle_v_kd_ = kd;
    throttle_v_pid_ptr_->SetKp(kp);
    throttle_v_pid_ptr_->SetKi(ki);
    throttle_v_pid_ptr_->SetKd(kd);
    static double p[3] = {throttle_v_kp_, throttle_v_ki_, throttle_v_kd_};
    return p;
}

double *LngController1::SetThrottleAK(const double kp, const double ki,
                                      const double kd) {
    double throttle_a_kp_ = kp;
    double throttle_a_ki_ = ki;
    double throttle_a_kd_ = kd;
    throttle_a_pid_ptr_->SetKp(kp);
    throttle_a_pid_ptr_->SetKi(ki);
    throttle_a_pid_ptr_->SetKd(kd);
    static double p[3] = {throttle_a_kp_, throttle_a_ki_, throttle_a_kd_};
    return p;
}

double *LngController1::SetXbrVK(const double kp, const double ki,
                                 const double kd) {
    double xbr_v_kp_ = kp;
    double xbr_v_ki_ = ki;
    double xbr_v_kd_ = kd;
    xbr_v_pid_ptr_->SetKp(kp);
    xbr_v_pid_ptr_->SetKi(ki);
    xbr_v_pid_ptr_->SetKd(kd);
    static double p[3] = {xbr_v_kp_, xbr_v_ki_, xbr_v_kd_};
    return p;
}

double *LngController1::SetXbrTurnK(const double kp, const double ki,
                                    const double kd) {
    double turn_speed_kp_ = kp;
    double turn_speed_ki_ = ki;
    double turn_speed_kd_ = kd;
    xbr_turn_pid_ptr_->SetKp(kp);
    xbr_turn_pid_ptr_->SetKi(ki);
    xbr_turn_pid_ptr_->SetKd(kd);
    static double p[3] = {turn_speed_kp_, turn_speed_ki_, turn_speed_kd_};
    return p;
}

void LngController1::SetSpeedThrottleCurve(vector<vector<double>> curve) {
    speed_throttle_curve_ = curve;
}

void LngController1::SetSpeedXbrCurve(vector<vector<double>> curve) {
    speed_xbr_curve_ = curve;
}

void LngController1::SetPedalXbrCurve(vector<vector<double>> curve) {
    pedal_xbr_curve_ = curve;
}

double LngController1::SetDt(const double value) {
    dt_ = value;
    throttle_v_pid_ptr_->SetDt(value);
    throttle_a_pid_ptr_->SetDt(value);
    xbr_v_pid_ptr_->SetDt(value);
    xbr_turn_pid_ptr_->SetDt(value);
}

} // namespace control
} // namespace zone3