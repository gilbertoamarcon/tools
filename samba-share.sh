#!/bin/bash

## Samba
# Setup Samba shared directory with Windows machines

# Usage: ./samba-share.sh <username> <dir_path>
# Ex: ./samba-share.sh sas ${HOME}/sea

username=$1
dir_path=$2

sudo apt-get --yes install samba
sudo adduser --shell /bin/false $username
sudo smbpasswd -a $username
sudo sh -c "echo '[sea]\npath = $dir_path\navailable = yes\nvalid users = $username\nread only = no\nbrowsable = yes\npublic = yes\nwritable = yes\n' >> /etc/samba/smb.conf"
sudo service smbd restart
