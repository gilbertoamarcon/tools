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
printf "Creating package at: \\n$HOME/$wsname/src/\\n"
cd ${HOME}/$wsname/src/
echo catkin_create_pkg $paname rospy "$@"
catkin_create_pkg $paname rospy "$@"
source ${HOME}/$wsname/devel/setup.bash
source ${HOME}/.bashrc

# Back to original working directory
cd $hdir

