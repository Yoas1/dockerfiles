FROM ubuntu:18.04

EXPOSE 3000

RUN apt-get update && \
    apt-get install -y wget git && \
    wget --no-check-certificate https://dl.gogs.io/0.12.10/gogs_0.12.10_linux_amd64.tar.gz && \
    tar -xf gogs_0.12.10_linux_amd64.tar.gz && \
    rm gogs_0.12.10_linux_amd64.tar.gz

ENTRYPOINT ["/bin/bash", "-c", "./gogs/gogs web"]
