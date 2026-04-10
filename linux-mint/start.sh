#!/bin/bash

#echo pulseaudio
#pulseaudio --start

#echo 挂载磁盘...
# 检查 /dev/nvme0n1p3 的标签是否为 'Code'
if [ "$(sudo blkid -s LABEL -o value /dev/nvme0n1p3 2>/dev/null)" = "Code" ]; then
    echo "检测到 nvme0n1 为 Code 盘，挂载 nvme0n1 的分区..."
    sudo mount /dev/nvme0n1p4 /home/dbit/Downloads ; \
    sudo mount /dev/nvme0n1p3 /home/dbit/Code ; \
    sudo mount /dev/nvme0n1p5 /home/dbit/vm ;\
    sudo mount /dev/nvme1n1p11 /home/dbit/.cache/JetBrains
else
    echo "未检测到 nvme0n1 为 Code 盘，挂载 nvme1n1 的分区..."
    sudo mount /dev/nvme1n1p4 /home/dbit/Downloads ; \
    sudo mount /dev/nvme1n1p3 /home/dbit/Code ; \
    sudo mount /dev/nvme1n1p5 /home/dbit/vm ; \
    sudo mount /dev/nvme0n1p11 /home/dbit/.cache/JetBrains
fi

#ln -s  /home/dbit/下载/.deepinwine /home/dbit/.deepinwine
#/home/dbit/下载/weixin
#ln -s /home/dbit/vm/containerd /var/local/
#ln -s /home/dbit/vm/buildkit /var/local/
#ln -s /home/dbit/vm/nerdctl /var/lib/

#(cd /home/dbit/coredns-1.9.3 && sudo tmux new-session -d -s coredns "exec ./coredns -p 53")

#echo clash...
#tmux new-session -d -s clash "exec clash-verge"

#tmux new-session sudo dotenv-rust -f /etc/default/v2raya v2raya
#tmux new-session -d -s v2ray "exec ~/Downloads/tools/v2ray/v2ray-linux-64-4.28/v2ray -c /etc/v2ray/config.json"
#tmux new-session -d -s proxy "exec ssh -T -N -D 127.0.0.1:7890 -o ServerAliveInterval=60 -o ServerAliveCountMax=3 -o ExitOnForwardFailure=yes root@198.176.49.38 -p 12222 -v"

echo 启动容器网络nerdctl0...
sudo systemctl start containerd
sudo systemctl start buildkit
sudo docker run --rm nginx:alpine echo OK 

echo reload nginx 
#sudo nginx -s reload
sudo systemctl restart nginx

echo 按任意键退出...
#read -n 1
