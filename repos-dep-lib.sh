#!/bin/bash

## Repos Dependencies

# This script will install and configure all repos dependencies.
#

# Cmake install/upgrade (3.8.0):
wget -P ~/Downloads/ http://www.cmake.org/files/v3.8/cmake-3.8.0.tar.gz
tar -xvzf ~/Downloads/cmake-3.8.0.tar.gz -C ~/Downloads/
cd ~/Downloads/cmake-3.8.0
./configure
make
sudo make install
sudo update-alternatives --install /usr/bin/cmake cmake /usr/local/bin/cmake 1 --force
cmake --version

# Upgrade to gcc/g++ 5.4.0 (5.4.0):
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-5 60 --slave /usr/bin/g++ g++ /usr/bin/g++-5

# Add a backup version of gcc/g++ (sudo update-alternatives --config gcc)
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.8 60 --slave /usr/bin/g++ g++ /usr/bin/g++-4.8
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-6 60 --slave /usr/bin/g++ g++ /usr/bin/g++-6

# Boost 1.64
./boost.sh

# ANTLR
wget -P ~/Downloads/ http://www.antlr.org/download/antlr-4.5.3-complete.jar
sudo mv ~/Downloads/antlr-4.5.3-complete.jar /usr/local/lib/antlr-4.5.3-complete.jar

# Proto
wget -P ~/Downloads/ https://github.com/google/protobuf/releases/download/v3.0.0/protobuf-cpp-3.0.0.tar.gz
tar -xvzf ~/Downloads/protobuf-cpp-3.0.0.tar.gz -C ~/Downloads/
cd ~/Downloads/protobuf-3.0.0/
./autogen.sh
./configure
make
sudo make install
sudo ldconfig # refresh shared library cache.

# GDSL (for yahsp2)
# wget -P ~/Downloads/ http://download.gna.org/gdsl/gdsl-1.8.tar.gz
# tar -xvzf ~/Downloads/gdsl-1.8.tar.gz -C ~/Downloads/
# cd ~/Downloads/gdsl-1.8/
# ./configure
# make
# sudo make install
# make clean
# make distclean

# Flex 2.5.39
wget -P ~/Downloads/ https://sourceforge.net/projects/flex/files/flex-2.5.39.tar.bz2
tar -xvjf ~/Downloads/flex-2.5.39.tar.bz2 -C ~/Downloads/
cd ~/Downloads/flex-2.5.39/
./configure
make
sudo make install
flex --version

# Graphviz
wget -P ~/Downloads/ http://www.graphviz.org/pub/graphviz/stable/SOURCES/graphviz-2.28.0.tar.gz
tar -xvzf ~/Downloads/graphviz-2.28.0.tar.gz -C ~/Downloads/
cd ~/Downloads/graphviz-2.28.0/
./configure
make
sudo make install 

# Cleanup
rm -Rf ~/Downloads/*
