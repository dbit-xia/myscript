#!/bin/sh
#docker run --rm -e POSTGRESQL_PASSWORD=dbit -p 5432:5432 bitnami/postgresql:latest
mkdir:
	mkdir ~/data/pgsql -p
	#sudo chown 1001 /home/dbit/data/pgsql

start:
	docker run --rm --name pgsql \
	-e POSTGRESQL_USERNAME=dbit \
	-e POSTGRESQL_PASSWORD=dbit \
	-p 5432:5432 \
	-v /home/dbit/data/pgsql:/bitnami/postgresql \
	bitnami/postgresql:latest