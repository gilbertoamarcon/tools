#!/bin/bash

## Repos Dependencies

# This script will install and configure all repos dependencies.
#

# COLIN2
rm -Rf ~/dev/colin2
git clone git@gitlab.com:human-machine-teaming/planning/colin2.git ~/dev/colin2/
cd ~/dev/colin2/
./run-cmake-release
./build-release

# POPF2
rm -Rf ~/dev/popf2
git clone git@gitlab.com:human-machine-teaming/planning/popf2.git ~/dev/popf2/
cd ~/dev/popf2/
./build
sed -i 's\, "-b"\\g' ~/dev/popf2/plan

# ITSAT
rm -Rf ~/dev/itsat
git clone git@gitlab.com:human-machine-teaming/planning/itsat.git ~/dev/itsat/
cd ~/dev/itsat/
./build

# TFD
rm -Rf ~/dev/tfd
git clone git@gitlab.com:human-machine-teaming/planning/tfd.git ~/dev/tfd/
cd ~/dev/tfd/
./build

# Val
rm -Rf ~/dev/val
git clone git@gitlab.com:human-machine-teaming/planning/val.git ~/dev/val/
cd ~/dev/val/
cmake .
make
