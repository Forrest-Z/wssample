#pragma once

#include "ControlStruct.h"
#include "Pid.h"
#include "PurePursuit.h"
#include <ros/ros.h>

namespace zone3 {
namespace control {

using namespace std;

// timer 50ms
class LatController1 {
  public:
    LatController1();
    ~LatController1(){};

    double Function(TruckState &st);
    void ClearIntegral();
    void ClearErrLast();
    double *SetYawRateK(const double kp, const double ki, const double kd);
    void SetSpeedSteerCurve(vector<vector<double>> curve);
    double SetDt(const double value);
    void Clamp(double &value, double upper_limit, double lower_limit);
    double Interpolate(double x, vector<vector<double>> map);

  private:
    double yawrate_kp_ = 0.;
    double yawrate_ki_ = 0.;
    double yawrate_kd_ = 0.;
    vector<vector<double>> speed_steer_curve_;
    shared_ptr<Pid> yawrate_pid_ptr_;
    shared_ptr<PurePursuit> pp_ptr_;
    double dt_ = 0.05;
    double max_steer_angle_ = 0.;
    double min_steer_angle_ = 0.;
    double axle_base1_ = 0.;
    double steer_to_wheel_ratio_ = 0.;
};

} // namespace control
} // namespace zone3