FROM node:latest

# Maintainer

MAINTAINER Tushar Budhe

# Provides cached layer for node_modules
ADD package.json /tmp/package.json
RUN cd /tmp && npm install
RUN mkdir -p /webserver && cp -a /tmp/node_modules /webserver/

# Define working directory
WORKDIR /webserver
ADD . /webserver

# Expose port
EXPOSE  "${NODE_SERVER_PORT}"
#Run docker

RUN npm install

# Entry point 

ENTRYPOINT ["npm","run","start-api"]
