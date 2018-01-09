#!/usr/bin/env bash

yum install openssl-devel bzip2-devel expat-devel gdbm-devel readline-devel sqlite-devel && \
yum -y  install  zlib* && \
wget https://www.python.org/ftp/python/3.6.4/Python-3.6.4.tgz && \
tar -xzvf Python-3.6.4.tgz -C  /tmp && \
cd  /tmp/Python-3.6.0/
