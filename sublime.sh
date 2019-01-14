#!/bin/bash

## Sublime 

# Setting up the Sublime text editor
#

wget -P ~/Downloads/ https://download.sublimetext.com/sublime-text_build-3176_amd64.deb
sudo dpkg -i ~/Downloads/sublime-text_build-3176_amd64.deb
rm ~/Downloads/sublime-text_build-3176_amd64.deb
subl
pkill sublime_text
sudo mkdir -p ${HOME}/.config/sublime-text-3/Packages/User/
sudo mkdir -p ${HOME}/.local/share/applications/
sudo cp sublime-text-3/* ${HOME}/.config/sublime-text-3/Packages/User/
sudo cp mimeapps.list ${HOME}/.local/share/applications/
subl

