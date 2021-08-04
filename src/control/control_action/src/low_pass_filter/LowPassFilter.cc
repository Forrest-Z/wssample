#include "LowPassFilter.h"

namespace zone3 {

double LowPassFilter::Function(double value, double value_percentage) {
    double tmp =
        value_percentage * value + (1 - value_percentage) * last_result_;
    last_result_ = tmp;
    return last_result_;
}

void LowPassFilter::Clear(double value) { last_result_ = value; }

} // namespace zone3