#!/bin/sh -eux

cd "$(dirname "$0")"/../

docker build --network=host -t keep2todoist:latest ./app
docker run --network=host -v /dev:/dev -d --restart always -v "$(pwd)"/app/config.yaml:/app/config.yaml keep2todoist:latest
