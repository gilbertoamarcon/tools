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
sudo apt-get --yes update

# Desktop-Full Install: (Recommended)
sudo apt-get --yes install ros-kinetic-desktop-full

# Initialize rosdep
sudo rosdep init
rosdep update

# Environment setup
printf "\n# ROS:\nsource /opt/ros/kinetic/setup.bash\n" >> ~/.bashrc
source ~/.bashrc

# Getting rosinstall
sudo apt-get --yes install python-rosinstall

# Changing ROS ownership
sudo chown -R $USER ~/.ros

# geographic-msgs
sudo apt-get --yes install ros-kinetic-geographic-msgs

# Keyboard twist
sudo apt-get --yes install ros-kinetic-teleop-twist-keyboard

# Joystick Drivers
sudo apt-get --yes install ros-kinetic-joy

# Summit xl 
sudo apt-get --yes install ros-kinetic-summit-xl-common
# sudo apt-get --yes install ros-kinetic-summit-xl-sim
# sudo sed -ie 's/pad_teleop/summit_xl_control/g' /opt/ros/kinetic/share/summit_xl_pad/launch/summit_xl_pad.launch

