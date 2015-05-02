FROM centos:7

MAINTAINER	Jason Cust <jason@centralping.com>

# Install build/make tools as well as nvm dependencies
RUN yum -y update && \
    yum -y install \
      gcc \
      gcc-c++ \
      make \
      tar \
      git && \
    yum clean all

# Add non-root user
RUN useradd -r node
