#!/usr/bin/env bash

#用source命令执行本脚本
#安装golang1.9，并且安装glide
sudo wget https://dl.google.com/go/go1.10.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.10.linux-amd64.tar.gz
sudo mkdir /root/goprojects && sudo mkdir /root/goprojects/bin && sudo mkdir /root/goprojects/pkg && sudo mkdir /root/goprojects/src
sudo echo "export GOROOT=/usr/local/go" >> /etc/profile
sudo echo "export GOPATH=/root/goprojects" >> /etc/profile
sudo echo "export PATH=\$PATH:\$GOROOT:\$GOROOT/bin:\$GOPATH:\$GOPATH/bin" >> /etc/profile
#sudo echo "export GOROOT=/usr/local/go" >> ~/.bashrc
#sudo echo "export GOPATH=/root/goprojects" >> ~/.bashrc
#sudo echo "export PATH=\$PATH:\$GOROOT:\$GOROOT/bin:\$GOPATH:\$GOPATH/bin" >> ~/.bashrc
#sudo echo "export GOROOT=/usr/local/go" >> ~/.profile
#sudo echo "export GOPATH=/root/goprojects" >> ~/.profile
#sudo echo "export PATH=\$PATH:\$GOROOT:\$GOROOT/bin:\$GOPATH:\$GOPATH/bin" >> ~/.profile
source /etc/profile