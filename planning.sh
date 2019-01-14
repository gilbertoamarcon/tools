#!/bin/bash

## Planning

# Setting up the planning environment
#


# Dev directory
mkdir -p ${HOME}/dev/

# Core repositories
git clone git@gitlab.com:human-machine-teaming/planning/cfmatup.git ${HOME}/dev/cfmatup
git clone git@gitlab.com:human-machine-teaming/planning/apl-mapl.git ${HOME}/dev/apl-mapl
git clone git@gitlab.com:human-machine-teaming/planning/mapl-problems.git ${HOME}/dev/mapl-problems
git clone git@gitlab.com:human-machine-teaming/planning/mapl-results.git ${HOME}/dev/mapl-results
git clone git@gitlab.com:human-machine-teaming/planning/mapl-results.git ${HOME}/dev/mapl-gen
mkdir -p ${HOME}/dev/cfmatup/sandbox

# Actuplan setup
git clone git@gitlab.com:human-machine-teaming/planning/actuplan-dev.git 
cd ${HOME}/dev/actuplan-dev
./scripts/setup.sh

# i-CiFHaR setup
git clone git@gitlab.com:human-machine-teaming/planning/icifhar.git ${HOME}/dev/icifhar
cd ${HOME}/dev/icifhar
./scripts/setup.sh
