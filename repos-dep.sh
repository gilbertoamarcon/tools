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
sudo apt-get --yes install oracle-java8-installer
sudo apt-get --yes install oracle-java8-set-default
sudo apt-get --yes install perl
sudo apt-get --yes install python
sudo apt-get --yes install python-dev
sudo apt-get --yes install qt5-default
sudo apt-get --yes install realpath
sudo apt-get --yes install texlive-full
sudo apt-get --yes install unzip
sudo apt-get --yes install linux-libc-dev
sudo apt-get --yes upgrade cmake
sudo pip install svgwrite

# # Repos folder
# mkdir -p ~/dev/

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
wget -P ~/Downloads/ http://sourceforge.net/projects/boost/files/boost/1.64.0/boost_1_64_0.tar.gz
tar -xzvf ~/Downloads/boost_1_64_0.tar.gz -C ~/Downloads/
cd ~/Downloads/boost_1_64_0/
./bootstrap.sh --prefix=/usr
sudo ./b2 install
cat /usr/include/boost/version.hpp | grep "BOOST_LIB_VERSION"

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

# COLIN2
git clone git@gitlab.com:human-machine-teaming/planning/colin2.git ~/dev/colin2/
cd ~/dev/colin2/
./run-cmake-release
./build-release

# POPF2
git clone https://github.com/aldukeman/popf2.git ~/dev/popf2/
cd ~/dev/popf2/
./build
sed -i 's\, "-b"\\g' ~/dev/popf2/plan

# ITSAT
git clone git@gitlab.com:human-machine-teaming/planning/itsat.git ~/dev/itsat/
cd ~/dev/itsat/
./build

# TFD
git clone git@gitlab.com:human-machine-teaming/planning/tfd.git ~/dev/tfd/
cd ~/dev/tfd/
./build

# YAHSP2
# git clone https://github.com/aldukeman/yahsp2.git ~/dev/yahsp2/
# cd ~/dev/yahsp2/
# ./build

# CPT
wget -P ~/Downloads/ http://www.cril.univ-artois.fr/~vidal/cpt/cpt-1.0.tar.gz
tar -xvzf ~/Downloads/cpt-1.0.tar.gz -C ~/Downloads/
rm -Rf ~/Downloads/cpt-1.0.tar.gz
cd ~/Downloads/cpt-1.0/
./build fast

# Z3
git clone https://github.com/Z3Prover/z3 ~/dev/z3/
cd ~/dev/z3/
python scripts/mk_make.py
cd build
make
sudo make install

# Piranha
git clone https://github.com/bluescarni/piranha ~/dev/piranha/
mkdir ~/dev/piranha/build/
cd ~/dev/piranha/build/
cmake ../
sudo make install

# SMTPlan+
git clone https://github.com/KCL-Planning/SMTPlan.git ~/dev/SMTPlan/
sed -i '15i\set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -pthread -Wno-deprecated-declarations")' ~/dev/SMTPlan/SMTPlan/CMakeLists.txt
cd ~/dev/SMTPlan/SMTPlan/
mkdir build
cd build
cmake ..
make

# APPL
wget -P ~/Downloads/ http://bigbird.comp.nus.edu.sg/pmwiki/farm/appl/uploads/Main/appl-0.96.tar.gz
tar -xvzf ~/Downloads/appl-0.96.tar.gz -C ~/dev/
rm -f ~/Downloads/appl-0.96.tar.gz
mv -f ~/dev/appl-0.96 ~/dev/appl
cd ~/dev/appl/src/
make

# RDDL
git clone https://github.com/ssanner/rddlsim.git ~/dev/rddlsim/
cd ~/dev/rddlsim/
sudo chmod +x compile
./compile

# PROST Install and Config
hg clone https://gilbertoamarcon@bitbucket.org/tkeller/prost ~/dev/prost/
cd ~/dev/prost/src/search
make
cd ~/dev/prost/src/rddl_parser
make
ln -s ~/dev/rddlsim/ ~/dev/prost/testbed/rddlsim

# Sample domains
git clone https://github.com/gilbertoamarcon/domains.git ~/dev/domains/

# Planning Domains
git clone https://github.com/aldukeman/planning-domains.git ~/dev/planning-domains/

# Val
git clone https://antondukeman.com/gitlab/aldukeman/val.git ~/dev/val/
cd ~/dev/val/
cmake .
make

# Fast Forward
wget -P ~/Downloads/ https://fai.cs.uni-saarland.de/hoffmann/ff/FF-v2.3.tgz
tar -xvzf ~/Downloads/FF-v2.3.tgz -C ~/Downloads/
cd ~/Downloads/FF-v2.3
make

# Fast Downward
hg clone http://hg.fast-downward.org ~/dev/fd/
cd ~/dev/fd/
./build.py
cp ${TOOLS}plan ~/dev/fd/

# Cleaning up and rebooting
rm -Rf ~/Downloads/*
sudo apt-get --yes autoremove
sudo reboot

