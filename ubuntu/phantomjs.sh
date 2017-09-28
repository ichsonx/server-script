#!/usr/bin/env bash


echo "install phantomjs1.9.2...."

sudo wget https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/phantomjs/phantomjs-1.9.2-linux-x86_64.tar.bz2
sudo tar -jxvf phantomjs-1.9.2-linux-x86_64.tar.bz2
sudo mv phantomjs-1.9.2-linux-x86_64 /usr/local/phantomjs
sudo echo "export PATH=\$PATH:/usr/local/phantomjs/bin" >> /etc/profile
source /etc/profile