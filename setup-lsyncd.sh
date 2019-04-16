#!/bin/bash

## Setup lsyncd

# Usage: ./setup-lsyncd.sh  remote remote-dir local-dir
# Ex: ./setup-lsyncd.sh sas@server dev/sas-server/data/sas/ data/sas/

remote=$1
remote_dir=$2
local_dir=$3
local_host=$(hostname)
local_user=$(whoami)

known_hosts=-oStrictHostKeyChecking=no

# Authorizing remote
remote_key=$(ssh $known_hosts $remote 'cat ~/.ssh/id_rsa.pub')
echo $remote_key >> $HOME/.ssh/authorized_keys

# Running daemon on remote
# comm="lsyncd -nodaemon -rsync $remote_dir $local_user@$local_host:$local_dir"
comm="lsyncd -rsync $remote_dir $local_user@$local_host:$local_dir"
echo $comm
ssh $known_hosts $remote $comm

