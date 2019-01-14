#!/bin/bash

## ROS Indigo

# This script will setup ROS Indigo and a few packages that I use on a fresh Ubuntu 14.04.
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
sudo apt-get --yes install ros-indigo-desktop-full

# Initialize rosdep
sudo rosdep init
rosdep update

# Environment setup
printf "\n# ROS:\nsource /opt/ros/indigo/setup.bash\n" >> ~/.bashrc
source ~/.bashrc

# Getting rosinstall
sudo apt-get --yes install python-rosinstall

# Changing ROS ownership
sudo chown -R $USER ~/.ros

# geographic-msgs
sudo apt-get --yes install ros-indigo-geographic-msgs

# Keyboard twist
sudo apt-get --yes install ros-indigo-teleop-twist-keyboard

# Rocon
# sudo apt-get --yes install ros-indigo-rocon*

# Turtlebot
sudo apt-get --yes install ros-indigo-turtlebot-*
sudo sed -ie 's/amcl.launch.xml/amcl\/amcl.launch.xml/g' /opt/ros/indigo/share/turtlebot_stage/launch/turtlebot_in_stage.launch
sudo sed -ie 's/amcl.launch.xml/amcl\/amcl.launch.xml/g' /opt/ros/indigo/share/turtlebot_gazebo/launch/amcl_demo.launch
sudo sed -ie 's/gmapping.launch.xml/gmapping\/gmapping.launch.xml/g' /opt/ros/indigo/share/turtlebot_gazebo/launch/gmapping_demo.launch

# JACKAL
sudo apt-get --yes install ros-indigo-jackal-simulator ros-indigo-jackal-desktop ros-indigo-jackal-navigation

# # ROSPlan
# sudo apt-get --yes install flex ros-indigo-mongodb-store ros-indigo-tf2-bullet freeglut3-dev
# mkdir -p ~/ros-ws/mobile/src/
# git clone https://github.com/clearpathrobotics/occupancy_grid_utils ~/ros-ws/mobile/src/occupancy_grid_utils
# git clone https://github.com/KCL-Planning/rosplan ~/ros-ws/mobile/src/rosplan
# git clone https://github.com/KCL-Planning/rosplan_interface_turtlebot2 ~/ros-ws/mobile/src/rosplan_interface_turtlebot2
# source ~/.bashrc
# cd ~/ros-ws/mobile/
# catkin_make

# # multimaster_fkie
# sudo apt-get --yes install ros-indigo-multimaster-fkie

# ALVAR fiducial marker tool
sudo apt-get --yes install ros-indigo-ar-track-alvar* imagemagick
sudo apt-get --yes install python-empy

# Summit xl 
# sudo apt-get --yes install ros-indigo-summit-xl-common
# sudo apt-get --yes install ros-indigo-summit-xl-sim
# sudo sed -ie 's/pad_teleop/summit_xl_control/g' /opt/ros/indigo/share/summit_xl_pad/launch/summit_xl_pad.launch

