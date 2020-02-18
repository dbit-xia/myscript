#!/bin/bash
docker run -dit  -p 3100:3100 --name loki grafana/loki:v1.3.0 
docker run -dit --name promtail -p 9080:9080 -v /etc/promtail:/etc/promtail grafana/promtail:v1.3.0 -config.file /etc/promtail/promtail.yaml
