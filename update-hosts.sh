#!/bin/bash

## Update Hosts

# Usage: ./update-hosts.sh file
# Ex: ./update-hosts.sh robotics

hosts_file=$1
local_host=$(hostname)

sudo cp hosts/$hosts_file /etc/hosts
sudo sed -i "2i 127.0.0.1	$local_host" /etc/hosts

