FROM centos:6
ENV chef_version=12.3
MAINTAINER https://github.com/jdmulloy/docker_centos6-chef 
RUN yum update -y && \
    yum install -y sudo openssh-server openssh-clients which curl && \
    yum clean all && \
    yum makecache
RUN curl -Lo /tmp/chef_install.sh https://www.opscode.com/chef/install.sh && \
    /bin/bash /tmp/chef_install.sh -v ${chef_version}
