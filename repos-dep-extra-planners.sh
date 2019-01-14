#!/bin/bash

## Repos Dependencies

# This script will install and configure all repos dependencies.
#

# YAHSP2
# git clone https://github.com/aldukeman/yahsp2.git ${HOME}/dev/yahsp2/
# cd ${HOME}/dev/yahsp2/
# ./build

# CPT
wget -P ${HOME}/Downloads/ http://www.cril.univ-artois.fr/${HOME}vidal/cpt/cpt-1.0.tar.gz
tar -xvzf ${HOME}/Downloads/cpt-1.0.tar.gz -C ${HOME}/Downloads/
rm -Rf ${HOME}/Downloads/cpt-1.0.tar.gz
cd ${HOME}/Downloads/cpt-1.0/
./build fast

# Z3
git clone https://github.com/Z3Prover/z3 ${HOME}/dev/z3/
cd ${HOME}/dev/z3/
python scripts/mk_make.py
cd build
make
sudo make install

# Piranha
git clone https://github.com/bluescarni/piranha ${HOME}/dev/piranha/
mkdir ${HOME}/dev/piranha/build/
cd ${HOME}/dev/piranha/build/
cmake ../
sudo make install

# SMTPlan+
git clone https://github.com/KCL-Planning/SMTPlan.git ${HOME}/dev/SMTPlan/
sed -i '15i\set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -pthread -Wno-deprecated-declarations")' ${HOME}/dev/SMTPlan/SMTPlan/CMakeLists.txt
cd ${HOME}/dev/SMTPlan/SMTPlan/
mkdir build
cd build
cmake ..
make

# APPL
wget -P ${HOME}/Downloads/ http://bigbird.comp.nus.edu.sg/pmwiki/farm/appl/uploads/Main/appl-0.96.tar.gz
tar -xvzf ${HOME}/Downloads/appl-0.96.tar.gz -C ${HOME}/dev/
rm -f ${HOME}/Downloads/appl-0.96.tar.gz
mv -f ${HOME}/dev/appl-0.96 ${HOME}/dev/appl
cd ${HOME}/dev/appl/src/
make

# SPUDD
git clone git@gitlab.com:human-machine-teaming/spudd.git ${HOME}/dev/spudd/
cd ${HOME}/dev/spudd/
./build.sh

# RDDL
git clone https://github.com/ssanner/rddlsim.git ${HOME}/dev/rddlsim/
cd ${HOME}/dev/rddlsim/
sudo chmod +x compile
./compile

# Buddy
wget -P ${HOME}/Downloads/ https://downloads.sourceforge.net/project/buddy/buddy/BuDDy%202.4/buddy-2.4.tar.gz
tar -xvzf ${HOME}/Downloads/buddy-2.4.tar.gz -C ${HOME}/Downloads/
cd ${HOME}/Downloads/buddy-2.4/
./configure --prefix=/
make
sudo make install
cd ${HOME}
rm -Rf ${HOME}/Downloads/buddy-2.4*

# PROST Install and Config
./prost.sh

# Glutton
git clone git@gitlab.com:human-machine-teaming/g-pack.git ${HOME}/dev/g-pack/
cd ${HOME}/dev/g-pack/
make

# Fast Forward
wget -P ${HOME}/Downloads/ https://fai.cs.uni-saarland.de/hoffmann/ff/FF-v2.3.tgz
tar -xvzf ${HOME}/Downloads/FF-v2.3.tgz -C ${HOME}/Downloads/
cd ${HOME}/Downloads/FF-v2.3
make

# Fast Downward
hg clone http://hg.fast-downward.org ${HOME}/dev/fd/
cd ${HOME}/dev/fd/
./build.py
cp ${TOOLS}plan ${HOME}/dev/fd/

# Cleanup
rm -Rf ${HOME}/Downloads/*

