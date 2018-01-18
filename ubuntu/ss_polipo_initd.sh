#!/usr/bin/env bash

#   用于添加到/etc/profile.d/下，系统启动后会自动执行里面的所有shell脚本；
#   还有一种方法是放到 /etc/init.d/下的

sudo sslocal -c /root/shadowsocks.json -d start
sudo /etc/init.d/polipo restart