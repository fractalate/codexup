.PHONY: build clean

CONTAINER_RUNTIME := $(shell ./codexup --container-runtime || echo podman)

build:
	$(CONTAINER_RUNTIME) build --no-cache --tag codexup .

clean:
	$(CONTAINER_RUNTIME) rmi -f codexup
