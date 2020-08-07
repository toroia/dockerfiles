.DEFAULT_GOAL := help
help:
	@printf "\033[33mUsage:\033[0m\n  make [target] [arg=\"val\"...]\n\n\033[33mTargets:\033[0m\n"
	@grep -E '^[-a-zA-Z0-9_\.\/]+:.*?## .*$$' $(MAKEFILE_LIST) \
		| sort | awk 'BEGIN {FS = ":.*?## "}; {printf "  \033[32m%-15s\033[0m %s\n", $$1, $$2}'

build: ## Builds Docker images (toroia/nodejs:*) from Dockerfiles
	docker build -t toroia/nodejs:10 ${CURDIR}/10/
	docker build -t toroia/nodejs:12 ${CURDIR}/12/
	docker build -t toroia/nodejs:14 ${CURDIR}/14/
	docker tag toroia/nodejs:14 toroia/nodejs:latest

check: ## Check Docker image version (toroia/nodejs:*)
	docker run -it --rm toroia/nodejs:10 node -v | grep "v10.*"
	docker run -it --rm toroia/nodejs:12 node -v | grep "v12.*"
	docker run -it --rm toroia/nodejs:14 node -v | grep "v14.*"

purge: ## Deletes all Docker images (toroia/nodejs:*) from system
	docker rmi toroia/nodejs:10
	docker rmi toroia/nodejs:12
	docker rmi toroia/nodejs:14
	docker rmi toroia/nodejs:latest
