build:
	docker build -t lloydpick/docker-swarm-launch-privileged .

buildx:
	docker buildx build --platform linux/amd64,linux/arm64,linux/arm/v7,linux/arm/v6 -t lloydpick/docker-swarm-launch-privileged .

deploy:
	docker buildx build --platform linux/amd64,linux/arm64,linux/arm/v7,linux/arm/v6 -t lloydpick/docker-swarm-launch-privileged --push .

.PHONY: buildx
