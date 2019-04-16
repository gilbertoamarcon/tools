#!/bin/bash
# =========================
## Basic Desktop Setup
# =========================

# This script sets up all the apps and basic configs for my Desktop.
#

# Backing up present working directory
hdir=$(pwd)

# Updates/Upgrades
./apt-gets.sh

# Personal apt-get upgrades
./personal.sh

# Git config
git config --global user.email "gilbertoamarcon@gmail.com"
git config --global user.name "Gilberto Marcon"	

# Terminator
sudo apt-get -y install terminator
sudo cp -Rf terminator ${HOME}/.config/
sudo chmod +x ${HOME}/.config/terminator/

# Sublime
./sublime.sh

# Color Terminal
sed -i '/force_color_prompt=yes/s/^#//g' ${HOME}/.bashrc

# Calc
./calc.sh

# Box Sync
./box-sync.sh

# Website
# git clone git@github.com:gilbertoamarcon/gilbertoamarcon.github.io.git ${HOME}/dev/gilbertoamarcon.github.io

# Cleaning up
sudo apt-get -y autoremove

# Removing Examples folder
rm -Rf ${HOME}/examples.desktop

# Move sidebar to the bottom
# gsettings set com.canonical.Unity.Launcher launcher-position Bottom

# SSH to robots
sudo ufw allow 22

# Nvidia drivers
./nvidia-setup.sh

# Aliases
./aliases.sh

# JS-fix
./js-mouse.sh

# Restarting the machine
sudo reboot

# Manual stuff:
# Config power sleep and screen
# Config files icon list view
# Config grub
# Config proprietary video drivers

