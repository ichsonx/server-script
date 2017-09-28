#!/usr/bin/env bash

#安装golang1.9，并且安装glide
sudo wget https://storage.googleapis.com/golang/go1.9.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.9.linux-amd64.tar.gz
sudo mkdir /root/goprojects && sudo mkdir /root/goprojects/bin && sudo mkdir /root/goprojects/pkg && sudo mkdir /root/goprojects/src
sudo echo "export GOROOT=/usr/local/go" >> /etc/profile
sudo echo "export GOPATH=/root/goprojects" >> /etc/profile
sudo echo "export PATH=\$PATH:\$GOROOT:\$GOROOT/bin:\$GOPATH:\$GOPATH/bin" >> /etc/profile
source /etc/profile
sudo curl https://glide.sh/get | sh