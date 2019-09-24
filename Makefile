docker:
	docker build -t toroia/alpine:3.9 core/alpine/3.9/
	docker build -t toroia/nodejs:10 core/nodejs/10/
	docker build -t toroia/php:7.3 core/php/7.3/
	docker tag toroia/alpine:3.9 toroia/alpine:latest
	docker tag toroia/nodejs:10 toroia/nodejs:latest
	docker tag toroia/php:7.3 toroia/php:latest
