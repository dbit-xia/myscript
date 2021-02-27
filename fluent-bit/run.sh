#!bash
docker run -ti \
-v /home/dbit/Code/docker/fluent-bit:/app/conf \
-v /home/dbit/Code/temp/logs:/app/logs \
fluent/fluent-bit:1.6 /fluent-bit/bin/fluent-bit -c /app/conf/config.conf