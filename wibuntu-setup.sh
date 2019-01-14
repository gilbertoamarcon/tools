#!/bin/bash

# Updates/Upgrades
sudo apt-get -y update

# Utils
sudo apt-get -y install tree
sudo apt-get -y install sshfs
sudo apt-get -y install htop
sudo apt-get -y install git
sudo apt-get -y install python 
sudo apt-get -y install python-pip
sudo pip install --upgrade pip
sudo pip install pyyaml

git config --global user.email "gilbertoamarcon@gmail.com"
git config --global user.name "Gilberto Marcon"

printf "\n# TOOLS:\nexport TOOLS='/mnt/c/Users/gilbe/Dropbox/Docs/tools/'\n" >> ${HOME}/.bashrc

cp sublime-text-3/* /mnt/c/Users/gilbe/AppData/Roaming/Sublime\ Text\ 3/Packages/User/

printf "\n# Sublime:\nalias subl=subl.exe\n" >> ${HOME}/.bashrc

sudo ln -s /mnt/c/Program\ Files/Sublime\ Text\ 3/subl.exe /usr/bin/
 
ln -s /mnt/c/Users/gilbe/Desktop/ ${HOME}/
ln -s /mnt/c/Users/gilbe/Dropbox/ ${HOME}/
ln -s /mnt/c/Users/gilbe/Documents/ ${HOME}/
ln -s /mnt/c/Users/gilbe/Downloads/ ${HOME}/
ln -s /mnt/c/Users/gilbe/Dropbox/OSU/research/sea/unity ${HOME}/

