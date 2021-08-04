#!/usr/bin/env bash

SCRIPT_DIR=$(dirname "$(readlink -f "$0")")

sudo apt-get update

# use chromium as default
sudo apt-get install -y chromium-browser
sudo rm ~/.local/share/keyrings/login.keyring

# install vs-code
sudo dpkg -i ./third-party/code_1.54.1-1614898113_amd64.deb

sudo dpkg -i ./third-party/google-chrome-stable_current_amd64.deb

# install basic tools
sudo apt-get install -y htop vim unzip xclip \
    terminator zsh curl git ntpdate gpsd \
    chrony pkg-config autoconf uuid-dev fcitx \
    fcitx-googlepinyin kazam

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sudo chsh -s /usr/bin/zsh

sudo apt-get install -y build-essential cmake automake
sudo apt-get install -y libtool libpcap-dev \
    pcl-tools libyaml-cpp-dev libompl-dev

# install openssh-server and autorun
sudo apt-get install openssh-server

sudo systemctl enable ssh.service
sudo systemctl start ssh.service

# install PIP
if type pip >/dev/null 2>&1; then
    echo "already installed (pip)"
else
    sh -c "$(curl https://bootstrap.pypa.io/get-pip.py -o ./third-party/get-pip.py)"
    python ./third-party/get-pip.py
fi

# install catkin
if type catkin >/dev/null 2>&1; then
    echo "already installed (catkin tools)"
else
    pip install catkin_tools python-catkin-tools
fi

pip install future

# install protobuf 3.10.0
if type protoc >/dev/null 2>&1; then
    echo "already installed (protobuf 3.10.0)"
else
    sudo bash ${SCRIPT_DIR}/third-party/install_protobuf.sh
fi

# install Kvaser linuxCAN
if type listChannels >/dev/null 2>&1; then
    echo "already installed (Kvaser)"
else
    sudo bash ${SCRIPT_DIR}/third-party/install_linuxcan.sh
fi

# install IPOPT 3.12.13
TS=$(ldconfig -p | grep "ipopt" | wc -w)
if [ ${TS} -gt 0 ]; then
    echo "already installed (ipopt 3.12.13)"
else
    sudo bash ${SCRIPT_DIR}/third-party/install_ipopt.sh
fi

# install libaquila
TS=$(find /usr/local/lib -name "libAquila.a" | wc -w)
if [ ${TS} -gt 0 ]; then
    echo "already installed (libaquila)"
else
    sudo bash ${SCRIPT_DIR}/third-party/install_libaquila.sh
fi

# install libzmq
TS=$(ldconfig -p | grep "libzmq" | wc -w)
if [ ${TS} -gt 0 ]; then
    echo "already installed (libzmq)"
else
    sudo bash ${SCRIPT_DIR}/third-party/install_libzmq.sh
fi

# install livox-SDK
TS=$(find /usr/local/lib -name "liblivox_sdk_static.a" | wc -w)
if [ ${TS} -gt 0 ]; then
    echo "already installed (livox-SDK)"
else
    sudo bash ${SCRIPT_DIR}/third-party/install_livox-SDK.sh
fi

# install ros-kinetic-desktop-full
sudo sh -c "echo 'deb http://packages.ros.org/ros/ubuntu xenial main' > /etc/apt/sources.list.d/ros-latest.list"
sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
sudo apt-get update

sudo apt-get install -y --allow-unauthenticated ros-kinetic-desktop-full \
    ros-kinetic-swri-math-util ros-kinetic-swri-roscpp \
    ros-kinetic-swri-serial-util ros-kinetic-swri-string-util \
    ros-kinetic-swri-nodelet ros-kinetic-gps-common \
    ros-kinetic-behaviortree-cpp-v3 ros-kinetic-can-msgs \
    ros-kinetic-async-web-server-cpp ros-kinetic-geodesy \
    ros-kinetic-behaviortree-cpp-v3 ros-kinetic-map-server \
    "ros-kinetic-rosbridge-*" ros-kinetic-web-video-server \
    ros-kinetic-usb-cam ros-kinetic-robot-pose-publisher \
    ros-kinetic-laptop-battery-monitor ros-kinetic-plotjuggler \
    mini-httpd v4l-utils 

# install G29
sudo apt-get install "ros-kinetic-pacmod*" "ros-kinetic-joy*"

# setup ROS in Zsh
sudo rosdep init
sudo rosdep fix-permissions
rosdep update
echo "source /opt/ros/kinetic/setup.zsh" >> ~/.zshrc
source ~/.zshrc

# install python ros
sudo apt install -y python-rosinstall \
    python-rosinstall-generator python-wstool

# modify sysytem lib
# sudo rm /usr/lib/x86_64-linux-gnu/libEGL.so
# sudo ln /usr/lib/x86_64-linux-gnu/libEGL.so.1 /usr/lib/x86_64-linux-gnu/libEGL.so
# sudo rm /usr/lib/x86_64-linux-gnu/libGL.so
# sudo ln /usr/lib/x86_64-linux-gnu/libGL.so.1 /usr/lib/x86_64-linux-gnu/libGL.so

# clean workspace
sudo rm -rf devel install build .catkin_tools

sudo apt-get autoremove -y

# restart terminal
exit
