#!/bin/bash

## SSH Login

# Here are some basic SSH commands that save me up a lot of time.
#

# SSH login to remote server
ssh -l marcondg shell.onid.oregonstate.edu
ssh -l marcondg access.engr.oregonstate.edu

# SSH login to remote server with graphics
ssh -X -l marcondg access.engr.oregonstate.edu

## File Copy

# Copying a file from local to host
scp ~/Dropbox/Apps/Pancake.io/index.html marcondg@shell.onid.oregonstate.edu:public_html/
scp ~/Dropbox/Apps/Pancake.io/index.html marcondg@access.engr.oregonstate.edu:public_html/

# Copying a file from host to local
scp marcondg@access.engr.oregonstate.edu:public_html/index.html ~/Dropbox/Apps/Pancake.io/ 

# Copying an entire folder
scp -r ~/Dropbox/Apps/Pancake.io/* marcondg@shell.onid.oregonstate.edu:public_html/
scp -r ~/Dropbox/Apps/Pancake.io/* marcondg@access.engr.oregonstate.edu:public_html/

# Set up execute and read permissions on all files on all folders recursivelly
chmod -R +xr *

## Remote folder Mount

# Remote server
mkdir ~/eng/
sshfs marcondg@access.engr.oregonstate.edu: ~/eng/

# Raspberry Pi
mkdir ~/pi/
sshfs pi@rasp: ~/pi/

## SSH login without password

# Use this to create your key. Hit ENTER for every prompt.
ssh-keygen -t rsa

# Create a .ssh directory on the remote server user home folder
ssh marcondg@shell.onid.oregonstate.edu mkdir -p ~/.ssh

# Copy your key to the remote server .ssh folder
cat ~/.ssh/id_rsa.pub | ssh marcondg@shell.onid.oregonstate.edu 'cat >> ~/.ssh/authorized_keys'
cat ~/.ssh/id_rsa.pub | ssh aadi1@aadi1 'cat >> ~/.ssh/authorized_keys'

# Now you can SSH login without typing the password.

## TEACH class path
cd /nfs/farm/classes/eecs/spring2017/cs325/handin

# Sending terminal commands over SSH withough actual login examples:
ssh pi@rasp '~/mobile/bin/driver'
ssh pi@rasp '~/mobile/cam_server.sh'
ssh pi@rasp '~/mobile/teleop.sh'

