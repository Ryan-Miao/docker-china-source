FROM python:3.7-stretch
COPY sources.list /etc/apt/sources.list

RUN apt-get update && apt-get install -y gcc vim net-tools telnet curl wget

RUN mkdir /root/.pip
COPY pip.conf /root/.pip/
