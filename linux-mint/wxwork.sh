#!/bin/bash
# sudo visudo
# xia ALL=(ALL) NOPASSWD: /opt/setDate.sh
echo "时光倒退..."
ls /opt/setDate.sh || exit
tmux new-session -d "exec sudo /opt/setDate.sh" || exit
tmux ls
echo "企业微信..."
wxwork="/home/dbit/vm/crossExe/企业微信-2/desktopdata/cxmenu/Desktop.C^5E3A_users_Public_Desktop/企业微信.lnk"
ls "$wxwork" || exit
sleep 0.1 #等待时间回退
nohup "$wxwork" %u > /tmp/workweixin.log 2>&1 &
echo '按任意键退出...'
sleep 0.5
#read -n 1
