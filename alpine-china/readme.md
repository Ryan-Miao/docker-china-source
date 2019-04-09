docker-alpine-china
==================

- change the repositories to aliyun

## How to run

Lua env for example:

Dockerfile
```
FROM alpine

COPY repositories /etc/apk/repositories
RUN apk update && apk add vim curl net-tools lua
```

build

```
sudo docker build -t ryan-lua .
sudo docker run -it ryan-lua /bin/sh
```
