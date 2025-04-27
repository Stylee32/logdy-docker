FROM alpine:3.21

ENV LOGDY_VERSION=0.16.0

ADD "https://github.com/logdyhq/logdy-core/releases/download/v${LOGDY_VERSION}/logdy_linux_amd64" /usr/local/bin/logdy
COPY docker_entrypoint /docker_entrypoint

RUN chmod +x /usr/local/bin/logdy && \
    mkdir -p /data && \
    chmod +x /docker_entrypoint

ENTRYPOINT ["/bin/sh", "-c"]

CMD ["/docker_entrypoint"]


