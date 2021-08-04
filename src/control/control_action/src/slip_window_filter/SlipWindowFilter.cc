#include "SlipWindowFilter.h"

namespace zone3 {

double SlipWindowFilter::Function(double value, int length) {
    deq_.push_front(value);
    if (deq_.size() > length) {
        deq_.pop_back();
    }
    double sum = 0.0;

    for (deque<double>::iterator i = deq_.begin(); i != deq_.end(); i++) {
        sum += *i;
    }
    if (!deq_.empty()) {
        return sum / deq_.size();
    } else {
        return 1e-10;
    }
}

void SlipWindowFilter::Clear() {
    deq_.clear();
    return;
}

} // namespace zone3