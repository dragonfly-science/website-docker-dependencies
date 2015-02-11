FROM node
MAINTAINER chris@dragonfly.co.nz

RUN npm install -g yuglify es6-module-transpiler

RUN apt-get update && \
    apt-get install -y entr && \
    apt-get clean  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN mkdir /work && chmod -R 777 /work
WORKDIR /work


