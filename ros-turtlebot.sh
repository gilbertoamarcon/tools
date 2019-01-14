#!/bin/bash

## ROS Turtlebot

# This scrip covers launching basic operations for turtlebot in ROS Indigo.
#

# =======================================================
## Navigation
# =======================================================

# Launch turtlebot world in Gazebo
roslaunch turtlebot_gazebo turtlebot_world.launch world_file:=$(rospack find testbed)/worlds/arena.world

# Launch map navigation
roslaunch turtlebot_gazebo amcl_demo.launch map_file:=$(rospack find testbed)/maps/arena.yaml

# Rviz
roslaunch turtlebot_rviz_launchers view_navigation.launch

# Alvar
roslaunch testbed alvar.launch

# =======================================================
## Mapping
# =======================================================

# Launch turtlebot world in Gazebo
roslaunch turtlebot_gazebo turtlebot_world.launch world_file:=$(rospack find testbed)/worlds/arena.world

# Launch maping
roslaunch turtlebot_gazebo gmapping_demo.launch

# Rviz
roslaunch turtlebot_rviz_launchers view_navigation.launch

# Teleop
roslaunch turtlebot_teleop ps3_teleop.launch

# Saving map
rosrun map_server map_saver -f ~/Documents/map

# =======================================================
## Real Turtlebot
# =======================================================

# Launch these on the turtle:
roslaunch turtlebot_bringup minimal.launch
roslaunch turtlebot_navigation amcl_demo.launch map_file:=/home/blood/box_maps/empty/map.yaml
roslaunch turtlebot_bringup 3dsensor.launch



