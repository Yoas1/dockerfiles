FROM ubuntu:latest

WORKDIR /data

RUN apt update && apt install  openssh-server sudo git -y && \
    groupadd sshgroup && useradd -ms /bin/bash -g sshgroup git && \
    mkdir -p /home/git/.ssh && \
    touch /home/git/.ssh/authorized_keys && \
    chown git:sshgroup /home/git/.ssh/authorized_keys && chmod 600 /home/git/.ssh/authorized_keys && \
    service ssh start && \
    chown git:sshgroup /data && chmod 770 /data

EXPOSE 22

CMD ["/usr/sbin/sshd","-D"]
