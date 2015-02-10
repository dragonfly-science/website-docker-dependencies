FROM haskell

COPY cabal.config /build/
RUN cd build && \
    cabal update && \
    cabal install --global hakyll==4.6.4.0 xml-hamlet html-conduit && \
    rm -r /root/.cabal/packages /root/.cabal/logs /root/.cabal/setup-exe-cache
