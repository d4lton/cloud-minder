#!/bin/sh

sudo cp cloud-minder.service /etc/systemd/system/
sudo systemctl --system daemon-reload
sudo systemctl enable cloud-minder
sudo systemctl start cloud-minder

