#!/usr/bin/env bash

echo "ubuntu initing..."
sudo apt-get update && sudo apt-get -y upgrade &&  \
sudo echo "alias aget='sudo apt-get'">>/etc/profile && \
sudo echo "alias ll='ls -lah'">>/etc/profile && \
sudo echo "alias vi='sudo vim'">>/etc/profile && \
sudo echo "alias aget='sudo apt-get'">>~/.profile && \
sudo echo "alias ll='ls -lah'">>~/.profile && \
sudo echo "alias vi='sudo vim'">>~/.profile && \
sudo echo "alias aget='sudo apt-get'">>~/.bashrc && \
sudo echo "alias ll='ls -lah'">>~/.bashrc && \
sudo echo "alias vi='sudo vim'">>~/.bashrc && \
sudo reboot