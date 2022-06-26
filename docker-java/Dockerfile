FROM openjdk:8
COPY ./lib /usr/src/myapp
WORKDIR /usr/src/myapp
COPY entrypoint.sh .

ENV server_port 8080

ENTRYPOINT [ "/bin/bash","entrypoint.sh" ]
