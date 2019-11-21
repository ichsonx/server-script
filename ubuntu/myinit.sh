#!/bin/bash

###
#   最初的初始化及安装必要软件
###
sudo apt-get update && \
sudo apt-get upgrade && \
sudo apt-get remove vim && \
sudo apt-get install -y vim && \
sudo apt-get install -y git && \
sudo apt-get install -y curl && \
sudo apt-get install -y wget && \
sudo apt-get install -y lrzsz && \
sudo apt-get install -y unzip && \

###
#   git配置相关
###
sudo git config --global user.email "sonxz@qq.com" && \
sudo git config --global user.name "sonx" && \
sudo git config --global core.editor vim && \
sudo git config --global merge.tool vimdiff && \
# git log 历史树别名和样式设定
git config --global alias.lg "log --pretty=format:'%C(yellow)%h%Creset %C(cyan)%d %C(white)%s %C(bold blue)<%an>%Creset %C(dim)%ad' --graph --all --date=format:'%Y-%m-%d %H:%M:%S'"  && \

###
#   ubuntu16以后都默认安装python3.6.5，这里开始安装python的其他库
###
sudo apt-get install -y python3-pip && \
pip3 install --upgrade setuptools && \
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
sudo apt-get install -y nodejs && \
sudo apt-get install -y npm

###
#   使用chrome headless，包括安装chrome、下载配置chrome driver、安装chromedp
#   前置依赖 git、wget
###
sudo apt-get install -y libxss1 libappindicator1 libindicator7
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome*.deb # Might show "errors", fixed by next line
########### 可选部分 开始
# 上一行是检查当前stable版本的chrome，在18.04报错缺少依赖，使用这一行安装依赖后会报错修复依赖
sudo apt-get install -y fonts-liberation
# 使用这一行来修复依赖安装
apt --fix-broken install
# 再安装一次chrome，无报错顺利安装完成
sudo dpkg -i google-chrome*.deb # Might show "errors", fixed by next line
########### 可选部分 结束
# 确认安装刚刚的chrome deb文件
# 可能会提示删除之前已经不再需要的包，并给出命令，依照提示执行 sudo apt autoremove 命令后，再执行安装命令即可。
sudo apt-get install -f
# 测试安装，本地启动chrome headless，再用curl测试。root用户启动需要添加 --no-sandbox 参数
# google-chrome --version 可查看当前安装的chrome版本号
google-chrome --headless --no-sandbox --remote-debugging-port=9222 https://chromium.org --disable-gpu
curl http://localhost:9222
# 下载对应的chrome driver，并设置好环境变量
# https://sites.google.com/a/chromium.org/chromedriver/downloads
unzip chromedriver_linux64.zip
sudo vi /etc/profile
# 添加到文件末尾 export PATH=$PATH:/root/chromedriver



###
#   安装zsh以及相关插件
###
sudo apt-get -y install zsh &&\
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"


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
sudo wget https://dl.google.com/go/go1.13.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.13.linux-amd64.tar.gz
sudo mkdir /root/goprojects && sudo mkdir /root/goprojects/bin && sudo mkdir /root/goprojects/pkg && sudo mkdir /root/goprojects/src
sudo echo "export GOROOT=/usr/local/go" >> /etc/profile
sudo echo "export GOPATH=/root/goprojects" >> /etc/profile
sudo echo "export GO111MODULE=on" >> /etc/profile
sudo echo "export GOPROXY=https://gocenter.io" >> /etc/profile
sudo echo "export PATH=\$PATH:\$GOROOT:\$GOROOT/bin:\$GOPATH:\$GOPATH/bin:\$GO111MODULE" >> /etc/profile
source /etc/profile
