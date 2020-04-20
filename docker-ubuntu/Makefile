NAME = ryan
VERSION = 18.04
HUB_NAME = ryanmiaodocker

.PHONY: build start

build:
	docker build -t ${NAME}/ubuntu:${VERSION}  .

start:
	docker run -it --rm ${NAME}/ubuntu:${VERSION} /bin/bash