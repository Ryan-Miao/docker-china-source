NAME = ryan
VERSION = 7
HUB_NAME = ryanmiaodoc

.PHONY: build start hub

build:
	docker build -t ${NAME}/centos:${VERSION}  .

start:
	docker run -it --rm ${NAME}/centos:${VERSION} /bin/bash

hub:
	docker tag ${NAME}/centos:${VERSION}  ${HUB_NAME}/centos:${VERSION} ; 
	docker tag ${NAME}/centos:${VERSION}  ${HUB_NAME}/centos:latest;
	docker push ${HUB_NAME}/centos:${VERSION};
	docker push ${HUB_NAME}/centos:latest;	
