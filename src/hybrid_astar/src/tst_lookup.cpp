#include "constants.h"
#include "lookup.h"
#include <ros/ros.h>

using namespace std;
using namespace HybridAStar;

int main(int argc, char **argv) {

    Constants::config
        collisionLookup[Constants::headings * Constants::positions];
    Lookup::collisionLookup(collisionLookup);

    int pos_in;
    int heading;
    int size = Constants::bbSize;
    cout << size << endl;
    while (1) {
        cout << "input positions and headings :";
        cin >> pos_in;
        cin >> heading;
        cout << endl;

        char *map = new char[size * size];
        for (int i = 0; i < size * size; i++) {
            map[i] = '.';
        }
        int base = (int)(size / 2);

        int index = Constants::headings * pos_in + heading;

        for (int i = 0; i < collisionLookup[index].length; i++) {
            int tmp_x = base + collisionLookup[index].pos[i].x;
            int tmp_y = base + collisionLookup[index].pos[i].y;
            map[size * tmp_y + tmp_x] = 'm';
            // cout << collisionLookup[index].pos[i].x << ", "
            //      << collisionLookup[index].pos[i].y << endl;
            if (collisionLookup[index].pos[i].x == 0 &&
                collisionLookup[index].pos[i].y == 0) {
                map[size * tmp_y + tmp_x] = 'o';
            }
        }
        cout << endl;

        for (int i = 0; i < size; i++) {
            for (int j = 0; j < size; j++) {
                cout << map[size * (j + 1) - i - 1] << " ";
            }
            cout << endl;
        }
        cout << endl;
    }
    return 0;
}
