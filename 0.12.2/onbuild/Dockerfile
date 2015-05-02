FROM centralping/node:0.12.2

MAINTAINER  Jason Cust <jason@centralping.com>

USER root
RUN mkdir -p /var/app && \
    chown -R node.node /var/app

USER node
WORKDIR /var/app

ONBUILD COPY package.json /var/app/
ONBUILD RUN npm i
ONBUILD COPY . /var/app

CMD ["npm", "start"]
