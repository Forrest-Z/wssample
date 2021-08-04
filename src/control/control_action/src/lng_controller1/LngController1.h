#pragma once

#include "ControlStruct.h"
#include "Pid.h"
#include "planner_msgs/WayPoint.h"
#include <ros/ros.h>

namespace zone3 {
namespace control {

using namespace std;

// timer 50ms
class LngController1 {
  public:
    LngController1(double throttle_v_kp, double throttle_v_ki,
                   double throttle_v_kd,
                   vector<vector<double>> speed_throttle_curve,
                   double throttle_a_kp, double throttle_a_ki,
                   double throttle_a_kd, double xbr_v_kp, double xbr_v_ki,
                   double xbr_v_kd, vector<vector<double>> speed_xbr_curve,
                   double turn_speed_kp, double turn_speed_ki,
                   double turn_speed_kd,
                   vector<vector<double>> pedal_xbr_curve);
    LngController1();
    ~LngController1(){};

    double *Function(const TruckState &st);
    void ClearIntegral(int id);
    void ClearErrLast(int id);
    double *SetThrottleVK(const double kp, const double ki, const double kd);
    double *SetThrottleAK(const double kp, const double ki, const double kd);
    double *SetXbrVK(const double kp, const double ki, const double kd);
    double *SetXbrTurnK(const double kp, const double ki, const double kd);
    void SetSpeedThrottleCurve(vector<vector<double>> curve);
    void SetSpeedXbrCurve(vector<vector<double>> curve);
    void SetPedalXbrCurve(vector<vector<double>> curve);
    double SetDt(const double value);
    void Clamp(double &value, double upper_limit, double lower_limit);
    double Interpolate(double x, vector<vector<double>> map);

  private:
    double throttle_v_kp_ = 0.;
    double throttle_v_ki_ = 0.;
    double throttle_v_kd_ = 0.;
    vector<vector<double>> speed_throttle_curve_;
    double throttle_a_kp_ = 0.;
    double throttle_a_ki_ = 0.;
    double throttle_a_kd_ = 0.;
    double xbr_v_kp_ = 0.;
    double xbr_v_ki_ = 0.;
    double xbr_v_kd_ = 0.;
    vector<vector<double>> speed_xbr_curve_;
    double turn_speed_kp_ = 0.;
    double turn_speed_ki_ = 0.;
    double turn_speed_kd_ = 0.;
    vector<vector<double>> pedal_xbr_curve_;
    shared_ptr<Pid> throttle_v_pid_ptr_;
    shared_ptr<Pid> throttle_a_pid_ptr_;
    shared_ptr<Pid> xbr_v_pid_ptr_;
    shared_ptr<Pid> xbr_turn_pid_ptr_;
    double dt_ = 0.05;
};

} // namespace control
} // namespace zone3