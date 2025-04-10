#!/bin/bash
docker buildx build \
  --platform linux/amd64 \
  -t psnehi/docker-test:v1 \
  --push \
  .