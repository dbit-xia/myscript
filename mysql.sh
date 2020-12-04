#!/bin/bash
#docker stop mysql
#docker rm mysql
docker run -p 3306:3306 -p 33060:33060 --name mysql -v /etc/mysql/conf.d:/etc/mysql/conf.d -e MYSQL_ROOT_PASSWORD=runsa -d mysql

 
