#!/bin/bash

## Setup Pioneers
# Get Packages and Setup Pioneer Robots in Gazebo.
#
# Usage:
# ./ros-pioneer-setup.sh
#

# Backing up present working directory
hdir=$(pwd)

git clone https://github.com/JenJenChung/pioneer_gazebo_ros.git ~/ros-ws/mobile/src/pioneer_gazebo_ros
git clone https://github.com/JenJenChung/pioneer_2dnav.git ~/ros-ws/mobile/src/pioneer_2dnav
git clone https://github.com/JenJenChung/simple_navigation_goals.git ~/ros-ws/mobile/src/simple_navigation_goals
git clone https://github.com/JenJenChung/nav_bundle.git ~/ros-ws/mobile/src/nav_bundle
git clone https://github.com/JenJenChung/rocon_flip.git ~/ros-ws/mobile/src/rocon_flip
git clone https://github.com/JenJenChung/pioneer_test.git ~/ros-ws/mobile/src/pioneer_test
git clone https://github.com/duchowpt/pioneer_networking.git ~/ros-ws/mobile/src/pioneer_networking
cd ~/ros-ws/mobile/
catkin_make

# Back to original working directory
cd $hdir

