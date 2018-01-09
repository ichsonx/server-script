#!/usr/bin/env bash

yum install wget && \
yum install git && \
yum install curl && \
yum install bzip2 && \
git config --global user.email "sonxz@qq.com" && \
git config --global user.name "sonx" && \
git clone https://github.com/ichsonx/server-script.git && \
echo "alias ll='ls -lah'">>/etc/profile && \
echo "alias vi='vim'">>/etc/profile
