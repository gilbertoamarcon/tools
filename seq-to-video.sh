#!/bin/bash
ffmpeg -framerate 5 -pattern_type glob -i $1/"p-*.png" $2 -y
