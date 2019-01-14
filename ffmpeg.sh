#!/bin/bash

## FFMPEG 

# FFMPEG video processing
#

# Decoding video
ffmpeg -i $1 -c:v libx265 -crf 28 -c:a aac -b:a 128k $2

# Screen capture
ffmpeg -f x11grab -s $(xdpyinfo | awk '/dimensions/{print $2}') -r 60 -i :0.0 -qscale 0 -vcodec huffyuv ${HOME}/raw.avi

# Changing video packaging format
ffmpeg -i ${HOME}/raw.avi ${HOME}/video.mp4

# Cropping a time subset and changing video packaging format
ffmpeg -ss 00:00:02 -t 00:00:03 -i ${HOME}/raw.avi ${HOME}/video.mp4

# Cropping a time subset, scaling video, and converting to animated GIF 
ffmpeg -ss 00:00:01 -t 00:00:05 -i raw.avi  -vf scale=320:-1 out.gif

# Sequence of still images to video
ffmpeg -framerate 5 -pattern_type glob -i $1/"p-*.png" $2 -y

