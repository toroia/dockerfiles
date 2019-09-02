build:
	docker build -t toroia/alpine:latest core/alpine/3.9/
	docker build -t toroia/alpine:3.9 core/alpine/3.9/
	docker build -t toroia/nodejs:latest core/nodejs/10/
	docker build -t toroia/nodejs:10 core/nodejs/10/
	docker build -t toroia/php:latest core/php/7.3/
	docker build -t toroia/php:7.3 core/php/7.3/
