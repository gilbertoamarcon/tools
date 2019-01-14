#!/bin/bash
# =========================
## MADP Setup
# =========================

# This script sets up MADP.
#

sudo apt-get --yes install doxygen
sudo apt-get --yes install liblpsolve55-dev
sudo apt-get --yes install libxml2-dev
sudo apt-get --yes install libgmp3-dev
sudo pip install graphviz 

# Backing up present working directory
hdir=$(pwd)

# Install
git clone https://github.com/MADPToolbox/MADP.git ~/dev/madp/
cd ~/dev/madp/
sh autogen.sh
./configure
make
make install

# Local dir
mkdir ~/.madp
cd ~/.madp
ln -s ~/dev/madp/problems
ln -s ~/dev/madp/results

# Returning to present working directory
cd $hdir

# Restarting the machine
sudo reboot#<a href=https://raw.githubusercontent.com/gilbertoamarcon/tools/master/get-madp.sh target=_blank>Follow this link for the raw script.</a>#<a href=https://raw.githubusercontent.com/gilbertoamarcon/tools/master/get-madp.sh target=_blank>Follow this link for the raw script.</a>#<a href=https://raw.githubusercontent.com/gilbertoamarcon/tools/master/get-madp.sh target=_blank>Follow this link for the raw script.</a>#<a href=https://raw.githubusercontent.com/gilbertoamarcon/tools/master/get-madp.sh target=_blank>Follow this link for the raw script.</a>#<a href=https://raw.githubusercontent.com/gilbertoamarcon/tools/master/get-madp.sh target=_blank>Follow this link for the raw script.</a>#<a href=https://raw.githubusercontent.com/gilbertoamarcon/tools/master/get-madp.sh target=_blank>Follow this link for the raw script.</a>#<a href=https://raw.githubusercontent.com/gilbertoamarcon/tools/master/get-madp.sh target=_blank>Follow this link for the raw script.</a>#<a href=https://raw.githubusercontent.com/gilbertoamarcon/tools/master/get-madp.sh target=_blank>Follow this link for the raw script.</a>#<a href=https://raw.githubusercontent.com/gilbertoamarcon/tools/master/get-madp.sh target=_blank>Follow this link for the raw script.</a>#<a href=https://raw.githubusercontent.com/gilbertoamarcon/tools/master/get-madp.sh target=_blank>Follow this link for the raw script.</a>#<a href=https://raw.githubusercontent.com/gilbertoamarcon/tools/master/get-madp.sh target=_blank>Follow this link for the raw script.</a>#<a href=https://raw.githubusercontent.com/gilbertoamarcon/tools/master/get-madp.sh target=_blank>Follow this link for the raw script.</a>#<a href=https://raw.githubusercontent.com/gilbertoamarcon/tools/master/get-madp.sh target=_blank>Follow this link for the raw script.</a>#<a href=https://raw.githubusercontent.com/gilbertoamarcon/tools/master/get-madp.sh target=_blank>Follow this link for the raw script.</a>#<a href=https://raw.githubusercontent.com/gilbertoamarcon/tools/master/get-madp.sh target=_blank>Follow this link for the raw script.</a>#<a href=https://raw.githubusercontent.com/gilbertoamarcon/tools/master/get-madp.sh target=_blank>Follow this link for the raw script.</a>#<a href=https://raw.githubusercontent.com/gilbertoamarcon/tools/master/get-madp.sh target=_blank>Follow this link for the raw script.</a>#<a href=https://raw.githubusercontent.com/gilbertoamarcon/tools/master/get-madp.sh target=_blank>Follow this link for the raw script.</a>#<a href=https://raw.githubusercontent.com/gilbertoamarcon/tools/master/get-madp.sh target=_blank>Follow this link for the raw script.</a>#<a href=https://raw.githubusercontent.com/gilbertoamarcon/tools/master/get-madp.sh target=_blank>Follow this link for the raw script.</a>#<a href=https://raw.githubusercontent.com/gilbertoamarcon/tools/master/get-madp.sh target=_blank>Follow this link for the raw script.</a>#<a href=https://raw.githubusercontent.com/gilbertoamarcon/tools/master/get-madp.sh target=_blank>Follow this link for the raw script.</a>