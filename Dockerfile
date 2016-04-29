FROM fpco/stack-build:lts-5.14


RUN echo "Pacific/Auckland" > /etc/timezone
RUN dpkg-reconfigure -f noninteractive tzdata
RUN curl -sL https://deb.nodesource.com/setup_4.x | bash - && \
    apt-get install -y locales \
                       curl \
                       ruby \
                       git \
                       graphicsmagick-imagemagick-compat \
                       nodejs && \
    gem install sass -v 3.4.18 && \
    npm install -g \
      yuglify@0.1.4 \
      es6-module-transpiler@0.10.0 && \
    rm -rf /var/lib/apt/lists/* && \
    localedef -i en_NZ -c -f UTF-8 -A /usr/share/locale/locale.alias en_NZ.UTF-8
ENV LANG en_NZ.utf8
ENV LANGUAGE en_NZ:en

RUN stack install hakyll xml-hamlet html-conduit hxt

