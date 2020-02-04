.DEFAULT_GOAL := help
help:
	@printf "\033[33mUsage:\033[0m\n  make [target] [arg=\"val\"...]\n\n\033[33mTargets:\033[0m\n"
	@grep -E '^[-a-zA-Z0-9_\.\/]+:.*?## .*$$' $(MAKEFILE_LIST) \
		| sort | awk 'BEGIN {FS = ":.*?## "}; {printf "  \033[32m%-15s\033[0m %s\n", $$1, $$2}'

build: ## Builds Docker images (toroia/zephir:*) from Dockerfiles
	docker build -t toroia/zephir-raw:0.12 ${CURDIR}/raw/0.12/
	docker build -t toroia/zephir-phalcon:0.12 ${CURDIR}/phalcon/0.12/
	docker tag toroia/zephir-raw:0.12 toroia/zephir-raw:latest
	docker tag toroia/zephir-phalcon:0.12 toroia/zephir-phalcon:latest

purge: ## Deletes all Docker images (toroia/zephir:*) from system
	docker rmi toroia/zephir-raw:0.12
	docker rmi toroia/zephir-phalcon:0.12
	docker rmi toroia/zephir-raw:latest
	docker rmi toroia/zephir-phalcon:latest
