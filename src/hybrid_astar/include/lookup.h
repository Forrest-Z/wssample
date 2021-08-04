#ifndef COLLISIONLOOKUP
#define COLLISIONLOOKUP

#include "constants.h"
#include "dubins.h"
#include <cstring>
#include <iostream>
#include <ros/ros.h>

namespace HybridAStar {
namespace Lookup {

//###################################################
//                                   COLLISION LOOKUP
//###################################################

// _____________
// SIGN FUNCTION
inline int sign(double x) {
    if (x >= 0) {
        return 1;
    } else {
        return -1;
    }
}

// _________________________
// COLLISION LOOKUP CREATION
void collisionLookup(Constants::config *lookup);

} // namespace Lookup
} // namespace HybridAStar

#endif // LOOKUP
