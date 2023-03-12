FROM alpine:latest

RUN apk update && \
    apk add --update python3 py3-pip && \
    pip install pypiserver && \
    mkdir packages
    
CMD [ "/bin/sh", "-c", "pypi-server run -p 8080 /packages" ]
    
