#!/usr/bin/env bash

#ssfile="/etc/shaowsocks.json"
polipofile="/etc/polipo/config"
ssfile="shaowsocks.json"

#   首先安装shadowsocks需要的东西（python 和 pip 就当作默认安装了）
sudo apt-get install python-m2crypto
sudo pip install shadowsocks
#   添加ss的配置文件
if [ ! -f "$ssfile" ];then
    touch "$ssfile"
fi
cat > $configfile <<EOF
{
"server":"YOUR_SERVER_PUBLIC_IP_HERE",
"server_port":8044,
"local_port":1080,
"password":"YOUR_PASSWORD_HERE",
"timeout":600,
"method":"aes-256-cfb"
}
EOF

#   安装代理软件polipo，设置全局代理
sudo apt-get install polipo
#   添加polipo的配置文件
if [ ! -f "$polipofile" ];then
    touch "$polipofile"
fi
cat > $polipofile <<EOF
logSyslog = true
logFile = /var/log/polipo/polipo.log

proxyAddress = "0.0.0.0"

socksParentProxy = "127.0.0.1:1080"
socksProxyType = socks5

chunkHighMark = 50331648
objectHighMark = 16384

serverMaxSlots = 64
serverSlots = 16
serverSlots1 = 32
EOF

##  为终端添加http代理配置到/etc/profile中
sudo export http_proxy="http://127.0.0.1:8123/"

#   重启计算机
#   polipo的启动命令     sudo /etc/init.d/polipo restart
#   shadowsocks的启动命令    sudo sslocal -c shawdowsocks.json -d start
reboot