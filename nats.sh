#!/bin/bash
docker run -dit -p 4222:4222 -p 6222:6222 -p 8222:8222 --name nats nats
