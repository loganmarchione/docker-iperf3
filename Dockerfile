FROM alpine:3.23

ARG BUILD_DATE

LABEL \
  maintainer="Logan Marchione <logan@loganmarchione.com>" \
  org.opencontainers.image.authors="Logan Marchione <logan@loganmarchione.com>" \
  org.opencontainers.image.title="docker-iperf3" \
  org.opencontainers.image.description="Runs an iPerf3 server in Docker" \
  org.opencontainers.image.created=$BUILD_DATE

RUN apk add --no-cache --update \
    iperf3 && \
    adduser --system iperf3

USER iperf3

EXPOSE 5201

COPY VERSION /

ENTRYPOINT ["iperf3"]

CMD ["-s"]

HEALTHCHECK CMD nc -z localhost 5201 || exit 1 
