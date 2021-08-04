#!/bin/bash

export PATH=${PATH}:~/.local/bin

SCRIPT_DIR=$(dirname "$(readlink -f "$0")")
WS_DIR=${SCRIPT_DIR}/../../../../
source ${WS_DIR}/devel/setup.bash
TOPICS_FILE="${WS_DIR}/config/record_topic.cfg"

RECORD_FOLDER="${WS_DIR}/bags"
if [ ! -d ${RECORD_FOLDER} ];then
    mkdir ${RECORD_FOLDER}
fi

# record topic list
if [ ! -f ${TOPICS_FILE} ];then
    echo "topics file not exist"
    exit 0
fi

TOPIC_LIST=""
while read LINE
do
    if [ "${LINE:0:1}"x == "/"x ];then
        TOPIC_LIST="${LINE%:*} ${TOPIC_LIST}"
    fi
done < ${TOPICS_FILE}

if [ -z "${TOPIC_LIST}" ];then
    echo "record 0 topics !"
    exit 0
fi

TIME=$(date "+%Y_%m_%d_%H_%M_%S")
mkdir ${RECORD_FOLDER}/${TIME}

LAUNCH_FILE="advanced_navigation_driver_992 test_gps.launch"
roslaunch  ${LAUNCH_FILE} record_path:="${RECORD_FOLDER}/${TIME}/${HOST}" record_topics:="${TOPIC_LIST}"
