#!/bin/bash

###
#   最初的初始化及安装必要软件
###
sudo apt-get update && \
sudo apt-get upgrade && \
sudo apt-get remove vim && \
sudo apt-get install -y vim && \
sudo apt-get install git && \
sudo apt-get install -y curl && \
sudo apt-get install -y wget && \
sudo apt-get install -y lrzsz && \

###
#   git配置相关
###
sudo git config --global user.email "sonxz@qq.com" && \
sudo git config --global user.name "sonx"
# git log 历史树别名和样式设定
git config --global alias.lg "log --pretty=format:'%C(yellow)%h%Creset %C(cyan)%d %C(white)%s %C(bold blue)<%an>%Creset %C(dim)%ad' --graph --date=format:'%Y-%m-%d %H:%M:%S'"

###
#   ubuntu16以后都默认安装python3.6.5，这里开始安装python的其他库
###
sudo apt-get install -y python3-pip && \
sudo pip3 install selenium && \
sudo pip3 install scrapy && \
sudo pip3 install pymongo && \
sudo pip3 install cx_Oracle && \
sudo pip3 install argparse && \
sudo pip3 install xlsxwriter && \
sudo pip3 install pandas && \
# sudo apt-get install -y phantomjs && \
# sudo apt-get remove phantomjs && \
# sudo wget https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/phantomjs/phantomjs-1.9.2-linux-x86_64.tar.bz2 && \
# sudo tar -jxvf phantomjs-1.9.2-linux-x86_64.tar.bz2 && \
# sudo mv phantomjs-1.9.2-linux-x86_64 /usr/local/phantomjs && \
# sudo echo "export PATH=\$PATH:/usr/local/phantomjs/bin" >> /etc/profile && \
source /etc/profile

###
#   安装nodejs以及相关
###
sudo apt-get install nodejs && \
sudo apt-get install npm

#安装mongodb及相关
#添加mongodb签名到APT
#创建/etc/apt/sources.list.d/mongodb-org-3.4.list文件并写入命令
#更新软件源列表
#安装mongodb（默认是安装稳定版）
# sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 0C49F3730359A14518585931BC711F9BA15703C6 && \
# echo "deb [ arch=amd64,arm64 ] http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.4.list && \
# sudo apt-get update && \
# sudo apt-get install -y mongodb-org && \
# sodu service mongod restart

###
#   安装golang及相关
###
sudo wget https://dl.google.com/go/go1.11.4.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.11.4.linux-amd64.tar.gz
sudo mkdir /root/goprojects && sudo mkdir /root/goprojects/bin && sudo mkdir /root/goprojects/pkg && sudo mkdir /root/goprojects/src
sudo echo "export GOROOT=/usr/local/go" >> /etc/profile
sudo echo "export GOPATH=/root/goprojects" >> /etc/profile
sudo echo "export GO111MODULE=on" >> /etc/profile
sudo echo "export PATH=\$PATH:\$GOROOT:\$GOROOT/bin:\$GOPATH:\$GOPATH/bin:\$GO111MODULE" >> /etc/profile
source /etc/profile
