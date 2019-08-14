FROM centos:6

COPY Centos-6.repo /etc/yum.repos.d/CentOS-Base.repo
COPY epel-6.repo /etc/yum.repos.d/
RUN yum clean all && yum makecache &&  yum install -y  vim telnet htop  net-tools curl wget 
