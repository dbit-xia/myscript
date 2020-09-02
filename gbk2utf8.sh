#!/bin/bash
newfile=$1_utf8
iconv -f GBK -t utf8 "$1" -o "$newfile" && (echo 字符集转换成功:$newfile;nemo "$newfile")  || rm "$newfile"
read -n 1
