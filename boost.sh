#!/bin/bash

# Boost 1.64
wget -P ~/Downloads/ http://sourceforge.net/projects/boost/files/boost/1.64.0/boost_1_64_0.tar.gz
tar -xzvf ~/Downloads/boost_1_64_0.tar.gz -C ~/Downloads/
cd ~/Downloads/boost_1_64_0/
./bootstrap.sh --prefix=/usr
sudo ./b2 install
cat /usr/include/boost/version.hpp | grep "BOOST_LIB_VERSION"

# Cleanup
# rm -Rf ~/Downloads/*
