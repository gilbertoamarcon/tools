#!/bin/bash

## RTL Wifi

# Setting up the driver for the rtl8821ae wireless device.
#

sudo apt-get --yes install git
git clone http://github.com/lwfinger/rtlwifi_new.git ${HOME}/dev/rtlwifi_new/
cd ${HOME}/dev/rtlwifi_new/
make
sudo make install
sudo modprobe rtl8821ae
sudo reboot
