.DEFAULT_GOAL := help
help:
	@printf "\033[33mUsage:\033[0m\n  make [target] [arg=\"val\"...]\n\n\033[33mTargets:\033[0m\n"
	@grep -E '^[-a-zA-Z0-9_\.\/]+:.*?## .*$$' $(MAKEFILE_LIST) \
		| sort | awk 'BEGIN {FS = ":.*?## "}; {printf "  \033[32m%-15s\033[0m %s\n", $$1, $$2}'

build: ## Builds Docker images (toroia/*) from Dockerfiles
	@make -C src/alpine build
	@make -C src/docker build
	@make -C src/nodejs build
	@make -C src/php build
	@make -C src/zephir build
	@make -C src/phalcon build

check: ## Check Docker builds (toroia/*)
	@make -C src/alpine check
	@make -C src/nodejs check
	@make -C src/php check

purge: ## Deletes all Docker images (toroia/*) from system
	@make -C src/alpine purge
	@make -C src/docker purge
	@make -C src/nodejs purge
	@make -C src/php purge
	@make -C src/zephir purge
	@make -C src/phalcon purge
