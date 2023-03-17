#!/bin/bash

## Sublime 

# Setting up the Sublime text editor
#

build=3211
filename=sublime-text_build-${build}_amd64.deb

wget -P $HOME/Downloads/ https://download.sublimetext.com/$filename
sudo dpkg -i $HOME/Downloads/$filename
rm $HOME/Downloads/$filename
subl
pkill sublime_text
sudo mkdir -p ${HOME}/.config/sublime-text-3/Packages/User/
sudo mkdir -p ${HOME}/.local/share/applications/
sudo cp sublime-text-3/* ${HOME}/.config/sublime-text-3/Packages/User/
sudo cp mimeapps.list ${HOME}/.local/share/applications/
subl

