#!/bin/bash 
docker run --rm -p 8001:8001 --name ec_service-mysql \
-e "NODE_PORT=8001" \
-e "APP_AUTH_LOGIN=true" \
-e "APP_DATA_DIR=/tmp" \
-e "logpass=sybrunsa" \
-e "APP_INTERFACE=false" \
-e "APP_LOG_EMAIL=false" \
-e "APP_LOG_CONSOLE=ALL" \
-e "APP_AUTH_RISK=false" \
-e "APP_SECRET_EXECUTE=APP_SECRET_EXECUTE" \
-e "APP_TEMP_DIR=/tmp" \
-e "APP_REMOTE_DIR=/tmp" \
-e "APP_LOG_DIR=/tmp" \
-e "REDIS_HOST=172.17.0.1" \
-e "REDIS_PORT=6379" \
-e "REDIS_DB=0" \
ec_service-mysql:0.0.4