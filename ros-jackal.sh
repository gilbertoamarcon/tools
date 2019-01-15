#!/bin/bash

## ROS Jackal 
# This scrip covers launching and basic operations for jackal
# 

# =======================================================
## Navigation
# =======================================================

# Launch jackal world in Gazebo
roslaunch jackal_gazebo jackal_world.launch config:=front_laser world_name:=$(rospack find testbed)/worlds/arena.world

# Launch map navigation
roslaunch jackal_navigation amcl_demo.launch map_file:=$(rospack find testbed)/maps/arena.yaml

# Launch Rviz for localization
roslaunch jackal_viz view_robot.launch config:=localization

# =======================================================
## Mapping
# =======================================================

# Launch jackal world in Gazebo
roslaunch jackal_gazebo jackal_world.launch config:=front_laser world_name:=$(rospack find testbed)/worlds/arena.world

# Launch gmaping
roslaunch jackal_navigation gmapping_demo.launch

# Launch Rviz for mapping
roslaunch jackal_viz view_robot.launch config:=gmapping

# Saving map
rosrun map_server map_saver -f ~/Documents/map

