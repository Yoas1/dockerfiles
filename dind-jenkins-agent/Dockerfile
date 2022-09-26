FROM alpine:latest

ENV SECRET ""
ENV HOME_DIR ""
ENV ADDRESS ""

RUN apk update && \
    apk add --update docker && \
    apk add git && \ 
    apk --no-cache add openjdk11 --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community && \
    cd /opt && \
    wget https://repo.jenkins-ci.org/public/org/jenkins-ci/main/remoting/4.9/remoting-4.9.jar && \
    mv remoting-4.9.jar agent.jar


ENTRYPOINT [ "/bin/sh", "-c", "mkdir $HOME_DIR & dockerd &> dockerd-logfile & java -jar /opt/agent.jar -jnlpUrl $ADDRESS -secret $SECRET -workDir '$HOME_DIR'" ]
