#!/bin/bash


## Common packages

# Common pre-compiled libraries setup
#


# Linux packages
sudo add-apt-repository ppa:alexlarsson/flatpak -y
sudo add-apt-repository ppa:bookworm-team/bookworm -y
sudo add-apt-repository ppa:danielrichter2007/grub-customizer -y
sudo add-apt-repository ppa:gregory-hainaut/pcsx2.official.ppa -y
sudo add-apt-repository ppa:pj-assis/ppa -y
sudo add-apt-repository ppa:random-stuff/ppa -y
sudo add-apt-repository ppa:ubuntugis/ppa -y
sudo apt-add-repository ppa:mc3man/xerus-media -y
sudo apt-add-repository ppa:dimitris-kalamaras/ppa -y
sudo apt-get -y update
sudo apt-get -y install libdlib*
sudo apt-get -y install libopengm-*
sudo apt-get -y install arp-scan
sudo apt-get -y install automake
sudo apt-get -y install avahi-daemon
sudo apt-get -y install bookworm
sudo apt-get -y install build-essential
sudo apt-get -y install higan
sudo apt-get -y install flatpak
sudo apt-get -y install solaar-gnome3
sudo apt-get -y install compizconfig-settings-manager
sudo apt-get -y install csvtool
sudo apt-get -y install curlftpfs
sudo apt-get -y install default-jdk
sudo apt-get -y install default-jre
sudo apt-get -y install gparted
sudo apt-get -y install dia
sudo apt-get -y install docker.io
sudo apt-get -y install dvipng
sudo apt-get -y install exiv2
sudo apt-get -y install jstest-gtk
sudo apt-get -y install ffmpeg
sudo apt-get -y install filezilla
sudo apt-get -y install firefox
sudo apt-get -y install gdal-bin
sudo apt-get -y install gimp
sudo apt-get -y install terminator
sudo apt-get -y install git
sudo apt-get -y install p7zip
sudo apt-get -y install libnetcdf-dev
sudo apt-get -y install rar
sudo apt-get -y install gmt
sudo apt-get -y install gmt-dcw
sudo apt-get -y install gmt-gshhg
sudo apt-get -y install gnumeric
sudo apt-get -y install graphviz
sudo apt-get -y install grub-customizer
sudo apt-get -y install guvcview
sudo apt-get -y install hdfview
sudo apt-get -y install davfs2
sudo apt-get -y install htop
sudo apt-get -y install socnetv
sudo apt-get -y install impressive
sudo apt-get -y install inotify-tools
sudo apt-get -y install japi-compliance-checker
sudo apt-get -y install javacc
sudo apt-get -y install jd
sudo apt-get -y install joystick
sudo apt-get -y install libcommons-math-java
sudo apt-get -y install libgdal-dev
sudo apt-get -y install libjcommander-java
sudo apt-get -y install libpg
sudo apt-get -y install libxerces*
sudo apt-get -y install libyaml-cpp-dev
sudo apt-get -y install libyaml-cpp0.5v5
sudo apt-get -y install linux-headers-generic
sudo apt-get -y install lp-solve
sudo apt-get -y install maven
sudo apt-get -y install meld
sudo apt-get -y install doxygen
sudo apt-get -y install texlive
sudo apt-get -y install texlive-fonts-recommended 
sudo apt-get -y install texlive-fonts-recommended  
sudo apt-get -y install texlive-full
sudo apt-get -y install texlive-latex-extra
sudo apt-get -y install nautilus-dropbox
sudo apt-get -y install nautilus-open-terminal
sudo apt-get -y install openjfx
sudo apt-get -y install openssh-server
sudo apt-get -y install pavucontrol
sudo apt-get -y install pkgdiff
sudo apt-get -y install poppler-*
sudo apt-get -y install poppler-utils
sudo apt-get -y install pstoedit
sudo apt-get -y install python3-pip
sudo apt-get -y install python-avahi
sudo apt-get -y install python-gdal
sudo apt-get -y install python-pip
sudo apt-get -y install python-pyx
sudo apt-get -y install python-sklearn
sudo apt-get -y install qt4-default
sudo apt-get -y install qt5-default
sudo apt-get -y install samba
sudo apt-get -y install screen
sudo apt-get -y install sshfs
sudo apt-get -y install tree
sudo apt-get -y install lsyncd
sudo apt-get -y install vlc
sudo apt-get -y install wxgtk3.0-dev
sudo apt-get -y install yaml-cpp
sudo apt-get -y install zpaq
sudo apt-get -y install python-opengm

# Python packages
sudo -H pip install --upgrade pip
sudo -H pip install bibtexparser
sudo -H pip install bokeh
sudo -H pip install bunch==1.0.1
sudo -H pip install bunchify
sudo -H pip install cython
sudo -H pip install deepdish==0.3.6
sudo -H pip install dicttoxml
sudo -H pip install nxpd
sudo -H pip install pathos
sudo -H pip install pygraphviz
sudo -H pip install Flask
sudo -H pip install flake8
sudo -H pip install openpyxl==2.6.1
sudo -H pip install graphviz==0.10.1
sudo -H pip install gsw==3.0.6
sudo -H pip install h5py==2.7.1
sudo -H pip install haversine==0.4.5
sudo -H pip install Image
sudo -H pip install joblib==0.13.0
sudo -H pip install sympy
sudo -H pip install keras
sudo -H pip install lark==0.0.4
sudo -H pip install lark_parser==0.6.5
# sudo -H pip install matplotlib==1.5.1
sudo -H pip install matplotlib==2.2.4
sudo -H pip install naturalneighbor
sudo -H pip install ndg-httpsclient
sudo -H pip install netCDF4
sudo -H pip install networkx==2.2
sudo -H pip install nltk
sudo -H pip install numpy==1.15.4
sudo -H pip install opencv-python
sudo -H pip install oyaml==0.7
sudo -H pip install pandas==0.24.1
sudo -H pip install GPy
sudo -H pip install Pillow
sudo -H pip install pipreqs
sudo -H pip install plotly
sudo -H pip install pyasn
sudo -H pip install pydot
sudo -H pip install pymdptoolbox
sudo -H pip install pyOpenSSL
sudo -H pip install python-gantt
sudo -H pip install PyYAML==3.13
sudo -H pip install requests
sudo -H pip install scipy==1.2.0
sudo -H pip install statistics 
sudo -H pip install statsmodels
sudo -H pip install svgwrite
sudo -H pip install tables==3.4.2
sudo -H pip install tabulate	
sudo -H pip install tensorflow
sudo -H pip install tkinter
sudo -H pip install tqdm==4.19.5
sudo -H pip install xarray==0.10.8
sudo -H pip install xlrd
sudo -H pip install xmler
sudo -H pip install xmltodict 
sudo -H pip install yapf
sudo -H pip install yattag==1.10.1
sudo pip3 install --upgrade numpy
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
