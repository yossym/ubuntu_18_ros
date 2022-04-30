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

#####################################
# time sync 

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

#############################################
# Ubuntu install of ROS Melodic
# http://wiki.ros.org/melodic/Installation/Ubuntu

sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt -y install curl # if you haven't already installed curl
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -

sudo apt update
sudo apt -y install ros-melodic-desktop-full

echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc
source ~/.bashrc

source /opt/ros/melodic/setup.bash

sudo apt -y install python-rosdep python-rosinstall python-rosinstall-generator python-wstool build-essential

sudo apt -y install python-rosdep
sudo rosdep init
rosdep update

###############################
# ROS Tutorials
# http://wiki.ros.org/ROS/Tutorials


# Installing and Configuring Your ROS Environment

printenv | grep ROS

source /opt/ros/${ROS_DISTRO}/setup.bash


mkdir -p ~/catkin_ws/src
cd ~/catkin_ws/
catkin_make


source devel/setup.bash


echo $ROS_PACKAGE_PATH
pause 30

# Navigating the ROS Filesystem

sudo apt-get install ros-${ROS_DISTRO}-ros-tutorials




# echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc
# source ~/.bashrc
# sudo apt -y install python-rosinstall python-rosinstall-generator python-wstool build-essential

