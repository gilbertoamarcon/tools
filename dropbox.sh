#!/bin/bash

## Dropbox Headless 

# Setting up Dropbox Headless to auto start
#

sudo sh -c "echo '[Unit]
Description=Dropbox Service
After=network.target

[Service]
ExecStart=/usr/bin/dropbox start
ExecStop=/usr/bin/dropbox stop
PIDFile=/home/gilberto/.dropbox/dropbox.pid
User=gilberto
Group=gilberto
Type=forking
Restart=on-failure
RestartSec=5
StartLimitInterval=60
StartLimitBurst=3

[Install]
WantedBy=multi-user.target' > /etc/systemd/system/dropbox.service"
systemctl daemon-reload
systemctl enable dropbox
systemctl start dropbox
systemctl status dropbox
