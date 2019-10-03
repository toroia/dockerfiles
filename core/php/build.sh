#!/bin/sh

BUILD_PATH="`dirname \"$0\"`"

# Build
docker build -t toroia/php-cli:7.3 ${BUILD_PATH}/cli/7.3/
docker build -t toroia/php-fpm:7.3 ${BUILD_PATH}/fpm/7.3/

# Tag
docker tag toroia/php-cli:7.3 toroia/php-cli:latest
docker tag toroia/php-fpm:7.3 toroia/php-fpm:latest
