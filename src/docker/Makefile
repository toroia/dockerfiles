.DEFAULT_GOAL := help
help:
	@printf "\033[33mUsage:\033[0m\n  make [target] [arg=\"val\"...]\n\n\033[33mTargets:\033[0m\n"
	@grep -E '^[-a-zA-Z0-9_\.\/]+:.*?## .*$$' $(MAKEFILE_LIST) \
		| sort | awk 'BEGIN {FS = ":.*?## "}; {printf "  \033[32m%-15s\033[0m %s\n", $$1, $$2}'

build: ## Builds Docker images (toroia/docker:*) from Dockerfiles
	docker build -t toroia/docker:stable ${CURDIR}/stable/
	docker build -t toroia/docker:latest ${CURDIR}/latest/
	docker build -t toroia/docker:19.03.1 ${CURDIR}/19.03.1/

purge: ## Deletes all Docker images (toroia/docker:*) from system
	docker rmi toroia/docker:stable
	docker rmi toroia/docker:latest
	docker rmi toroia/docker:/19.03.1
