FROM haskell:7.10.2


RUN echo "Pacific/Auckland" > /etc/timezone
RUN dpkg-reconfigure -f noninteractive tzdata
RUN apt-get update && \
    apt-get install -y locales \
                       curl \
                       ruby \
                       graphicsmagick-imagemagick-compat && \
    gem install sass -v 3.4.18 && \
    curl -sL https://deb.nodesource.com/setup_0.12 | bash - && \
    apt-get install -y nodejs && \
    npm install -g elm@2.0.0 \
      yuglify@0.1.4 \
      es6-module-transpiler@0.10.0 \
      divshot-cli@1.10.5 && \
    rm -rf /var/lib/apt/lists/* && \
    localedef -i en_NZ -c -f UTF-8 -A /usr/share/locale/locale.alias en_NZ.UTF-8
ENV LANG en_NZ.utf8
ENV LANGUAGE en_NZ:en

COPY cabal.config /build/
RUN cd /build && \
    cabal update && \
    cabal install --global hakyll xml-hamlet html-conduit hxt clay && \
    rm -r /root/.cabal/packages /root/.cabal/logs /root/.cabal/setup-exe-cache
