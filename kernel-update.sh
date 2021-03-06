#!/bin/bash

## Kernel update

# Updating the linux kernel
# sudo apt-get --yes install linux-headers-4.19.32
#

files="
linux-headers-4.19.32-041932_4.19.32-041932.201903271306_all.deb
linux-headers-4.19.32-041932-generic_4.19.32-041932.201903271306_amd64.deb
linux-modules-4.19.32-041932-generic_4.19.32-041932.201903271306_amd64.deb
linux-image-unsigned-4.19.32-041932-generic_4.19.32-041932.201903271306_amd64.deb
"

# # Kernel dependencies
# sudo apt-get --yes install libelf-dev
# wget -P ${HOME}/Downloads/ http://security.ubuntu.com/ubuntu/pool/main/o/openssl/libssl1.1_1.1.0g-2ubuntu4.3_amd64.deb
# sudo dpkg -i ${HOME}/Downloads/libssl1.1_1.1.0g-2ubuntu4.3_amd64.deb
# rm ${HOME}/Downloads/libssl1.1_1.1.0g-2ubuntu4.3_amd64.deb

# Downloading files
for file in $files; do
	wget -P ${HOME}/Downloads/ https://kernel.ubuntu.com/~kernel-ppa/mainline/v4.19.32/$file
done

# Installing files
sudo dpkg -i ${HOME}/Downloads/*.deb

# Removing files
for file in $files; do
	rm ${HOME}/Downloads/$file
done


sudo update-grub
sudo reboot
