#!/usr/bin/env bash

###
#   这里的shadowsocks配置文件中，需要自行修改server的ip地址、端口、密码等信息
###

#   polipo配置文件路径
polipofile="/etc/polipo/config"
#   shadowsocks配置文件路径
ssfile="shaowsocks.json"
#   自启动shadowsocks、polipo的脚本文件
ss_polipofile="./ss_polipo_initd.sh"
#   最终存放shadowsocks、polipo脚本文件的完整绝对路径及文件名
initpath="/etc/init.d/ss_polipo"

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
cat >> /etc/profile <<EOF
export http_proxy="http://127.0.0.1:8123/"
EOF

#   从本目录中拷贝ss_polipo_initd.sh到目标系统 /etc/init.d/下。目的是开机自启动shadowsocks和全局代理
#   如果要删除这个自启动服务，可使用命令：sudo update-rc.d -f ss_polipo remove
if [ -f "$ss_polipofile" ]; then
    cp $ss_polipofile $initpath
    chmod 755 $initpath
    sudo update-rc.d ss_polipo defaults 95
fi

#   重启计算机
#   polipo的启动命令     sudo /etc/init.d/polipo restart
#   shadowsocks的启动命令    sudo sslocal -c shawdowsocks.json -d start
reboot