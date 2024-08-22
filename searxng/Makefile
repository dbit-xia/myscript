
up:
	docker compose -f docker-compose.yaml up

start:
	docker run --rm \
	-e https_proxy=http://127.0.0.1:7890 -e http_proxy=http://127.0.0.1:7890 -e all_proxy=socks5://127.0.0.1:7890 \
	--net host \
	--name searxng -p 8080:8080 -v /home/dbit/Code/myscript/searxng/searxng:/etc/searxng searxng/searxng:latest


pull:
	ctr images pull docker.io/library/debian:bullseye-20240513

run:
	ctr run --tty --net-host docker.io/library/debian:bullseye-20240513 debian-tmp

task-start:
	ctr task start debian-tmp /bin/bash

task-exec:
	ctr task exec --exec-id=1 -t debian-tmp /bin/bash

sc:
	sed -i "s@http://\(deb\|security\).debian.org@http://mirrors.tencent.com@g" /etc/apt/sources.list; \
    apt update; apt upgrade;\
    apt install curl netcat procps git wget netcat sudo systemd tmux iproute2 -y;\
    export https_proxy=http://127.0.0.1:7890 http_proxy=http://127.0.0.1:7890 all_proxy=socks5://127.0.0.1:7890;\





