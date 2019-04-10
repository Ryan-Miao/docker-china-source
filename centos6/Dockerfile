FROM centos:6
MAINTAINER Ryan Miao
WORKDIR /tmp
COPY Centos-6.repo /etc/yum.repos.d/CentOS-Base.repo
RUN yum clean all && yum makecache
RUN yum install -y  vim git net-tools curl wget 
