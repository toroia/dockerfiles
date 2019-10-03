#!/bin/sh

BUILD_PATH="`dirname \"$0\"`"

# Build
docker build -t toroia/phalcon-cli:7.3-4.0 ${BUILD_PATH}/cli/7.3-4.0/
docker build -t toroia/phalcon-fpm:7.3-4.0 ${BUILD_PATH}/fpm/7.3-4.0/

# Tag
docker tag toroia/phalcon-cli:7.3-4.0 toroia/phalcon-cli:latest
docker tag toroia/phalcon-fpm:7.3-4.0 toroia/phalcon-fpm:latest
