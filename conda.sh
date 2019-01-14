#!/bin/bash

## Conda

# The Conda Python Environment
#


# Anaconda Setup 2.7
file=Anaconda2-5.1.0-Linux-x86_64.sh
wget -P ${HOME}/Downloads/ https://repo.anaconda.com/archive/$file
cd ${HOME}/Downloads/
chmod +x $file
./$file
rm $file
source ${HOME}/.bashrc

# Anaconda Setup 3.6
file=Anaconda3-5.1.0-Linux-x86_64.sh
wget -P ${HOME}/Downloads/ https://repo.anaconda.com/archive/$file
cd ${HOME}/Downloads/
chmod +x $file
./$file
rm $file
source ${HOME}/.bashrc


# Update and dependencies
conda update -y conda
conda update -yn base conda
conda install -y numba
conda install -y yaml
conda install -c anaconda yaml 
conda install -c conda-forge deepdish 
conda config -y --append channels conda-forge


# Creating and utilizing environments
conda create -y --name mdp python=3 pandas numpy yaml numba deepdish
conda remove --name mdp --all
source activate mdp
source deactivate

# Removing Anaconda
rm -Rf ${HOME}/anaconda2
rm -Rf ${HOME}/anaconda3
rm -Rf ${HOME}/.anaconda/navigator
rm -Rf ${HOME}/.condarc 
rm -Rf ${HOME}/.conda
rm -Rf ${HOME}/.continuum
