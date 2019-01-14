#!/bin/bash

## Real Robot

# Sets an external robot running ros
#

# Usage: . real-robot.sh robot-ip
# Ex: . real-robot.sh aadi1

# Environment vars setup
grep -vwE "(ROS_MASTER_URI|ROS_HOSTNAME|ROS_IP)" ~/.bashrc > aux
mv aux ~/.bashrc
printf "export ROS_MASTER_URI=http://$1:11311/\n" >> ~/.bashrc
printf "export ROS_HOSTNAME=$(hostname -I)\n" >> ~/.bashrc
printf "export ROS_IP=$(hostname -I)\n" >> ~/.bashrc
source ~/.bashrc

