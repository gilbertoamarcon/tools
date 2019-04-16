#!/bin/bash
# =========================
## OpenGM Setup
# =========================



# Install
git clone https://github.com/opengm/opengm.git $HOME/dev/opengm/
cd $HOME/dev/opengm/
cmake -DCMAKE_INSTALL_PREFIX:PATH=/usr --build .
make -j 8
sudo make install
