#!/bin/bash

## Disabling Devices

# To disable faulty hardware, such as a bad integrated network controller. 
#

# Determine the name of the modules associated with the device:
lsmod

# Blacklist the modules wirtting
blacklist rtlwifi

# Onto the file:
sudo nano /etc/modprobe.d/blacklist.conf

