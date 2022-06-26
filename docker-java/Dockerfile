FROM openjdk:8
COPY ./lib /usr/src/myapp
WORKDIR /usr/src/myapp
COPY entrypoint.sh .

ENV server_port 8080
ENV JVM_OPT -server

RUN  mkdir arthas && cd arthas && wget -O arthas.zip https://arthas.aliyun.com/download/latest_version?mirror=aliyun && unzip arthas.zip

ENTRYPOINT [ "/bin/bash","entrypoint.sh" ]
