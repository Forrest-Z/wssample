#!/bin/bash

export PATH=${PATH}:~/.local/bin

SCRIPT_DIR=$(dirname "$(readlink -f "$0")")
source ${SCRIPT_DIR}/devel/setup.bash

HOST="$(hostname)"
echo "hostname is ${HOST}"

echo_help() {
    echo ""
    echo ""
    echo "********************  read me  **********************"
    echo "**  1 argument needed                              **"
    echo "**  track stored in : /zone3/tracks               **"
    echo "**  RUN : ./track_viz.sh zone3_2021_08_01.trk  **"
    echo "*****************************************************"
    echo ""
    echo ""
    exit 0
}

if [ $# -ne 1 ]; then
    echo_help
fi

LAUNCH_FILE="track_viz track_viz.launch"
roslaunch ${LAUNCH_FILE} file_name:="$1" pre_dir:=${SCRIPT_DIR} vehicle_id:=${HOST}
