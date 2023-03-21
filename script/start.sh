#!/bin/sh -eux

cd "$(dirname "$0")"/../

docker build -t keep2todoist:latest ./app
docker run -d --restart always -v "$(pwd)"/app/config.yaml:/app/config.yaml keep2todoist:latest
