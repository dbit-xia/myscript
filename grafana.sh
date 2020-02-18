#!/bin/bash
docker run -dit -p 3200:3000 --name grafana -v /etc/grafana:/etc/grafana grafana/grafana
