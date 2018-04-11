#!/usr/bin/env bash

sudo apt-get install nodejs
sudo ln -s /usr/bin/nodejs /usr/bin/node
sudo apt-get install npm

# 安装tiddlywiki，自己的服务器测试过，以下不可行，没追究
sudo npm install -g tiddlywiki
tiddlywiki --version
# 初始化tiddlywiki
tiddlywiki mynewwiki --init server to create a folder for a new wiki that includes server-related components
tiddlywiki mynewwiki --server to start TiddlyWiki
Visit http://127.0.0.1:8080/ in your browser