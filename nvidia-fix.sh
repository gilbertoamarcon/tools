## Nvidia Drivers Fix

# Fixing Nvidia graphics drivers when they crash.
#

# Go to the virtual console using CRTL+ALT+F1, then:
sudo service lightdm stop
sudo apt-get purge nvidia-*
sudo apt-get autoremove
sudo apt-get clean
sudo add-apt-repository ppa:graphics-drivers/ppa -y
sudo apt-get -y update
sudo apt-get -y install nvidia-415
sudo reboot

