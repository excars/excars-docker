#!/usr/bin/env bash
docker images
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
docker push excars/excars-base
