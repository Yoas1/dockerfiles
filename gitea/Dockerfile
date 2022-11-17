FROM ubuntu:latest

ARG VERSION=1.17.3

EXPOSE 3000

RUN apt update && \
    apt install -y wget git && \
    wget -O gitea https://dl.gitea.io/gitea/$VERSION/gitea-$VERSION-linux-arm64 && \
    echo hello && \
    chmod +x gitea && \
    adduser --system --shell /bin/bash --gecos 'Git Version Control' --group --disabled-password --home /home/git git && \
    mkdir -p /var/lib/gitea/{custom,data,log} && \
    chown -R git:git /var/lib/gitea/ && \
    chmod -R 750 /var/lib/gitea/ && \
    chmod -R 770 /usr/local/bin/ && \
    mkdir /etc/gitea && \
    chown root:git /etc/gitea && \
    chown root:git /usr/local/bin && \
    chmod 770 /etc/gitea && \
    export GITEA_WORK_DIR=/var/lib/gitea/ && \
    mv gitea /usr/bin/gitea

ENTRYPOINT ["/bin/bash", "-c", "runuser -u git -- /usr/bin/gitea web -c /etc/gitea/app.ini"]
