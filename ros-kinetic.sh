#!/bin/bash

## ROS kinetic

# This script will setup ROS kinetic and a few packages that I use on a fresh Ubuntu 16.04.
#

# Setup your sources.lis
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'

# Set up your keys
sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116

# Key
wget http://packages.ros.org/ros.key -O - | sudo apt-key add -

# First, make sure your Debian package index is up-to-date:
sudo apt-get -y update

# Desktop-Full Install: (Recommended)
sudo apt-get -y install ros-kinetic-desktop-full

# Initialize rosdep
sudo rosdep init
rosdep update

# Environment setup
printf "\n# ROS:\nsource /opt/ros/kinetic/setup.bash\n" >> ${HOME}/.bashrc
source ${HOME}/.bashrc

# Getting rosinstall
sudo apt-get -y install python-rosinstall

# Changing ROS ownership
sudo chown -R $USER ${HOME}/.ros

# geographic-msgs
sudo apt-get -y install ros-kinetic-geographic-msgs

# Keyboard twist
sudo apt-get -y install ros-kinetic-teleop-twist-keyboard

# Joystick Drivers
sudo apt-get -y install ros-kinetic-joy

# ALVAR fiducial marker tool
sudo apt-get -y install ros-kinetic-ar-track-alvar* imagemagick
sudo apt-get -y install python-empy

# Turtlebot
sudo apt-get -y install ros-kinetic-turtlebot-*

# JACKAL
sudo apt-get -y install ros-kinetic-jackal-simulator ros-kinetic-jackal-desktop ros-kinetic-jackal-navigation

# Summit xl 
sudo apt-get -y install ros-kinetic-summit-xl-common
# sudo apt-get -y install ros-kinetic-summit-xl-sim
# sudo sed -ie 's/pad_teleop/summit_xl_control/g' /opt/ros/kinetic/share/summit_xl_pad/launch/summit_xl_pad.launch


printf "export ROS_MASTER_URI=http://127.0.0.1:11311/\n" >> ${HOME}/.bashrc

source ${HOME}/.bashrc
