#!/bin/bash

## Rasp Cam Server

# This is a use case for the Raspberry Pi Camera Server
#

# Here you initialize a video server spilling 320x240 frames at 5 Hz at port 8554 from the camera at /dev/video0:
~/v4l2rtspserver/v4l2rtspserver -W 320 -H 240 -F 5 -P 8554 /dev/video0

