FROM ubuntu:latest

ARG VERSION=0.12.10

EXPOSE 3000

RUN apt update && \
    apt install -y wget git && \
    wget https://dl.gogs.io/"$VERSION"/gogs_"$VERSION"_linux_amd64.tar.gz && \
    tar -xf gogs_"$VERSION"_linux_amd64.tar.gz && \
    rm gogs_"$VERSION"_linux_amd64.tar.gz

ENTRYPOINT ["/bin/bash", "-c", "./gogs/gogs web"]
