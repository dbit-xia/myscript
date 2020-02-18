#!/bin/bash

#复制配置文件模板
#docker run --rm -v /tmp/nginx:/tmp/nginx nginx:alpine cp /etc/nginx /tmp/ -R -v

#将文件复制到系统目录
#mv /tmp/nginx /etc/nginx

#启动
docker run -dit --name nginx -p 80:80 -v /etc/nginx:/etc/nginx nginx:alpine

#docker exec nginx nginx -t 

#docker exec nginx nginx -s reload

 
