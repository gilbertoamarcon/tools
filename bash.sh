#!/bin/bash

## Basic Bash 

# Here are some basic terminal commands that save me up a lot of time. 
#

## Basics

# Change directory: with no arguments, will take you to your home directory:
cd 

# The tilde is a short for your home directory:
cd ~

# The HOME variable is an environment variable that also points to your home directory:
cd ${HOME}

# Using an environment variable to change to a directory:
cd ${HOME}/Documents

# You can use echo to print:
echo Hello

# Note how he value of environment variables are evaluated and printed:
echo ${HOME}/Documents

# You can also unfold a number range:
echo {1..6}

# And mix that to get numeric naming:
echo file_{1..6}.txt

# You can use touch to create files:
touch file_{1..6}.txt

# You can use ls to show the files:
ls

# The -l argument shows in list format:
ls -l

# You can copy files with cp:
cp file_1.txt new_file.txt

# You can move or rename files with  mv:
mv file_1.txt new_file.txt

# You can make directories with mkdir:
mkdir aux

# You can make nested directories using the -p argument:
mkdir -p nested/directories/here

# You can copy directories and their contents using -Rf:
cp -Rf nested copied_dir

# You can move and rename directories and their contents using -f:
mv -f nested renamed_dir

# You print to a file by using redirection:
echo Hello > my_file

# You print the contents of a file by using cat:
cat my_file

# You append contents to a file:
echo Hello >> my_file

# And you can overwrite to a file:
echo overwrite > my_file

# You can use grep to search inside files:
grep -rn Hello

# You can see the history of commands you typed:
history

# You can search through your command history using grep:
history | grep echo

# You can print your command history to a file:
history > ${HOME}/my_command_history

# You can count the number of lines of a file:
cat ${HOME}/my_command_history | wc -l

# You can print your current directory:
pwd

# You can edit a file using a GUI app:
gedit ${HOME}/my_command_history

# You can use the * as a wild card, and remove all files in a directory:
rm  *

## File management 

# Remove all but macthing this
rm !(*macpddl)

# Write to file
printf "when there will be old man old now old.\n" >> filename

# Overwrite to file
printf "when there will be old man old now old.\n" > filename

# Duplicate file
< filename tee filename{01..20}

# Show content of multiple files
cat filename*

# Remove multiple files
rm filename*

# Downloading file to specific location 
wget https://raw.githubusercontent.com/gilbertoamarcon/tools/master/terminal.sh -P ~/Downloads/

# Create/Update all links in directory to point to a specific file
find . -type l -exec ln -sf ../../domain.macpddl {} ';'
find . -type f -name 'domain.macpddl' -exec ln -sf ../../domain.macpddl {} ';'

# Rename with regex
rename -n 's/^p(\d+)_s2_c(\d+)/P$1C$2/s' *
rename 's/^p(\d)_c(\d)$/P0$1C0$2/s' *
rename 's/^p(\d\d)_c(\d)$/P$1C0$2/s' *
rename 's/^p(\d)_c(\d\d)$/P0$1C$2/s' *

## History

# Show command history
history

# Execute previous command from history
!3

## Tar Balls

# Creating tar ball
tar -cvzf tarball.tar.gz mobile/*

# Extracting tar ball
tar -xvzf tarball.tar.gz

