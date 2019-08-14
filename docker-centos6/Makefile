NAME = ryan/centos
VERSION = 6

.PHONY: build start

build:
	docker build -t ${NAME}:${VERSION}  .

start:
	docker run -it --rm ${NAME}:${VERSION} /bin/bash
