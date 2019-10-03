.PHONY : docker-core

docker-core:
	sh ./core/alpine/build.sh
	sh ./core/nodejs/build.sh
	sh ./core/php/build.sh
	sh ./core/phalcon/build.sh

docker-core-alpine:
	sh ./core/alpine/build.sh

docker-core-nodejs:
	sh ./core/nodejs/build.sh

docker-core-php:
	sh ./core/php/build.sh

docker-core-phalcon:
	sh ./core/phalcon/build.sh

