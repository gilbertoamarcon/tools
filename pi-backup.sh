#!/bin/bash
## Raspberry Pi Backup

# Here are some commands to backup a Raspberry Pi SD card.
# This assumes the SD card is plugged to a linux computer at /dev/sdb.
#

# Backup:
sudo dd bs=4M if=/dev/sdb of=raspbian.img

# Restore:
sudo dd bs=4M if=raspbian.img of=/dev/sdb

# Backup using Gzip to save up space:
sudo dd bs=4M if=/dev/sdb | gzip > rasbian.img.gz

# Restore using Gzip:
gunzip --stdout rasbian.img.gz | sudo dd bs=4M of=/dev/sdb

