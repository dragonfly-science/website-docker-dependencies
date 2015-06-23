FROM haskell:7.10.2

COPY cabal.config /build/
RUN cd build && \
    cabal update && \
    cabal install --global hakyll xml-hamlet html-conduit && \
    rm -r /root/.cabal/packages /root/.cabal/logs /root/.cabal/setup-exe-cache

