#!/bin/sh
### BEGIN INIT INFO
# Provides:          sonx
# Required-Start:    $local_fs $network
# Required-Stop:     $local_fs
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# Short-Description:
# Description:       用于添加到/etc/profile.d/下，系统启动后会自动执行里面的所有shell脚本；
#                   还有一种方法是放到 /etc/init.d/下的
### END INIT INFO
#

/usr/local/bin/sslocal -c /root/shadowsocks.json -d start
/etc/init.d/polipo restart

exit 0