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
docker build -t toroia/alpine:latest core/alpine/3.9/
docker build -t toroia/alpine:3.9 core/alpine/3.9/
```
### Toroia - NodeJS
```bash
docker build -t toroia/nodejs:latest core/nodejs/10/
docker build -t toroia/nodejs:10 core/nodejs/10/
```
### Toroia - PHP
```bash
docker build -t toroia/php:latest core/php/7.3/
docker build -t toroia/php:7.3 core/php/7.3/
```
