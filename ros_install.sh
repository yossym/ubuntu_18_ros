#!/bin/bash
#!/usr/bin/bash
#!/usr/bin/bash -ux
#  vim:fileencoding=utf-8:ff=unix

cd $(dirname $0);
## undefined Variable check. if undefined exit 
#set -u
## Variable print
#set -x
# function __clean(){
# # 
# }
#
# trap __clean INT QUIT TERM HUP




sudo systemctl restart chrony

    chronyc sources
    sleep 1
    chronyc sources
    sleep 1
    chronyc sources
    sleep 1
    chronyc sources
    sleep 1
    chronyc sources
    sleep 1
    chronyc sources

sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
sudo apt update
sudo apt install -y ros-melodic-desktop-full
sudo apt install -y python-rosdep
sudo rosdep init
rosdep update

echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc
source ~/.bashrc
sudo apt install -y python-rosinstall python-rosinstall-generator python-wstool build-essential

