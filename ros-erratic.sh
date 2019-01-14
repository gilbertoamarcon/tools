#!/bin/bash

## ROS Erratic

# This scrip covers launching basic operations for erratic in ROS Indigo.
#

# =======================================================
## Real Erratic
# =======================================================

# SSH into the erratic (password: robotics2017):
ssh tank@tank.engr.oregonstate.edu

# Launch these on the erratic:
roslaunch erratic_player erratic_base.launch
roslaunch hokuyo_node hokuyo_test.launch
rosrun hokuyo_node hokuyo_node

# Record scan and odom:
rosbag record -j scan odom tf

# Run roscore
roscore

# Set the sim time param
rosparam set use_sim_time true

# Start gmapping:
rosrun gmapping slam_gmapping base_frame:=base_footprint

# Play the bag:
rosbag play --clock -l 2017-05-10-19-03-41.bag

# Save the map:
rosrun map_server map_saver -f map.pgm



