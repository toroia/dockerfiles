# Dockerfiles
## Getting started
### Containers list
You will find below, the list of public containers of the Toroia:
- `toroia/alpine:*`
- `toroia/docker:*`
- `toroia/nodejs:*`
- `toroia/php-cli:*`
- `toroia/php-fpm:*`
- `toroia/zephir:*`
- `toroia/phalcon-cli:*`
- `toroia/phalcon-fpm:*`
## Building
Building use Makefiles, you can find the Makefiles help by using the following command:
```bash
make help
```
### How to
You can build all containers with the Makefile:
```bash
make build
```
Or you can build one image type (example: Alpine) with sub Makefile:
```bash
make -C src/alpine build
```
## Purging
You can purge all containers with the Makefile:
```bash
make purge
```
Or you can purge one image type (example: Alpine) with sub Makefile:
```bash
make -C src/alpine purge
```
