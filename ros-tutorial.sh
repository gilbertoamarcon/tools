#!/bin/bash

## ROS Tutorial: Jackal 
# This tutorial guides you through the basic operations for the Jackal robot.
# Jackal is a four-wheeled offroad mobile robot that has excelent support in ROS. 
# The default Jackal model in ROS commes with a 360 lidar, which is much better than the turtlebot kinect, so we are going to focus on Jackal for learning basic ROS. 
# 

# =======================================================
## Mapping
# =======================================================

# We will use 4 terminal windows in this tutorial. 
# Please go ahead and have all of them open.
# You can use terminator to make your life easier. 

# 1: On the first terminnal window, launch the jackal world in Gazebo:
roslaunch jackal_gazebo jackal_world.launch config:=front_laser

# 2: Wait until Gazebo is fully launched. On the second terminnal window, launch the jackal gmaping demo:
roslaunch jackal_navigation gmapping_demo.launch

# 3: Wait until gmaping is fully launched. On the third terminnal window, launch Rviz for visualization:
roslaunch jackal_viz view_robot.launch config:=gmapping

# 4: In Rviz, you will see a circle and arrows around the roobot. 
# Use the mouse to click and drag those elements and make to robot move.
# While the robot moves in Rviz, see it is also moving in Gazebo.
# Note in Rviz that a map is being created.

# 5: In Rviz, on the top menu you will se a button named "2D Nav Goal". Click it.
# Now, click and drag on the main window, where the map is. 
# This will assign a goal position to the robot. 
# Note how the robot will autonomously drive to that location.

# 6. Use to following command on the fourth terminal window to same to current map to the disk:
rosrun map_server map_saver -f ${HOME}/Documents/map


# 7. Quit all processes running across all terminals and repeat the whole process again. 
# Try a get a nice map of the world and store it on file.

# =======================================================
## Navigation
# =======================================================

# Now we are going to use the map you created to navigate.

# 1. Launch jackal world in Gazebo:
roslaunch jackal_gazebo jackal_world.launch config:=front_laser

# 2. Launch map navigation and point to the map you created:
roslaunch jackal_navigation amcl_demo.launch map_file:=${HOME}/Documents/map.yaml

# 3. Launch Rviz for localization: 
roslaunch jackal_viz view_robot.launch config:=localization

# 4. In Rviz, use the "2D Nav Goal" button again to tell the robot to go to various places in the map,

