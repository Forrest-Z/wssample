#pragma once

#include <ros/ros.h>

namespace zone3 {

using namespace std;

class Pid {
  public:
    Pid(double kp, double ki, double kd, double upper, double lower);
    Pid(){};
    ~Pid(){};

    double PidFunction(const double current_value, const double target_value);
    void Clamp(double &value, double lower_limit, double upper_limit);
    void ClearIntegral();
    void ClearErrLast();
    double SetKp(const double value);
    double SetKi(const double value);
    double SetKd(const double value);
    double SetDt(const double value);
    double SetUpperLimit(const double value);
    double SetLowerLimit(const double value);

  private:
    double integral_ = 0.;
    double error_last_ = 0.;
    double kp_ = 0.;
    double ki_ = 0.;
    double kd_ = 0.;
    double dt_ = 0.05;
    double clip_upper_limit_ = 999.;
    double clip_lower_limit_ = -999.;
};

} // namespace zone3