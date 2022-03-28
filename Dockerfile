FROM centos:7
RUN yum update -y && \
    yum -y install telnet unzip wget && \
    #Install Terraform 
     wget https://releases.hashicorp.com/terraform/0.14.11/terraform_0.14.11_linux_amd64.zip && \
     unzip terraform_0.14.11_linux_amd64.zip && \
     mv terraform /usr/bin && \
     terraform version
