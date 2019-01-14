#!/bin/bash

## ROS Summit 
# This scrip covers launching basic operations for summit
# 

# =======================================================
## Navigation
# =======================================================
# NOT WORKING YET
#

# Launch summit world in Gazebo
roslaunch summit_xl_gazebo summit_xl.launch world_name:=$(rospack find testbed)/worlds/arena.world

# Launch map navigation
roslaunch testbed amcl_demo.launch map_file:=$(rospack find testbed)/maps/arena.yaml

# Launch Rviz for localization
roslaunch testbed view_robot.launch config:=mapping

# Alvar
roslaunch testbed alvar.launch

# =======================================================
## Mapping
# =======================================================

# Launch summit world in Gazebo
roslaunch summit_xl_gazebo summit_xl.launch world_name:=$(rospack find testbed)/worlds/arena.world

# Launch maping
roslaunch testbed mapping.launch

# Launch Rviz for mapping
roslaunch testbed view_robot.launch config:=mapping

# Saving map
rosrun map_server map_saver -f ~/Documents/map

# =======================================================
## Real Robot
# =======================================================

ssh summit@192.168.0.200

