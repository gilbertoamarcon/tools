#!/bin/bash

## Kernel Wifi

# Updating the kernel to solve wifi issues.
#

cd kernel/
sudo cp iwlwifi-3168-ucode-22.361476.0/* /lib/firmware/
sudo dpkg -i *.deb
sudo update-grub
sudo reboot
