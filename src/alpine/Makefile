.DEFAULT_GOAL := help
help:
	@printf "\033[33mUsage:\033[0m\n  make [target] [arg=\"val\"...]\n\n\033[33mTargets:\033[0m\n"
	@grep -E '^[-a-zA-Z0-9_\.\/]+:.*?## .*$$' $(MAKEFILE_LIST) \
		| sort | awk 'BEGIN {FS = ":.*?## "}; {printf "  \033[32m%-15s\033[0m %s\n", $$1, $$2}'

build: ## Builds Docker images (toroia/alpine:*) from Dockerfiles
	docker build -t toroia/alpine:3.9 ${CURDIR}/3.9/
	docker build -t toroia/alpine:3.10 ${CURDIR}/3.10/
	docker build -t toroia/alpine:3.12 ${CURDIR}/3.12/
	docker build -t toroia/alpine:edge ${CURDIR}/edge/
	docker tag toroia/alpine:edge toroia/alpine:latest

check: ## Check Docker image version (toroia/alpine:*)
	docker run -it --rm toroia/alpine:3.9 cat /etc/alpine-release | grep "3.9.*"
	docker run -it --rm toroia/alpine:3.10 cat /etc/alpine-release | grep "3.10.*"
	docker run -it --rm toroia/alpine:3.12 cat /etc/alpine-release | grep "3.12.*"
	docker run -it --rm toroia/alpine:edge cat /etc/alpine-release | grep "_alpha"

purge: ## Deletes all Docker images (toroia/alpine:*) from system
	docker rmi toroia/alpine:3.9
	docker rmi toroia/alpine:3.10
	docker rmi toroia/alpine:3.12
	docker rmi toroia/alpine:edge
	docker rmi toroia/alpine:latest
