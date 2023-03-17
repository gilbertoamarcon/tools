#!/bin/bash

## Sublime Merge

# Setting Sublime Merge
#

build=1116
filename=sublime-merge_build-${build}_amd64.deb

wget -P $HOME/Downloads/ https://download.sublimetext.com/$filename
sudo dpkg -i $HOME/Downloads/$filename
rm $HOME/Downloads/$filename

