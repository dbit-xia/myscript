download:
	curl -sSL https://raw.githubusercontent.com/bitnami/containers/main/bitnami/kafka/docker-compose.yml > docker-compose.yml

start:
	docker compose up

down:
	docker compose down

ui:
	docker run --rm --name=kafka-ui -p 8080:8080 \
		-e KAFKA_CLUSTERS_0_NAME=kafka1 \
		-e KAFKA_CLUSTERS_0_BOOTSTRAPSERVERS=10.4.0.1:9094 \
		provectuslabs/kafka-ui:latest

ui2:
	docker run --rm -p 8080:8080 --name kafka-ui -e DYNAMIC_CONFIG_ENABLED=true