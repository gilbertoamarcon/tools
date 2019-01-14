#!/bin/bash

## PS3-Joy

# Pairing a PS3 gamepad via Bluetooth
#

sudo add-apt-repository --yes "deb http://ppa.launchpad.net/falk-t-j/qtsixa/ubuntu vivid main"
sudo apt-key adv --yes --keyserver keyserver.ubuntu.com --recv-keys 736E4F0B
sudo apt-get --yes update
sudo apt-get --yes install qtsixa
sudo apt-get --yes install sixad
sudo systemctl disable sixad

# Connect with USB, then run:
sudo sixpair

# Disconnect sixaxis from USB, then run:
sudo sixad -s
# Then press PS button to connect over bluetooth

# Button config:
echo 'ATTRS{name}=="PLAYSTATION*", ENV{DEVNAME}=="/dev/input/event*", ENV{ID_MODEL}="PS3Controller", SYMLINK+="input/dualshock3"'

# Start at system boot:
sudo sixad --boot-yes
