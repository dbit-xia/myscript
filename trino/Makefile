copy:
	docker run --name trino --rm -p 8080:8080 --volume `pwd`/etc:/tmp trinodb/trino cp /etc/trino -R /tmp
start:
	docker run --name trino --rm -p 8080:8080 --volume `pwd`/etc/trino:/etc/trino trinodb/trino