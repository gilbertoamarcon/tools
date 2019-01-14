#!/bin/bash

## Get Testbed Package
# Configure the testbed package
#
# Usage:
# ./get-testbed.sh
#

# Backing up present working directory
hdir=$(pwd)

git clone https://github.com/gilbertoamarcon/testbed.git ~/Downloads/testbed
./create-ws.sh mobile
./create-package.sh mobile testbed
cp -Rf ~/Downloads/testbed ~/ros-ws/mobile/src/

mkdir -p ~/.gazebo/models/
cd ~/ros-ws/mobile/src/testbed/models/
./create-models.sh

# Back to original working directory
cd $hdir

