#!/bin/bash
# 保存当前时间
sudo date #验证sudo权限

timedatectl set-ntp false

current=$(date "+%Y-%m-%d %H:%M:%S")
newtime="2026-04-01 15:30:00"

echo "设置: $current -> $newtime"
# 1秒后修改时间（使用 sleep 而不是 timeout）
sudo date -s "$newtime"
echo "即将恢复..."
# 再等1秒后恢复
sleep 1 && sudo date -s "$current"

timedatectl set-ntp true

sleep 10
