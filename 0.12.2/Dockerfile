FROM centralping/centos:7

MAINTAINER  Jason Cust <jason@centralping.com>

ENV NODE_VERSION 0.12.2
ENV NPM_VERSION 2.9.1

RUN curl -SLO "http://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.gz" && \
  curl -SLO "http://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt" && \
  grep "node-v$NODE_VERSION-linux-x64.tar.gz\$" SHASUMS256.txt | sha256sum -c - && \
  tar -xzf "node-v$NODE_VERSION-linux-x64.tar.gz" -C /usr/local --strip-components=1 && \
  rm -f "node-v$NODE_VERSION-linux-x64.tar.gz" SHASUMS256.txt && \
  npm i -g npm@"$NPM_VERSION" && \
  npm cache clear

USER node

CMD ["node"]
