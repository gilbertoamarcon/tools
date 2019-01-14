#!/bin/bash


## Calc

# A custom RPN calculator
#


mkdir -p ${HOME}/dev/
git clone https://github.com/gilbertoamarcon/calc.git ${HOME}/dev/calc/
cd ${HOME}/dev/calc/
./build.sh
sudo ./install.sh
cd $hdir
rm -Rf ${HOME}/dev/calc/
