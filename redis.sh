#!/bin/sh

#docker run --rm -e POSTGRESQL_PASSWORD=dbit -p 5432:5432 bitnami/postgresql:latest

mkdir ~/data/redis -p
#chown 1001 ~/data/redis

docker run --name redis \
    -p 6379:6379 \
    -e ALLOW_EMPTY_PASSWORD=yes \
    -v /home/dbit/data/redis:/bitnami/redis/data \
    bitnami/redis:latest