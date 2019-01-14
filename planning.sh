#!/bin/bash

## Planning

# Setting up the planning environment
#

# Common pre-compiled libraries setup
sudo apt-get -y install python-pip
sudo -H pip install --upgrade pip
sudo -H pip install graphviz==0.10.1
sudo -H pip install lark==0.0.4
sudo -H pip install lark_parser==0.6.5
sudo -H pip install matplotlib==1.5.1
sudo -H pip install networkx==2.2
sudo -H pip install numpy==1.15.4
sudo -H pip install oyaml==0.7
sudo -H pip install pandas==0.23.4
sudo -H pip install yattag==1.10.1
sudo apt-get -y install graphviz
sudo apt-get -y install maven
sudo apt-get -y install yaml-cpp
sudo apt-get -y install qt5-default
sudo apt-get -y install dvipng
sudo apt-get -y install texlive
sudo apt-get -y install texlive-full
sudo apt-get -y install texlive-latex-extra
sudo apt-get -y install texlive-fonts-recommended 


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
