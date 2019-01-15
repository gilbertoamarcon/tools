#!/bin/bash

## Repos Dependencies

# This script will install and configure all repos dependencies.
#

# Add-apt-repositories
sudo add-apt-repository ppa:george-edison55/cmake-3.x -y
sudo add-apt-repository ppa:ubuntu-toolchain-r/test -y
sudo add-apt-repository ppa:webupd8team/java -y
sudo apt-get --yes update

# Apt-get installs
sudo apt-get --yes install ant
sudo apt-get --yes install autoconf
sudo apt-get --yes install automake
sudo apt-get --yes install autotools-dev
sudo apt-get --yes install bison
sudo apt-get --yes install build-essential
sudo apt-get --yes install bzip2
sudo apt-get --yes install cmake
sudo apt-get --yes install coinor-*
sudo apt-get --yes install curl
sudo apt-get --yes install default-jdk
sudo apt-get --yes install default-jre
sudo apt-get --yes install doxygen
sudo apt-get --yes install flex
sudo apt-get --yes install g++
sudo apt-get --yes install g++-multilib
sudo apt-get --yes install g++-4.8
sudo apt-get --yes install g++-4.8-multilib
sudo apt-get --yes install g++-5
sudo apt-get --yes install g++-5-multilib
sudo apt-get --yes install g++-6
sudo apt-get --yes install g++-6-multilib
sudo apt-get --yes install gcc
sudo apt-get --yes install gcc-multilib
sudo apt-get --yes install gcc-4.8
sudo apt-get --yes install gcc-4.8-multilib
sudo apt-get --yes install gcc-5
sudo apt-get --yes install gcc-5-multilib
sudo apt-get --yes install gcc-6
sudo apt-get --yes install gcc-6-multilib
sudo apt-get --yes install git
sudo apt-get --yes install libbdd-dev
sudo apt-get --yes install libbz2-*
sudo apt-get --yes install libc6
sudo apt-get --yes install libc6-dev
sudo apt-get --yes install libc6-dbg
sudo apt-get --yes install libgmp*
sudo apt-get --yes install libicu*
sudo apt-get --yes install libmpfr*
sudo apt-get --yes install libtool
sudo apt-get --yes install make
sudo apt-get --yes install mercurial
# sudo apt-get --yes install oracle-java8-installer
# sudo apt-get --yes install oracle-java8-set-default
sudo apt-get --yes install m4
sudo apt-get --yes install perl
sudo apt-get --yes install python
sudo apt-get --yes install python-dev
# sudo apt-get --yes install qt5-default
sudo apt-get --yes install realpath
sudo apt-get --yes install unzip
sudo apt-get --yes install linux-libc-dev
sudo apt-get --yes upgrade cmake
sudo pip install svgwrite
# sudo apt-get --yes autoremove

