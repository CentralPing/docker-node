FROM centralping/node:0.12.2

MAINTAINER  Jason Cust <jason@centralping.com>

RUN mkdir -p /var/app
WORKDIR /var/app

ONBUILD COPY package.json /var/app/
ONBUILD RUN npm i
ONBUILD COPY . /var/app

CMD ["npm", "start"]
