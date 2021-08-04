#include "collisiondetection.h"

using namespace HybridAStar;

CollisionDetection::CollisionDetection() {
    this->grid = nullptr;
    Lookup::collisionLookup(collisionLookup);
}

bool CollisionDetection::configurationTest(float x, float y, float t) const {
    int X_index = (int)(x / Constants::cellSize);
    int Y_index = (int)(y / Constants::cellSize);
    int iX = (int)((x - X_index * Constants::cellSize) *
                   Constants::positionResolution / Constants::cellSize);
    iX = iX > 0 ? iX : 0;
    int iY = (int)((y - Y_index * Constants::cellSize) *
                   Constants::positionResolution / Constants::cellSize);
    iY = iY > 0 ? iY : 0;
    int iT = (int)(t / Constants::deltaHeadingRad);
    int idx = iY * Constants::positionResolution * Constants::headings +
              iX * Constants::headings + iT;
    int cX;
    int cY;

    for (int i = 0; i < collisionLookup[idx].length; ++i) {
        cX = (X_index + collisionLookup[idx].pos[i].x) * Constants::cellSize;
        cY = (Y_index + collisionLookup[idx].pos[i].y) * Constants::cellSize;

        // make sure the configuration coordinates are actually on the grid
        // in the map
        if (cX >= 0 && cX < grid->info.width && cY >= 0 &&
            cY < grid->info.height) {
            if (grid->data[cY * grid->info.width + cX]) {
                // collision happens
                return false;
            }
        }
        // out of map
        else {
            return false;
        }
    }

    return true;
}