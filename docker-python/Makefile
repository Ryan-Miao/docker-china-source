NAME = ryan/python
VERSION = 3

.PHONY: build start

build:
	docker build -t ${NAME}:${VERSION}  .

start:
	docker run -it --rm ${NAME}:${VERSION} /bin/bash

