.DEFAULT_GOAL := help
help:
	@printf "\033[33mUsage:\033[0m\n  make [target] [arg=\"val\"...]\n\n\033[33mTargets:\033[0m\n"
	@grep -E '^[-a-zA-Z0-9_\.\/]+:.*?## .*$$' $(MAKEFILE_LIST) \
		| sort | awk 'BEGIN {FS = ":.*?## "}; {printf "  \033[32m%-15s\033[0m %s\n", $$1, $$2}'

build: ## Builds Docker images (toroia/alpine:*) from Dockerfiles
	docker build -t toroia/alpine:3.9 ${CURDIR}/3.9/
	docker build -t toroia/alpine:3.10 ${CURDIR}/3.10/
	docker build -t toroia/alpine:edge ${CURDIR}/edge/
	docker tag toroia/alpine:edge toroia/alpine:latest

purge: ## Deletes all Docker images (toroia/alpine:*) from system
	docker rmi toroia/alpine:3.9
	docker rmi toroia/alpine:3.10
	docker rmi toroia/alpine:edge
	docker rmi toroia/alpine:latest
