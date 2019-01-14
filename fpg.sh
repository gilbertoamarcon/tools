#!/bin/bash

## FPG Setup

# This script will install and configure FPG.
#


# Cloning and building
rm -Rf ${HOME}/dev/fpg > /dev/null 2>&1
git clone git@gitlab.com:human-machine-teaming/planning/fpg.git ${HOME}/dev/fpg/
cd ${HOME}/dev/fpg/
./setup.sh
