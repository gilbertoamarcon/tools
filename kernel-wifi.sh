#!/bin/bash
cd kernel/
sudo cp iwlwifi-3168-ucode-22.361476.0/* /lib/firmware/
sudo dpkg -i *.deb
sudo update-grub
sudo reboot
