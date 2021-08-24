#!/bin/sh

#docker run --rm -e POSTGRESQL_PASSWORD=dbit -p 5432:5432 bitnami/postgresql:latest

mkdir ~/data/pgsql -p
#chown 1001 /data/pgsql

docker run --name pgsql \
-e POSTGRESQL_USERNAME=dbit \
-e POSTGRESQL_PASSWORD=dbit \
-p 5432:5432 \
-v /home/dbit/data/pgsql:/bitnami/postgresql \
bitnami/postgresql:latest