#!/bin/bash

## Rasp Cam Client

# Getting video from the Raspberry Pi Camera Server over the network
#

# Get VLC
sudo apt-get install vlc

# Run VLC and enter the following under Network Streams:
rtsp://192.168.137.2:8554/unicast

# Or, if you named your Rasp IP:
rtsp://rasp:8554/unicast

