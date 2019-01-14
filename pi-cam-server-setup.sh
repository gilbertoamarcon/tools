#!/bin/bash

## Rasp Cam Server Setup

# This Script will setup the Raspberry Pi Camera Server
#

curl http://www.linux-projects.org/listing/uv4l_repo/lrkey.asc | sudo apt-key add -
sudo nano /etc/apt/sources.list
deb http://www.linux-projects.org/listing/uv4l_repo/raspbian/ jessie main
sudo apt-get update
sudo apt-get install uv4l uv4l-raspicam
sudo apt-get install uv4l-raspicam-extras
sudo service uv4l_raspicam restart
sudo raspi-config
sudo rpi-update
uv4l --help --driver raspicam --driver-help
uv4l --driver raspicam --auto-video_nr --width 640 --height 480 --encoding jpeg
dd if=/dev/video0 of=snapshot.jpeg bs=11M count=1
sudo apt-get install uv4l-server uv4l-uvc uv4l-xscreen uv4l-mjpegstream uv4l-dummy uv4l-raspidisp
sudo apt-get install uv4l-webrtc

sudo apt-get install cmake
sudo apt-get install liblivemedia-dev liblog4cpp5-dev
wget http://www.live555.com/liveMedia/public/live555-latest.tar.gz -O - | tar xvzf -
cd live
./genMakefiles linux
sudo make CPPFLAGS=-DALLOW_RTSP_SERVER_PORT_REUSE=1 install
git clone https://github.com/mpromonet/v4l2rtspserver.git
cd v4l2rtspserver
cmake . && make
cd ~/v4l2rtspserver
./v4l2rtspserver -W 320 -H 240 -F 5 -P 8554 /dev/video0
