#!/bin/bash
SERVICE_URL=http://dbit-mint:8080/
docker run -p 80:80 --rm -e SERVICE_URL=$SERVICE_URL   apachepulsar/pulsar-dashboard:2.4.1
