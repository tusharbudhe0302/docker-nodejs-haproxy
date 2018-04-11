FROM node:latest

# Maintainer

MAINTAINER Tushar Budhe

# Provides cached layer for node_modules
ADD package.json /tmp/package.json
RUN cd /tmp && npm install
RUN mkdir -p /webclient && cp -a /tmp/node_modules /webclient/

# Define working directory
WORKDIR /webclient
ADD . /webclient

# Expose port
EXPOSE  "${NODE_CLIENT_PORT}"
#Run docker

RUN npm install

# Entry point 

ENTRYPOINT ["npm","run","start-ui"]
