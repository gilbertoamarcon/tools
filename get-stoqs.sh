#!/bin/bash
# =========================
## STOQS Setup
# =========================

# This script sets up the Spatial Temporal Oceanographic Query System (STOQS).
#

# Backing up present working directory
hdir=$(pwd)

sdir=~/Vagrants/stoqsvm

# Vagrant
wget -P ~/Downloads/ https://releases.hashicorp.com/vagrant/2.0.1/vagrant_2.0.1_x86_64.deb
sudo dpkg -i ~/Downloads/vagrant_2.0.1_x86_64.deb

# Install takes about an hour
mkdir -p $sdir
cd $sdir
curl "https://raw.githubusercontent.com/stoqs/stoqs/master/Vagrantfile" -o Vagrantfile
curl "https://raw.githubusercontent.com/stoqs/stoqs/master/provision.sh" -o provision.sh
vagrant plugin install vagrant-vbguest
vagrant up --provider virtualbox
cd $hdir
exit 0

# Login to test
cd ~/Vagrants/stoqsvm/
vagrant ssh -- -X   # Wait for [vagrant@localhost ~]$ prompt
cd ~/dev/stoqsgit && source venv-stoqs/bin/activate
export DATABASE_URL=postgis://stoqsadm:CHANGEME@127.0.0.1:5432/stoqs
./test.sh CHANGEME

# Start development server
cd ~/Vagrants/stoqsvm/
vagrant ssh -- -X   # Wait for [vagrant@localhost ~]$ prompt
cd ~/dev/stoqsgit && source venv-stoqs/bin/activate
export DATABASE_URL=postgis://stoqsadm:CHANGEME@127.0.0.1:5432/stoqs
stoqs/manage.py runserver 0.0.0.0:8000 --settings=config.settings.local

http://localhost:8000#<a href=https://raw.githubusercontent.com/gilbertoamarcon/tools/master/get-stoqs.sh target=_blank>Follow this link for the raw script.</a>#<a href=https://raw.githubusercontent.com/gilbertoamarcon/tools/master/get-stoqs.sh target=_blank>Follow this link for the raw script.</a>#<a href=https://raw.githubusercontent.com/gilbertoamarcon/tools/master/get-stoqs.sh target=_blank>Follow this link for the raw script.</a>#<a href=https://raw.githubusercontent.com/gilbertoamarcon/tools/master/get-stoqs.sh target=_blank>Follow this link for the raw script.</a>#<a href=https://raw.githubusercontent.com/gilbertoamarcon/tools/master/get-stoqs.sh target=_blank>Follow this link for the raw script.</a>#<a href=https://raw.githubusercontent.com/gilbertoamarcon/tools/master/get-stoqs.sh target=_blank>Follow this link for the raw script.</a>#<a href=https://raw.githubusercontent.com/gilbertoamarcon/tools/master/get-stoqs.sh target=_blank>Follow this link for the raw script.</a>#<a href=https://raw.githubusercontent.com/gilbertoamarcon/tools/master/get-stoqs.sh target=_blank>Follow this link for the raw script.</a>#<a href=https://raw.githubusercontent.com/gilbertoamarcon/tools/master/get-stoqs.sh target=_blank>Follow this link for the raw script.</a>#<a href=https://raw.githubusercontent.com/gilbertoamarcon/tools/master/get-stoqs.sh target=_blank>Follow this link for the raw script.</a>#<a href=https://raw.githubusercontent.com/gilbertoamarcon/tools/master/get-stoqs.sh target=_blank>Follow this link for the raw script.</a>#<a href=https://raw.githubusercontent.com/gilbertoamarcon/tools/master/get-stoqs.sh target=_blank>Follow this link for the raw script.</a>#<a href=https://raw.githubusercontent.com/gilbertoamarcon/tools/master/get-stoqs.sh target=_blank>Follow this link for the raw script.</a>#<a href=https://raw.githubusercontent.com/gilbertoamarcon/tools/master/get-stoqs.sh target=_blank>Follow this link for the raw script.</a>#<a href=https://raw.githubusercontent.com/gilbertoamarcon/tools/master/get-stoqs.sh target=_blank>Follow this link for the raw script.</a>#<a href=https://raw.githubusercontent.com/gilbertoamarcon/tools/master/get-stoqs.sh target=_blank>Follow this link for the raw script.</a>#<a href=https://raw.githubusercontent.com/gilbertoamarcon/tools/master/get-stoqs.sh target=_blank>Follow this link for the raw script.</a>#<a href=https://raw.githubusercontent.com/gilbertoamarcon/tools/master/get-stoqs.sh target=_blank>Follow this link for the raw script.</a>#<a href=https://raw.githubusercontent.com/gilbertoamarcon/tools/master/get-stoqs.sh target=_blank>Follow this link for the raw script.</a>#<a href=https://raw.githubusercontent.com/gilbertoamarcon/tools/master/get-stoqs.sh target=_blank>Follow this link for the raw script.</a>