#pragma once

#include <ros/ros.h>

namespace zone3 {

using namespace std;

class LowPassFilter {
  public:
    LowPassFilter(){};
    ~LowPassFilter(){};
    double Function(double value, double value_percentage = 0.2);
    void Clear(double value);

  private:
    double last_result_ = 0;
};

} // namespace zone3