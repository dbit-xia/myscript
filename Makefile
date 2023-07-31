
###--volume /path/to/override.xml:/bitnami/clickhouse/etc/conf.d/override.xml:ro \

start:
	docker run --rm --name clickhouse \
	-p 8123:8123 -p 9000:9000 -p 9009:9009 -p 9004:9004 -p 9005:9005 \
    -e CLICKHOUSE_DB=uptrace \
	-e ALLOW_EMPTY_PASSWORD=yes bitnami/clickhouse

stop:
	docker stop clickhouse

postgres:
	docker run --rm --name pgsql \
	-e PGDATA=/var/lib/postgresql/data/pgdata \
    -e POSTGRES_USER=uptrace \
    -e POSTGRES_PASSWORD=uptrace \
    -e POSTGRES_DB=uptrace \
    -v pg_data5:/var/lib/postgresql/data/pgdata \
    -p 5432:5432 \
    postgres:14.5