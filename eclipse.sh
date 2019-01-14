#!/bin/bash

wget -P ${HOME}/Downloads http://mirror.csclub.uwaterloo.ca/eclipse/oomph/epp/photon/R/eclipse-inst-linux64.tar.gz
tar -xvzf ${HOME}/Downloads/eclipse-inst-linux64.tar.gz -C ${HOME}/Downloads/
${HOME}/Downloads/eclipse-installer/eclipse-inst
rm -Rf ${HOME}/Downloads/eclipse*
echo "
[Desktop Entry]
Name=Eclipse Photon
Type=Application
Exec=${HOME}/eclipse/java-photon/eclipse/eclipse
Terminal=false
Icon=${HOME}/eclipse/java-photon/eclipse/icon.xpm
Comment=Integrated Development Environment
NoDisplay=false
Categories=Development;IDE;
Name[en]=Eclipse
" > /usr/share/applications/eclipse.desktop
