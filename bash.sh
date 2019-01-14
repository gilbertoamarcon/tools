#!/bin/bash

## Basic Bash 

# Here are some basic terminal commands that save me up a lot of time. 
#

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

