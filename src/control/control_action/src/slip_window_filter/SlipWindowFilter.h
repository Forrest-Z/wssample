#pragma once

#include <deque>
#include <ros/ros.h>

namespace zone3 {

using namespace std;

class SlipWindowFilter {
  public:
    SlipWindowFilter(){};
    ~SlipWindowFilter(){};
    double Function(double value, int length);
    void Clear();

  private:
    deque<double> deq_;
};

} // namespace zone3