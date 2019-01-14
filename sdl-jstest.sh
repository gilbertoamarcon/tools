#!/bin/bash

## jstest

# Setup:

sudo apt-get -y install libpng-dev
sudo apt-get -y install libslang2-dev
sudo apt-get -y install libcaca-dev
sudo apt-get -y install libncurses5-dev
sudo apt-get -y install libsdl2-dev
sudo apt-get -y install libsdl1.2-dev
git clone git@gitlab.com:grumbel/sdl-jstest.git ${HOME}/dev/sdl-jstest
cd ${HOME}/dev/sdl-jstest/
mkdir build
cd build
cmake ..
make
sudo make install


