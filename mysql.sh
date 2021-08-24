#!/bin/bash
#docker stop mysql
#docker rm mysql
docker run -p 3306:3306 -p 33060:33060 --name mysql -v /etc/mysql/conf.d:/etc/mysql/conf.d -e MYSQL_ROOT_PASSWORD=123456 -d mysql

skip-grant-tables
flush privileges
CREATE USER 'dbit'@'%' IDENTIFIED with mysql_native_password  BY 'dbit'
grant all on *.* to dbit@'localhost'

 
#!/bin/sh

#docker run --rm -e POSTGRESQL_PASSWORD=dbit -p 5432:5432 bitnami/postgresql:latest

mkdir ~/data/mysql -p
sudo chown 1001 ~/data/mysql

docker run --rm \
-e ALLOW_EMPTY_PASSWORD=yes \
-p 3306:3306 \
-v /home/dbit/data/mysql:/bitnami/mysql/data \
bitnami/mysql:latest


docker run --name mysql -p 3306:3306 -e MYSQL_ROOT_PASSWORD=password123 bitnami/mysql:latest