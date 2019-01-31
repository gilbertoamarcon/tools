#!/bin/bash


## Box-Sync

# A Box client
#

mkdir -p ${HOME}/box
mkdir -p ${HOME}/.davfs2/
sudo sh -c 'echo "use_locks 0" >> /etc/davfs2/davfs2.conf'
sudo sh -c 'echo "https://dav.box.com/dav ${HOME}/box davfs rw,user,noauto 0 0" >> /etc/fstab'
echo 'https://dav.box.com/dav marcondg@oregonstate.edu "sd65SD*&#sd76sdSD^%ASD"' > ${HOME}/.davfs2/secrets
chmod 600 ${HOME}/.davfs2/secrets
sudo usermod -a -G davfs2 $(whoami)
su -l $(whoami)
