#!/bin/bash

## JabRef 

# Setting up the JabRef ref manager
#

version=4.3.1
filename=JabRef-${version}.jar

wget -P $HOME/Downloads/ "https://download.fosshub.com/Protected/expiretime=1555858967;badurl=aHR0cHM6Ly93d3cuZm9zc2h1Yi5jb20vSmFiUmVmLmh0bWw=/b7ba2359a10fc13d85509b576c51ba2433f4acadcf808a7577430d73a4184ad6/5b856554f9ee5a5c3e979ebd/5b8565aef9ee5a5c3e979eca/$filename"
sudo mv $HOME/Downloads/$filename /usr/bin/jabref.jar


printf "

# JabRef
alias jabref='java -jar /usr/bin/jabref.jar'

" >> $HOME/.bashrc
source ${HOME}/.bashrc
