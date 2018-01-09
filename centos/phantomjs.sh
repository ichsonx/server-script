#!/usr/bin/env bash

#用source命令执行本脚本
#因为安装phantomjs需要装一系列库文件，所以先这样安装，再删除。这样安装的phantomjs当时为2.1.1，有问题
#然后再网上下载1.9.2，脚本安装完配置环境变量
#yum install -y phantomjs
#sudo apt-get remove phantomjs
yum install fontconfig freetype freetype-devel fontconfig-devel libstdc++ && \
wget https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/phantomjs/phantomjs-1.9.2-linux-x86_64.tar.bz2 && \
tar -jxvf phantomjs-1.9.2-linux-x86_64.tar.bz2 && \
mv phantomjs-1.9.2-linux-x86_64 /usr/local/phantomjs && \
echo "export PATH=\$PATH:/usr/local/phantomjs/bin" >> /etc/profile && \
echo "export PATH=\$PATH:/usr/local/phantomjs/bin" >> ~/.bash_profile && \
source /etc/profile