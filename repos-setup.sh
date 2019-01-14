#!/bin/bash

## Repos Setup

# This script will install and configure all repos.
#


# ===========================================================================
## i-CiFHaR
# ===========================================================================

# Cloning and building
rm -Rf ~/dev/icifhar > /dev/null 2>&1
git clone git@gitlab.com:human-machine-teaming/planning/icifhar.git ~/dev/icifhar/
cd ~/dev/icifhar/
qmake
make

# Adding the lib folder to $LD_LIBRARY_PATH:
printf "\n# i-CiFHaR:\nexport LD_LIBRARY_PATH=~/dev/icifhar/lib\n" >> ~/.bashrc

# ===========================================================================
## MACPDDL
# ===========================================================================

rm -Rf ~/dev/macpddl > /dev/null 2>&1
git clone git@gitlab.com:human-machine-teaming/planning/macpddl.git ~/dev/macpddl/
cd ~/dev/macpddl/
ant

# ===========================================================================
## i-MAPC
# ===========================================================================

# Cloning and building
rm -Rf ~/dev/imapc > /dev/null 2>&1
git clone --recursive git@gitlab.com:human-machine-teaming/planning/imapc.git ~/dev/imapc/
cd ~/dev/imapc/
cmake .
make

# ===========================================================================
## Test Set
# ===========================================================================

rm -Rf ~/dev/test-set > /dev/null 2>&1
git clone git@gitlab.com:human-machine-teaming/planning/test-set.git ~/dev/test-set/

# ===========================================================================
## Test Results
# ===========================================================================

# rm -Rf ~/dev/test-results > /dev/null 2>&1
# git clone git@gitlab.com:human-machine-teaming/planning/test-results.git ~/dev/test-results/


# ===========================================================================
## First Response Domain
# ===========================================================================

rm -Rf ~/dev/first_response > /dev/null 2>&1
git clone git@gitlab.com:human-machine-teaming/planning/first_response.git ~/dev/first_response/


# ===========================================================================
## Box Domain
# ===========================================================================

rm -Rf ~/dev/box-domain > /dev/null 2>&1
git clone git@gitlab.com:human-machine-teaming/planning/box-domain.git ~/dev/box-domain/



