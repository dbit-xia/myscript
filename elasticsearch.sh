#!/bin/sh

mkdir ~/data/es -p
chown 1001 ~/data/es

docker run --name es \
    -p 9200:9200 \
    -p 9300:9300 \
    -v /home/dbit/data/es:/bitnami/elasticsearch/data \
    bitnami/elasticsearch:latest