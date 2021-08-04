#include "PurePursuit.h"

namespace zone3 {

// in ego coordinate
// return : steer angle in degree
double PurePursuit::PPFunction(double x, double y, double base, double ratio) {
    double wheel_angle =
        atan(2 * y * base / (y * y + x * x + 1e-10)) * 180 / M_PI;
    // tli90, use front wheel angle
    // tli65, use steer angle
    double steer_angle = wheel_angle * ratio;
    return steer_angle;
}

} // namespace zone3