FROM ubuntu:20.04

WORKDIR /App

COPY requirements.txt requirements.txt
COPY run.sh /tmp/run.sh

ENV TZ=Asia/Jerusalem
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -y && \
    apt-get install -y python3 python3-pip sqlite3 git && \
    pip3 install -r requirements.txt && \
    apt-get install -yq tzdata && \
    ln -fs /usr/share/zoneinfo/Asia/Jerusalem /etc/localtime && \
    dpkg-reconfigure -f noninteractive tzdata && \
    rm -rf /var/lib/apt/lists/* && \
    chmod +x /tmp/run.sh

ENV FLASK_APP=/App/app.py
ENV FLASK_DEBUG=1


ENTRYPOINT ["/tmp/run.sh"]