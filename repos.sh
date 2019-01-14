#!/bin/bash

## Repos Dependencies

# This script will install and configure all repos dependencies.
#

# Apt-gets
./repos-dep-apt-get.sh

# # Repos folder
# mkdir -p ~/dev/

# Libraries
./repos-dep-lib.sh

# Basic Planners
./repos-dep-basic-planners.sh

# Repos
./repos-setup.sh

# Cleaning up and rebooting
rm -Rf ~/Downloads/*
sudo apt-get --yes autoremove
sudo reboot

