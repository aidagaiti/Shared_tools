FROM centos:7
RUN yum update -y && \
    yum -y install telnet unzip wget
