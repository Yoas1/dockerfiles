FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

COPY run.sh /run.sh

RUN apt update && \
    apt install openssh-server openjdk-11-jdk git -y 

ENTRYPOINT [ "/run.sh" ]
