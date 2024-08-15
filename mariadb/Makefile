pull:
	ctr images pull docker.io/library/mariadb:11.2.4-jammy

start:
	docker run --rm --net=host --name mariadb \
 	-e MARIADB_ROOT_PASSWORD=123456 \
 	docker.io/library/mariadb:11.2.4-jammy
