#!/bin/bash

## MADP

# MADP setup
#

# MADP
rm -Rf ${HOME}/dev/madp > /dev/null 2>&1
git clone git@github.com:gilbertoamarcon/MADP.git ${HOME}/dev/madp
cd ${HOME}/dev/madp/
mkdir -p results/GMAA/DecTiger
mkdir -p results/GMAA/dectiger
sh autogen.sh
./configure
make
make htmldoc
rm -Rf ${HOME}/.madp > /dev/null 2>&1
mkdir ${HOME}/.madp
cd ${HOME}/.madp
ln -s ${HOME}/dev/madp/problems
ln -s ${HOME}/dev/madp/results

