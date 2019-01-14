# #!/bin/bash

## PyCuda

# Setting the PyCuda GPU package
#

wget -P ${HOME}/Downloads/ https://developer.nvidia.com/compute/cuda/8.0/Prod2/local_installers/cuda-repo-ubuntu1604-8-0-local-ga2_8.0.61-1_amd64-deb
cd ${HOME}/Downloads/
sudo dpkg -i cuda-repo-ubuntu1604-8-0-local-ga2_8.0.61-1_amd64-deb
sudo apt-get -y update
sudo apt-get -y install cuda-8-0
sudo apt-get -y install cuda-toolkit-8-0 
sudo apt-get -y install nvidia-cuda-dev
sudo apt-get -y install python-pycuda

sudo pip install scikit-cuda

git clone https://github.com/cudamat/cudamat.git ${HOME}/dev/cudamat/
cd ${HOME}/dev/cudamat/
sudo pip install .

sudo pip install gnumpy==0.2 



PATH=$PATH:/usr/local/cuda-8.0/bin

