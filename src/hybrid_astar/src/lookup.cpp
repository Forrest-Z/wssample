#include "lookup.h"

namespace HybridAStar {
namespace Lookup {

using namespace std;

// _________________________
// COLLISION LOOKUP CREATION
void collisionLookup(Constants::config *lookup) {
    std::cout << "I am building the collision lookup table...";
    // cell size
    const float cSize = Constants::cellSize;
    // bounding box size length/width
    const int size = Constants::bbSize;

    // 2021.3 xuy, point for rear axle center
    const float rear_axle_to_bbox_center =
        Constants::length / 2 - Constants::back_axle_to_back;

    struct point {
        double x;
        double y;
    };

    // ______________________
    // VARIABLES FOR ROTATION
    // center of the rectangle
    point c;
    point temp;
    // points of the rectangle
    point p[4];
    point nP[4];

    // turning angle
    double theta;

    // ____________________________
    // VARIABLES FOR GRID TRAVERSAL
    // vector for grid traversal
    point t;
    point start;
    point end;
    // cell index
    int X;
    int Y;
    // t value for crossing vertical and horizontal boundary
    double tMaxX;
    double tMaxY;
    // t value for width/heigth of cell
    double tDeltaX;
    double tDeltaY;
    // positive or negative step direction
    int stepX;
    int stepY;
    // grid
    bool cSpace[size * size];
    bool inside = false;
    int hcross1 = 0;
    int hcross2 = 0;

    // _____________________________
    // VARIABLES FOR LOOKUP CREATION
    int count = 0;
    const int positionResolution = Constants::positionResolution;
    const int positions = Constants::positions;
    point points[positions];

    // generate all discrete positions within one cell
    for (int i = 0; i < positionResolution; ++i) {
        for (int j = 0; j < positionResolution; ++j) {
            points[positionResolution * i + j].x =
                1.f / positionResolution * (j + 0.5);
            points[positionResolution * i + j].y =
                1.f / positionResolution * (i + 0.5);
        }
    }

    for (int q = 0; q < positions; ++q) {
        // set the starting angle to zero;
        theta = 0;

        // 2021.3 xuy "double" to "int"
        // set points of rectangle(bbox)
        c.x = (int)(size / 2) + points[q].x;
        c.y = (int)(size / 2) + points[q].y;

        p[0].x = c.x - Constants::length / 2 / cSize +
                 rear_axle_to_bbox_center / cSize;
        p[0].y = c.y - Constants::width / 2 / cSize;

        p[1].x = c.x - Constants::length / 2 / cSize +
                 rear_axle_to_bbox_center / cSize;
        p[1].y = c.y + Constants::width / 2 / cSize;

        p[2].x = c.x + Constants::length / 2 / cSize +
                 rear_axle_to_bbox_center / cSize;
        p[2].y = c.y + Constants::width / 2 / cSize;

        p[3].x = c.x + Constants::length / 2 / cSize +
                 rear_axle_to_bbox_center / cSize;
        p[3].y = c.y - Constants::width / 2 / cSize;

        for (int o = 0; o < Constants::headings; ++o) {
            // initialize cSpace
            for (int i = 0; i < size; ++i) {
                for (int j = 0; j < size; ++j) {
                    cSpace[i * size + j] = false;
                }
            }

            // shape rotation
            for (int j = 0; j < 4; ++j) {
                // translate point to origin
                temp.x = p[j].x - c.x;
                temp.y = p[j].y - c.y;

                // rotate and shift back
                nP[j].x = temp.x * cos(theta) - temp.y * sin(theta) + c.x;
                nP[j].y = temp.x * sin(theta) + temp.y * cos(theta) + c.y;
            }

            // create the next angle
            theta += Constants::deltaHeadingRad;

            // cell traversal clockwise
            for (int k = 0; k < 4; ++k) {
                // create the vectors clockwise
                if (k < 3) {
                    start = nP[k];
                    end = nP[k + 1];
                } else {
                    start = nP[k];
                    end = nP[0];
                }

                // set indexes
                X = (int)start.x;
                Y = (int)start.y;
                //      std::cout << "StartCell: " << X << "," << Y <<
                //      std::endl;
                cSpace[Y * size + X] = true;
                t.x = end.x - start.x;
                t.y = end.y - start.y;
                stepX = sign(t.x);
                stepY = sign(t.y);

                // width and height normalized by t
                if (t.x != 0) {
                    tDeltaX = 1.f / std::abs(t.x);
                } else {
                    tDeltaX = 1000;
                }

                if (t.y != 0) {
                    tDeltaY = 1.f / std::abs(t.y);
                } else {
                    tDeltaY = 1000;
                }

                // set maximum traversal values
                if (stepX > 0) {
                    tMaxX = tDeltaX * (1 - (start.x - (long)start.x));
                } else {
                    tMaxX = tDeltaX * (start.x - (long)start.x);
                }

                if (stepY > 0) {
                    tMaxY = tDeltaY * (1 - (start.y - (long)start.y));
                } else {
                    tMaxY = tDeltaY * (start.y - (long)start.y);
                }

                while ((int)end.x != X || (int)end.y != Y) {
                    // only increment x if the t length is smaller and the
                    // result will be closer to the goal
                    if (tMaxX < tMaxY && std::abs(X + stepX - (int)end.x) <
                                             std::abs(X - (int)end.x)) {
                        tMaxX = tMaxX + tDeltaX;
                        X = X + stepX;
                        cSpace[Y * size + X] = true;
                        // only increment y if the t length is smaller and the
                        // result will be closer to the goal
                    } else if (tMaxY < tMaxX &&
                               std::abs(Y + stepY - (int)end.y) <
                                   std::abs(Y - (int)end.y)) {
                        tMaxY = tMaxY + tDeltaY;
                        Y = Y + stepY;
                        cSpace[Y * size + X] = true;
                    } else if (2 >= std::abs(X - (int)end.x) +
                                        std::abs(Y - (int)end.y)) {
                        if (std::abs(X - (int)end.x) >
                            std::abs(Y - (int)end.y)) {
                            X = X + stepX;
                            cSpace[Y * size + X] = true;
                        } else {
                            Y = Y + stepY;
                            cSpace[Y * size + X] = true;
                        }
                    } else {
                        // this SHOULD NOT happen
                        std::cout << "\n--->tie occured, please check for "
                                     "error in script\n";
                        break;
                    }
                }
            }

            // FILL THE SHAPE
            for (int i = 0; i < size; ++i) {
                // set inside to false
                inside = false;

                for (int j = 0; j < size; ++j) {
                    // determine horizontal crossings
                    for (int k = 0; k < size; ++k) {
                        if (cSpace[i * size + k] && !inside) {
                            hcross1 = k;
                            inside = true;
                        }

                        if (cSpace[i * size + k] && inside) {
                            hcross2 = k;
                        }
                    }

                    // if inside fill
                    if (j > hcross1 && j < hcross2 && inside) {
                        cSpace[i * size + j] = true;
                    }
                }
            }

            // GENERATE THE ACTUAL LOOKUP
            count = 0;

            for (int i = 0; i < size; ++i) {
                for (int j = 0; j < size; ++j) {
                    if (cSpace[i * size + j]) {
                        // compute the relative position of the car cells
                        lookup[q * Constants::headings + o].pos[count].x =
                            j - (int)c.x;
                        lookup[q * Constants::headings + o].pos[count].y =
                            i - (int)c.y;
                        // add one for the length of the current list
                        count++;
                    }
                }
            }

            lookup[q * Constants::headings + o].length = count;
        }
    }

    std::cout << " done!" << std::endl;
}

} // namespace Lookup
} // namespace HybridAStar