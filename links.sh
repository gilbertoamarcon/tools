#!/bin/bash

## Desktop Links

# Links to hot directories.
#

ln -s ${HOME}/Dropbox/Docs/tools/ ${HOME}/Desktop/
ln -s ${HOME}/Dropbox/OSU/research/ ${HOME}/Desktop/
ln -s ${HOME}/Dropbox/OSU/research/sea ${HOME}/Desktop/sea
ln -s ${HOME}/Dropbox/Apps/ShareLaTeX/ ${HOME}

# Tools env var
printf "\n# TOOLS:\nexport TOOLS=${HOME}/Desktop/tools/\n" >> ${HOME}/.bashrc

