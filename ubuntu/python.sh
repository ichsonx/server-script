#!/usr/bin/env bash

#ubuntu16默认已经安装Python3.5.2
#安装pip3

sudo apt-get install -y python3-pip && \
echo "install selenium ..." && \
sudo pip3 install selenium && \
sudo pip3 install scrapy