#!/usr/bin/env bash

#用source命令执行本脚本
#安装golang1.9，并且安装glide
wget https://redirector.gvt1.com/edgedl/go/go1.9.2.darwin-amd64.tar.gz
tar -C /usr/local -xzf go1.9.2.darwin-amd64.tar.gz
mkdir /root/goprojects && sudo mkdir /root/goprojects/bin && sudo mkdir /root/goprojects/pkg && sudo mkdir /root/goprojects/src
echo "export GOROOT=/usr/local/go" >> /etc/profile
echo "export GOPATH=/root/goprojects" >> /etc/profile
echo "export PATH=\$PATH:\$GOROOT:\$GOROOT/bin:\$GOPATH:\$GOPATH/bin" >> /etc/profile
echo "export GOROOT=/usr/local/go" >> ~/.bashrc
echo "export GOPATH=/root/goprojects" >> ~/.bashrc
echo "export PATH=\$PATH:\$GOROOT:\$GOROOT/bin:\$GOPATH:\$GOPATH/bin" >> ~/.bashrc
echo "export GOROOT=/usr/local/go" >> ~/.profile
echo "export GOPATH=/root/goprojects" >> ~/.profile
echo "export PATH=\$PATH:\$GOROOT:\$GOROOT/bin:\$GOPATH:\$GOPATH/bin" >> ~/.profile
source /etc/profile