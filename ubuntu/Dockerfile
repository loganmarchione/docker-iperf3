FROM ubuntu:bionic

ARG BUILD_DATE

LABEL \
  maintainer="Logan Marchione <logan@loganmarchione.com>" \
  org.opencontainers.image.authors="Logan Marchione <logan@loganmarchione.com>" \
  org.opencontainers.image.title="docker-iperf3" \
  org.opencontainers.image.description="Runs an iPerf3 server in Docker" \
  org.opencontainers.image.created=$BUILD_DATE

RUN apt-get update && apt-get install -y --no-install-recommends \
    iperf3 && \
    rm -rf /var/lib/apt/lists/* && \
    adduser -S iperf3

USER iperf3

EXPOSE 5201

COPY VERSION /

ENTRYPOINT ["iperf3"]

CMD ["-s"]

HEALTHCHECK CMD nc -z localhost 5201 || exit 1 
