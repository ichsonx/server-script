#!/usr/bin/env bash

#添加mongodb签名到APT
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 0C49F3730359A14518585931BC711F9BA15703C6
#创建/etc/apt/sources.list.d/mongodb-org-3.4.list文件并写入命令
echo "deb [ arch=amd64,arm64 ] http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.4.list
#更新软件源列表
sudo apt-get update
#安装mongodb（默认是安装稳定版）
sudo apt-get install -y mongodb-org
sodu service mongod restart

#配置MongoDB
#控制的配置文件在：/etc/mongodb.conf
#控制脚本在：/etc/init.d/mongodb
#MongoDB实例会把数据存放在：/var/lib/mongodb
#日志存放在：/var/log/mongodb
#默认由mongodb用户运行。
#如果如果显示目录不存在的话，需要运行下列命令指定文件夹：
#mongod --dbpath /var/lib/mongodb

#启动、停止、重启
#sudo service mongod start
#sudo service mongod stop
#sudo service mongod restart