#!/bin/bash
# =========================
## Rotate Monitor
# =========================

# Rotating Monitor screen from the command line
# ./rotate-monitor.sh 0 normal
#

# Monitor ID
m=$1

# Orientation: left right inverted normal
o=$2

# Getting Monitor List
monitors=($(xrandr -q | grep '\bconnected\b' | while read -r l; do echo "$l" | awk '{print $1;}'; done))

# Applying Rotation
xrandr --output ${monitors[$m]} --rotate $o
