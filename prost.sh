#!/bin/bash

## PROST

# The PROST plannner
#


hg clone http://hg@bitbucket.org/tkeller/prost ${HOME}/dev/prost/
cd ${HOME}/dev/prost/src/search
make
cd ${HOME}/dev/prost/src/rddl_parser
make
cd ${HOME}/dev/prost/testbed
./initialize_testbed.py ${HOME}/dev/rddlsim


ln -s ${HOME}/dev/rddlsim/ ${HOME}/dev/prost/testbed/rddlsim
