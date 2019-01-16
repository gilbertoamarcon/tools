#!/bin/bash

## ROS Tutorial: Workspaces 

# Workspaces, packages, and Worlds 
# 

# Download the workspace creation script:
https://gilbertoamarcon.github.io/content/create-ws.html

# Create a workspace called "ws":
./create-ws.sh ws

# Source the bashrc to update environment variables:
source ${HOME}/.bashrc

# Use roscd to go to your workspace root directory.
# That's a good way to check if your worspace was created correctly. 
roscd

# If it all works, you will be taken to the following directory:
~/ros-ws/ws/devel

# Download the package creation script:
https://gilbertoamarcon.github.io/content/create-package.html

# Create a package named my_package inside your workspace:
./create-package.sh ws my_package

# Go to your package root directory:
roscd my_package

# This is where all the files related to your package will reside.


# Now, go to your workspace root:
roscd

# And go to the the src dirctory of your workspace:
cd ../src/

# Take a look at the contants of the src dir:
ls -l

# Your package is there. 
# Now, let's put there a package from a git repository:
git clone git@github.com:gilbertoamarcon/testbed.git

# Now we have two packages there:
ls -l

# Source the bashrc to update environment variables:
source ${HOME}/.bashrc

# Go to your package root directory:
roscd testbed/

# This is an example package that I made a while back. We wil not use most of its contents, but it servers as an example of a custom made package.
ls -l

# Type the following, and tap TAB a few times to see all the available executable code in this package:
rosrun testbed

# Go to the models' directory of the testbed package:
roscd testbed/models

# Run the following script to automatically create some object models:
./create-models.sh

# The models are used in our arena world.
# Go to the worlds' directory of the package:
roscd testbed/worlds/

# Take a look at the arena.world:
cat arena.world

# Now we have the arena.world configured. 
# See how the following command points to the arena.world:
echo $(rospack find testbed)/worlds/arena.world

# Now, use the following guide to map and navifgate the arena world:
https://gilbertoamarcon.github.io/content/ros-jackal.html
