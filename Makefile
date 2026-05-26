.PHONY: build clean

build:
	podman build --tag codexup .

clean:
	podman rmi codexup
