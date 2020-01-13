.DEFAULT_GOAL := help
help:
	@printf "\033[33mUsage:\033[0m\n  make [target] [arg=\"val\"...]\n\n\033[33mTargets:\033[0m\n"
	@grep -E '^[-a-zA-Z0-9_\.\/]+:.*?## .*$$' $(MAKEFILE_LIST) \
		| sort | awk 'BEGIN {FS = ":.*?## "}; {printf "  \033[32m%-15s\033[0m %s\n", $$1, $$2}'

build: ## Builds Docker images (toroia/zephir:*) from Dockerfiles
	docker build -t toroia/zephir:7.3 ${CURDIR}/7.3/
	docker tag toroia/zephir:7.3 toroia/zephir:latest

purge: ## Deletes all Docker images (toroia/zephir:*) from system
	docker rmi toroia/zephir:7.3
	docker rmi toroia/zephir:latest
