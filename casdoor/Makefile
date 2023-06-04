#!/bin/bash

mysql:
	docker run --rm --name mysql \
	-p 3306:3306 -p 33060:33060 \
	-e MYSQL_ROOT_PASSWORD=123456 \
	-v ~/docker/mysql:/var/lib/mysql \
	mysql

createdb:
	docker exec -it mysql mysql --password=123456 \
	--execute="create database casdoor"

connectdb:
	docker exec -it mysql mysql --password=123456 --database=casdoor

casdoor:
	docker run --rm --name casdoor \
	-e driverName=mysql \
	-e dataSourceName='root:123456@tcp(178.90.0.1:3306)/' \
	-p 8000:8000 \
	casbin/casdoor:latest