.DEFAULT_GOAL := help
help:
	@printf "\033[33mUsage:\033[0m\n  make [target] [arg=\"val\"...]\n\n\033[33mTargets:\033[0m\n"
	@grep -E '^[-a-zA-Z0-9_\.\/]+:.*?## .*$$' $(MAKEFILE_LIST) \
		| sort | awk 'BEGIN {FS = ":.*?## "}; {printf "  \033[32m%-15s\033[0m %s\n", $$1, $$2}'

build: ## Builds Docker images (toroia/php-*) from Dockerfiles
	docker build -t toroia/php-cli:7.3 ${CURDIR}/cli/7.3/
	docker build -t toroia/php-fpm:7.3 ${CURDIR}/fpm/7.3/
	docker tag toroia/php-cli:7.3 toroia/php-cli:latest
	docker tag toroia/php-fpm:7.3 toroia/php-fpm:latest

purge: ## Deletes all Docker images (toroia/php-*) from system
	docker rmi toroia/php-cli:7.3
	docker rmi toroia/php-fpm:7.3
	docker rmi toroia/php-cli:latest
	docker rmi toroia/php-fpm:latest
