FROM ruby
MAINTAINER chris@dragonfly.co.nz

RUN apt-get update && \
    apt-get install -y entr && \
    apt-get clean  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
    
RUN gem install sass

RUN mkdir /work && chmod -R 777 /work
WORKDIR /work


