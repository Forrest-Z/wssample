#!/bin/bash

export PATH=${PATH}:~/.local/bin

SCRIPT_DIR=$(dirname "$(readlink -f "$0")")
source ${SCRIPT_DIR}/devel/setup.bash
TOPICS_FILE="${SCRIPT_DIR}/config/record_topic.cfg"

RECORD_FOLDER="${SCRIPT_DIR}/bags"
if [ ! -d ${RECORD_FOLDER} ]; then
    mkdir ${RECORD_FOLDER}
fi

TRACKS_FOLDER="${SCRIPT_DIR}/tracks"
if [ ! -d ${TRACKS_FOLDER} ]; then
    mkdir ${TRACKS_FOLDER}
fi

HOST="$(hostname)"
echo "hostname is ${HOST}"

echo_help() {
    echo ""
    echo ""
    echo "*******************  read me  ********************"
    echo "**  RUN : ./record_track.sh                     **"
    echo "**************************************************"
    echo ""
    echo ""
    exit 0
}

if [ $# -ne 0 ]; then
    echo_help
fi

# record topic list
if [ ! -f ${TOPICS_FILE} ]; then
    echo "topics file not exist"
    exit 0
fi

TOPIC_LIST=""
while read LINE || [[ -n ${LINE} ]]; do
    if [ "${LINE:0:1}" == "/" ]; then
        TOPIC_LIST="${LINE%:*} ${TOPIC_LIST}"
    fi
done <${TOPICS_FILE}

if [ -z "${TOPIC_LIST}" ]; then
    echo "record 0 topics !"
    exit 0
fi

TIME=$(date "+%Y_%m_%d_%H_%M_%S")
mkdir ${RECORD_FOLDER}/${TIME}

LAUNCH_FILE="record_tracks online_record_track.launch"
roslaunch ${LAUNCH_FILE} vehicle_id:=${HOST} file_name_date:=${TIME} \
    record_path:="${RECORD_FOLDER}/${TIME}/${HOST}" \
    record_topics:="${TOPIC_LIST}" pre_dir:=${SCRIPT_DIR}
