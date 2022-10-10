FROM alpine:latest

MAINTAINER yoavaba1@gmail.com

ENV SECRET ""
ENV HOME_DIR ""
ENV ADDRESS ""

RUN apk add python3 && \
    apk add py3-pip && \
    pip3 install webssh 

ENTRYPOINT [ "/bin/sh", "-c", "wssh" ]

#docker run -it --name webssh -p 8888:8888 yoas1/webssh:1.6.0
