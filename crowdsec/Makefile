
start:
	docker run --rm \
  --name crowdsec \
  --volume /etc/crowdsec:/etc/crowdsec \
  --volume /var/lib/crowdsec/data/:/var/lib/crowdsec/data/ \
  --volume /var/log:/var/log:ro \
  --env COLLECTIONS="crowdsecurity/linux" \
  -p 127.0.0.1:8080:8080 \
  swr.cn-north-4.myhuaweicloud.com/ddn-k8s/docker.io/crowdsecurity/crowdsec:latest

exec:
	docker exec -it crowdsec /bin/bash
