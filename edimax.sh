#!/bin/bash

## Edimar Wireless Driver Setup

# Wireless Driver Setup for the Edimax USB Dongle. 
#

sudo apt install --yes git dkms
git clone https://github.com/zebulon2/rtl8814au.git ${HOME}/dev/rtl8814au
cd ${HOME}/dev/rtl8814au/
sudo cp -R . /usr/src/rtl8814au-4.3.21
sudo dkms build -m rtl8814au -v 4.3.21
sudo dkms install -m rtl8814au -v 4.3.21

# Removal:
sudo ./dkms-remove.sh

