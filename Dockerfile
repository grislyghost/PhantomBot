FROM ghcr.io/phantombot/phantombot:latest

USER root
COPY docker/wrapper.sh /usr/local/bin/phantombot-wrapper
RUN chmod +x /usr/local/bin/phantombot-wrapper

ENTRYPOINT ["/usr/local/bin/phantombot-wrapper"]

EXPOSE 25000 25003 25004
VOLUME ["/opt/PhantomBot_data"]

USER phantombot
