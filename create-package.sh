#!/bin/bash

## Create a ROS Package

# Usage:
# ./create-package.sh workspace-name package-name
#

wsname=$1
paname=$2
shift
shift

# Backing up present working directory
hdir=$(pwd)

# Package creation
printf "Creating package at: \\n$HOME/ros-ws/$wsname/src/\\n"
cd ~/ros-ws/$wsname/src/
echo catkin_create_pkg $paname rospy "$@"
catkin_create_pkg $paname rospy "$@"
source ~/ros-ws/$wsname/devel/setup.bash
source ~/.bashrc

# Back to original working directory
cd $hdir

