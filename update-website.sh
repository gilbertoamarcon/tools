#!/bin/bash

## Update Repo Website

# Usage:
# ./update-website.sh version-name
#

# Backing up present working directory
hdir=$(pwd)

# Compiling website
cd $TOOLS
./website.sh

# Committing repos
./commit.sh "$1"

# Committing website
cd ~/dev/gilbertoamarcon.github.io/
./commit.sh "$1"

# Back to original working directory
cd $hdir

