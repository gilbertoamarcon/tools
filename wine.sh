#!/bin/bash

## Wine

# The Wine Windows Emulator. 
#

# wine
sudo apt-get --yes update
sudo apt-get --yes install wine
sudo apt-get --yes install wine32
sudo apt-get --yes install wine64
sudo apt-get --yes install libwine
sudo apt-get --yes install libwine:i386
sudo apt-get --yes install fonts-wine
# Copy AoC through wine
cp ${HOME}/Downloads/apps/aoe.zip ${HOME}/.wine/dosdevices/c:/
unzip ${HOME}/.wine/dosdevices/c:/aoe.zip -d ${HOME}/.wine/dosdevices/c:/
rm ${HOME}/.wine/dosdevices/c:/aoe.zip
# winetricks
winetricks directplay
# voobly
wget -P ${HOME}/Downloads https://www.voobly.com/updates/voobly-v2.2.5.60.exe
wine ${HOME}/Downloads/voobly-v2.2.5.60.exe
# Get wine-staging
sudo add-apt-repository --yes ppa:pipelight/stable
sudo apt-get --yes update
sudo apt-get install --yes --install-recommends wine-staging
# Use run-voobly.sh to run
