#!/bin/sh

NODE=`which node`

npm install

cat cloud-minder.service.template | sed s+__USER__+$USER+ | sed s+__NODE__+$NODE+ > cloud-minder.service

sudo cp cloud-minder.service /etc/systemd/system/
sudo systemctl --system daemon-reload
sudo systemctl enable cloud-minder
sudo systemctl start cloud-minder

