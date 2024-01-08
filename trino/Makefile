copy:
	docker run --name trino --rm -p 8080:8080 --volume `pwd`/etc:/tmp trinodb/trino cp /etc/trino -R /tmp
start:
	cp /home/dbit/下载/trino-422/plugin/trino-sybase/jconn42.jar /home/dbit/下载/trino-422/plugin/trino-sybase/target/trino-sybase-422
	cp /home/dbit/下载/trino-422/plugin/trino-sybase/jconn4.jar /home/dbit/下载/trino-422/plugin/trino-sybase/target/trino-sybase-422

	docker run --name trino --rm -p 8080:8080 \
	--volume `pwd`/etc/trino:/etc/trino  \
	-v /home/dbit/下载/trino-422/plugin/trino-sybase/target/trino-sybase-422:/usr/lib/trino/plugin/sybase \
	trinodb/trino
