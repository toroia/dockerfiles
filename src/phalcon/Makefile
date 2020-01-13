.DEFAULT_GOAL := help
help:
	@printf "\033[33mUsage:\033[0m\n  make [target] [arg=\"val\"...]\n\n\033[33mTargets:\033[0m\n"
	@grep -E '^[-a-zA-Z0-9_\.\/]+:.*?## .*$$' $(MAKEFILE_LIST) \
		| sort | awk 'BEGIN {FS = ":.*?## "}; {printf "  \033[32m%-15s\033[0m %s\n", $$1, $$2}'

build: ## Builds Docker images (toroia/phalcon-*) from Dockerfiles
	docker build -t toroia/phalcon-cli:7.3-4.0 ${CURDIR}/cli/7.3-4.0/
	docker build -t toroia/phalcon-fpm:7.3-4.0 ${CURDIR}/fpm/7.3-4.0/
	docker tag toroia/phalcon-cli:7.3-4.0 toroia/phalcon-cli:4.0
	docker tag toroia/phalcon-fpm:7.3-4.0 toroia/phalcon-fpm:4.0
	docker tag toroia/phalcon-cli:7.3-4.0 toroia/phalcon-cli:latest
	docker tag toroia/phalcon-fpm:7.3-4.0 toroia/phalcon-fpm:latest

purge: ## Deletes all Docker images (toroia/phalcon-*) from system
	docker rmi toroia/phalcon-cli:7.3-4.0
	docker rmi toroia/phalcon-fpm:7.3-4.0
	docker rmi toroia/phalcon-cli:4.0
	docker rmi toroia/phalcon-fpm:4.0
	docker rmi toroia/phalcon-cli:latest
	docker rmi toroia/phalcon-fpm:latest
