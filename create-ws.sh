#!/bin/bash

## Create a ROS Workspace

# Usage:
# ./create-ws.sh workspace-name
#

# Backing up present working directory
hdir=$(pwd)

# Workspace creation
printf "Creating workspace at: \\n$HOME/$1/\\n"
mkdir -p ${HOME}/$1/src
cd ${HOME}/$1/src
catkin_init_workspace
cd ${HOME}/$1/
catkin_make
source ${HOME}/$1/devel/setup.bash
printf "\n# $1 ROS workspace:\nsource $HOME/$1/devel/setup.bash\n" >> ${HOME}/.bashrc

# Back to original working directory
cd $hdir

