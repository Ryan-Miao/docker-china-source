FROM centos:7

COPY Centos-7.repo /etc/yum.repos.d/CentOS-Base.repo
COPY epel-7.repo  /etc/yum.repos.d/
RUN yum clean all && yum makecache &&  yum install -y  vim telnet htop  net-tools curl wget 
