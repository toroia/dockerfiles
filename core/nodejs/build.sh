#!/bin/sh

BUILD_PATH="`dirname \"$0\"`"

# Build
docker build -t toroia/nodejs:10 ${BUILD_PATH}/10/
docker build -t toroia/nodejs:12 ${BUILD_PATH}/12/

# Tag
docker tag toroia/nodejs:12 toroia/nodejs:latest
