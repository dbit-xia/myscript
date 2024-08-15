#!/bin/sh
#docker run --rm -e POSTGRESQL_PASSWORD=dbit -p 5432:5432 bitnami/postgresql:latest
mkdir:
	mkdir ~/data/pgsql -p
	#sudo chown 1001 /home/dbit/data/pgsql

start:
	docker run --rm --name pgsql \
	-e POSTGRESQL_USERNAME=dbit \
	-e POSTGRESQL_PASSWORD=dbit \
	-e ALLOW_EMPTY_PASSWORD=yes \
	-p 5432:5432 \
	-v /home/dbit/data/pgsql:/bitnami/postgresql \
	bitnami/postgresql:15.7.0


start2:
	docker run --rm -e POSTGRES_PASSWORD=123456 -p 5432:5432 postgres:latest