## Nvidia Drivers

# Setting up Nvidia graphics drivers
#

# Go to the virtual console using CRTL+ALT+F1, then:
sudo service lightdm stop
sudo add-apt-repository ppa:graphics-drivers/ppa -y
sudo apt-get update
sudo apt-get install nvidia-415

