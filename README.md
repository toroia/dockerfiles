# Dockerfiles
## Getting started
### Containers list
You will find below, the list of public containers of the Toroia association:
- `toroia/alpine`
- `toroia/nodejs`
- `toroia/php`
## Building
You can build all containers with the Makefile:
```bash
make build
```
### Toroia - Alpine
```bash
docker build -t toroia/alpine:3.9 core/alpine/3.9/
docker build -t toroia/alpine:3.10 core/alpine/3.10/
docker build -t toroia/alpine:edge core/alpine/edge/
docker tag toroia/alpine:3.10 toroia/alpine:latest
```
### Toroia - NodeJS
```bash
docker build -t toroia/nodejs:10 core/nodejs/10/
docker build -t toroia/nodejs:12 core/nodejs/12/
docker tag toroia/nodejs:12 toroia/nodejs:latest
```
### Toroia - PHP
```bash
docker build -t toroia/php-cli:7.3 core/php/cli/7.3/
docker build -t toroia/php-fpm:7.3 core/php/fpm/7.3/
docker tag toroia/php-cli:7.3 toroia/php-cli:latest
docker tag toroia/php-fpm:7.3 toroia/php-fpm:latest
```
