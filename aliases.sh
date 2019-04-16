#!/bin/bash


## Aliases

# Aliases
#

printf "

# Aliases
alias writer='setsid /usr/bin/libreoffice --writer --norestore &>$HOME/.writer.log'
alias xl='setsid /usr/bin/libreoffice --calc --norestore &>$HOME/.calc.log'

" >> $HOME/.bashrc
source ${HOME}/.bashrc
