#pragma once

#include <ros/ros.h>

namespace zone3 {

using namespace std;

class PurePursuit {
  public:
    PurePursuit(){};
    ~PurePursuit(){};

    // in ego coordinate
    // return : steer angle in degree
    double PPFunction(double x, double y, double base, double ratio);

  private:
};

} // namespace zone3