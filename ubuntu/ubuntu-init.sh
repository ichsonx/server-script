#!/usr/bin/env bash

echo "ubuntu initing..."
sudo apt-get update && sudo apt-get -y upgrade && sudo reboot && \
sudo echo "alias aget='sudo apt-get'">>/etc/profile && \
sudo echo "alias ll='sudo ls -lah'">>/etc/profile && \
sudo echo "alias vi='sudo vim'">>/etc/profile