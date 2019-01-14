#!/bin/bash

## GDAL

# The OSGEO GDAL geographic data proccessing library. 
#

wget -P ${HOME}/Downloads/ http://download.osgeo.org/gdal/2.3.0/gdal-2.3.0.tar.gz
tar -xvzf ${HOME}/Downloads/gdal-2.3.0.tar.gz -C ${HOME}/Downloads/
cd ${HOME}/Downloads/gdal-2.3.0/
./configure
make -j 8
sudo make install
printf "\n# GDAL environment variables\nexport LD_LIBRARY_PATH=/usr/local/lib:$LD_LIBRARY_PATH" >> ${HOME}/.bashrc
source ${HOME}/.bashrc
rm -Rf ${HOME}/Downloads/gdal-2.3.0*
