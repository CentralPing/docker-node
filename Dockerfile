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

# Install latest NVM and link bin
RUN git clone https://github.com/creationix/nvm.git /opt/nvm-repo && \
    cd /opt/nvm-repo && \
    git checkout `git describe --abbrev=0 --tags` && \
    mkdir /opt/nvm && \
    chmod a+rx /opt/nvm && \
    export NVM_DIR=/opt/nvm && \
    source /opt/nvm-repo/nvm.sh && \
    nvm install 0.12.2 && \
    npm update -g npm && \
    npm i -g nodemon && \
    ln -s /opt/nvm/versions/node/v0.12.2/bin/* /usr/local/bin/

# Add non-root user and set as home
RUN useradd -r -m node
USER node
WORKDIR /home/node
