.PHONY: build clean

CONTAINER_RUNTIME := $(shell ./codexup --container-runtime || echo podman)

build:
	$(CONTAINER_RUNTIME) build --tag codexup .

clean:
	$(CONTAINER_RUNTIME) rmi -f codexup
