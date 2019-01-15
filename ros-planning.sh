#!/bin/bash

## ROS Planning Laptop Setup

# This script sets up a default working environemnt for ROS planning.
#

# Please flash your computer with Ubuntu 16.04.5 Desktop (64-bit), which can be downloaded through the link:
http://releases.ubuntu.com/16.04/ubuntu-16.04.5-desktop-amd64.iso

# Update your machine and install basic dependencies using the following guide (run the script version instead of manually copyig each command):
https://gilbertoamarcon.github.io/content/apt-gets.html

# Setup ROS on your machine (run the script version instead of manually copyig each command):
https://gilbertoamarcon.github.io/content/ros-kinetic.html

# Allow color-highlighting on your terminal to facilitate debugging:
sed -i '/force_color_prompt=yes/s/^#//g' ${HOME}/.bashrc

# Configure your git identity on your machine:
git config --global user.email "your git email"
git config --global user.name "your name"	

# Alternativelly setup the Sublime text editor:
https://gilbertoamarcon.github.io/content/sublime.html

# Seetup the planning software (we will get to this later, you do not have to run this just yet):
https://gilbertoamarcon.github.io/content/planning.html
