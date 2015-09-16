FROM haskell:7.10.2

COPY cabal.config /build/
RUN cd build && \
    cabal update && \
    cabal install --global hakyll xml-hamlet html-conduit hxt && \
    rm -r /root/.cabal/packages /root/.cabal/logs /root/.cabal/setup-exe-cache

RUN echo "Pacific/Auckland" > /etc/timezone
RUN dpkg-reconfigure -f noninteractive tzdata
RUN apt-get update && \
    apt-get install -y locales \
                       graphicsmagick-imagemagick-compat && \
    rm -rf /var/lib/apt/lists/* && \
    localedef -i en_NZ -c -f UTF-8 -A /usr/share/locale/locale.alias en_NZ.UTF-8
ENV LANG en_NZ.utf8
ENV LANGUAGE en_NZ:en

