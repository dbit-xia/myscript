#!/bin/bash

#���������ļ�ģ��
#docker run --rm -v /tmp/nginx:/tmp/nginx nginx:alpine cp /etc/nginx /tmp/ -R -v

#���ļ����Ƶ�ϵͳĿ¼
#mv /tmp/nginx /etc/nginx

#����
docker run -dit --name nginx -p 80:80 -v /etc/nginx:/etc/nginx nginx:alpine

#docker exec nginx nginx -t 

#docker exec nginx nginx -s reload

 
