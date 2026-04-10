#!/bin/bash
echo "准备打开企业微信..."
sudo tmux new-session -d "exec /home/dbit/setDate.sh" || exit
sudo tmux ls
sleep 0.1 #等待时间回退
nohup "/home/dbit/vm/crossExe/企业微信-2/desktopdata/cxmenu/Desktop.C^5E3A_users_Public_Desktop/企业微信.lnk" %u > /tmp/workweixin.log 2>&1 &
echo '按任意键退出...'
sleep 0.5
#read -n 1
