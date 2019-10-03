#!/bin/sh

BUILD_PATH="`dirname \"$0\"`"

# Build
docker build -t toroia/alpine:3.9 ${BUILD_PATH}/3.9/
docker build -t toroia/alpine:3.10 ${BUILD_PATH}/3.10/
docker build -t toroia/alpine:edge ${BUILD_PATH}/edge/

# Tag
docker tag toroia/alpine:3.10 toroia/alpine:latest
