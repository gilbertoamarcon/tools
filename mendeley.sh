#!/bin/bash
wget -O ${HOME}/Downloads/mendeley.deb https://www.mendeley.com/repositories/ubuntu/stable/amd64/mendeleydesktop-latest
sudo dpkg -i ${HOME}/Downloads/mendeley.deb
rm ${HOME}/Downloads/mendeley.deb
