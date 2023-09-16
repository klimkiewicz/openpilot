#!/usr/bin/bash

sudo systemctl stop lte
sudo systemctl stop systemd-resolved
sudo cp resolv.conf /run/systemd/resolve/stub-resolv.conf

export PASSIVE="0"
exec ./launch_chffrplus.sh

