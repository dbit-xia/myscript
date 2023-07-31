start:
	docker run --rm \
	--name=fe \
	--env FE_SERVERS="fe1:178.90.0.1:9010" \
	--env FE_ID=1 \
	-p 8030:8030 \
	-p 9030:9030 \
	-v /data/fe/doris-meta:/opt/apache-doris/fe/doris-meta \
	-v /data/fe/log:/opt/apache-doris/fe/log \
	--net=host \
	apache/doris:2.0.0_alpha-fe-x86_64

delete:
	docker rm -f fe