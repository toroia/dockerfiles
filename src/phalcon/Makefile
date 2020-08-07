.DEFAULT_GOAL := help
help:
	@printf "\033[33mUsage:\033[0m\n  make [target] [arg=\"val\"...]\n\n\033[33mTargets:\033[0m\n"
	@grep -E '^[-a-zA-Z0-9_\.\/]+:.*?## .*$$' $(MAKEFILE_LIST) \
		| sort | awk 'BEGIN {FS = ":.*?## "}; {printf "  \033[32m%-15s\033[0m %s\n", $$1, $$2}'

build: ## Builds Docker images (toroia/phalcon-*) from Dockerfiles
	docker build -t toroia/phalcon-cli:4.0-7.2 ${CURDIR}/cli/4.0-7.2/
	docker build -t toroia/phalcon-fpm:4.0-7.2 ${CURDIR}/fpm/4.0-7.2/

	docker build -t toroia/phalcon-cli:4.0-7.3 ${CURDIR}/cli/4.0-7.3/
	docker build -t toroia/phalcon-fpm:4.0-7.3 ${CURDIR}/fpm/4.0-7.3/

	docker build -t toroia/phalcon-cli:4.0-7.4 ${CURDIR}/cli/4.0-7.4/
	docker build -t toroia/phalcon-fpm:4.0-7.4 ${CURDIR}/fpm/4.0-7.4/

	docker tag toroia/phalcon-cli:4.0-7.4 toroia/phalcon-cli:4.0
	docker tag toroia/phalcon-fpm:4.0-7.4 toroia/phalcon-fpm:4.0

	docker tag toroia/phalcon-cli:4.0-7.4 toroia/phalcon-cli:latest
	docker tag toroia/phalcon-fpm:4.0-7.4 toroia/phalcon-fpm:latest

check: ## Check Docker image version (toroia/phalcon-*)
	docker run -it --rm toroia/phalcon-cli:4.0-7.2 php -v | grep "PHP 7.2.*"
	docker run -it --rm toroia/phalcon-cli:4.0-7.2 php -r "echo phpversion('phalcon') . PHP_EOL;" | grep "4.0.6"
	docker run -it --rm toroia/phalcon-cli:4.0-7.2 php -r "echo phpversion('psr') . PHP_EOL;" | grep "1.0.0"

	docker run -it --rm toroia/phalcon-cli:4.0-7.3 php -v | grep "PHP 7.3.*"
	docker run -it --rm toroia/phalcon-cli:4.0-7.3 php -r "echo phpversion('phalcon') . PHP_EOL;" | grep "4.0.*"
	docker run -it --rm toroia/phalcon-cli:4.0-7.3 php -r "echo phpversion('psr') . PHP_EOL;" | grep "1.*"

	docker run -it --rm toroia/phalcon-cli:4.0-7.4 php -v | grep "PHP 7.4.*"
	docker run -it --rm toroia/phalcon-cli:4.0-7.4 php -r "echo phpversion('phalcon') . PHP_EOL;" | grep "4.0.*"
	docker run -it --rm toroia/phalcon-cli:4.0-7.4 php -r "echo phpversion('psr') . PHP_EOL;" | grep "4.0.*"

purge: ## Deletes all Docker images (toroia/phalcon-*) from system
	docker rmi toroia/phalcon-cli:4.0-7.2
	docker rmi toroia/phalcon-fpm:4.0-7.2

	docker rmi toroia/phalcon-cli:4.0-7.3
	docker rmi toroia/phalcon-fpm:4.0-7.3

	docker rmi toroia/phalcon-cli:4.0-7.4
	docker rmi toroia/phalcon-fpm:4.0-7.4

	docker rmi toroia/phalcon-cli:4.0
	docker rmi toroia/phalcon-fpm:4.0

	docker rmi toroia/phalcon-cli:latest
	docker rmi toroia/phalcon-fpm:latest
