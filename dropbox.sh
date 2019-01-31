#!/bin/bash

## Dropbox Headless 

# Setting up Dropbox Headless to auto start
#

sudo sh -c "echo '[Unit]
Description=Dropbox Service
After=network.target

[Service]
ExecStart=/bin/sh -c '/usr/bin/dropbox start'
ExecStop=/bin/sh -c '/usr/bin/dropbox stop'
PIDFile=${HOME}/.dropbox/dropbox.pid
User=gilberto
Group=gilberto
Type=forking
Restart=on-failure
RestartSec=5
StartLimitInterval=60s
StartLimitBurst=3

[Install]
WantedBy=multi-user.target' > /etc/systemd/system/dropbox.service"
sudo systemctl daemon-reload
sudo systemctl enable dropbox
sudo systemctl start dropbox
sudo systemctl status dropbox
