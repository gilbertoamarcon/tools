#!/bin/bash
# =========================
## Wifi Fix
# =========================

# Old Method - didnt work last time
# printf "\n\n# Internal wireless adapter fix\nblacklist wlp1s0\n" | sudo tee --append /etc/modprobe.d/blacklist.conf > /dev/null
# sudo update-initramfs -u
# sudo reboot

printf "\n\n# Internal wireless adapter fix\niface wlp1s0 inet manual\n" | sudo tee --append /etc/network/interfaces > /dev/null
sudo service network-manager restart


