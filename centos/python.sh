#!/usr/bin/env bash

yum install openssl-devel bzip2-devel expat-devel gdbm-devel readline-devel sqlite-devel && \
yum -y  install  zlib* && \
wget https://www.python.org/ftp/python/3.6.4/Python-3.6.4.tgz && \
tar -xzvf Python-3.6.4.tgz -C  /tmp && \
cd  /tmp/Python-3.6.4/ && \
./configure --prefix=/usr/local && \
make && \
make altinstall && \
    #这样安装完，会在/usr/local/bin下生成几个可运行程序，其中软链接python3.6到/usr/bin/python3就可以了
    #如果还有其他需要软链接的，可自行考虑（例如pip3）
cd /usr/bin && \
ln -s /usr/local/bin/python3.6 /usr/bin/python3 && \
ln -s /usr/local/bin/pip3.6 /usr/bin/pip3 && \
pip3 install selenium && \
pip3 install scrapy && \
pip3 install pymongo
