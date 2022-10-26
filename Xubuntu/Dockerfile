FROM ubuntu:18.04

ENV PASSWORD=admin123 WIDTH=1920 HEIGHT=1080

ARG DEBIAN_FRONTEND=noninteractive

EXPOSE 6080 5901


RUN apt-get update && apt-get -y upgrade && \
    apt-get install -y iputils-ping python3 python3-pip python3-tk nano vim gcc git g++ gedit geany firefox wmctrl curl wget apt-transport-https libasound2 sudo openssh-client openssh-server && \
    apt-get install -y xfce4 xfce4-terminal xfce4-goodies vnc4server

COPY run.sh /opt/run.sh
COPY ./noVNC/ /noVNC/
COPY xfce-teal.jpg /usr/share/backgrounds/xfce/xfce-teal.jpg
COPY xstartup /root/.vnc/xstartup

RUN mkdir /var/run/sshd && \
    sed -ri 's/^#?PermitRootLogin\s+.*/PermitRootLogin yes/' /etc/ssh/sshd_config && \
    sed -ri 's/UsePAM yes/#UsePAM yes/g' /etc/ssh/sshd_config && \
    chmod 777 /opt/run.sh && \
    chmod 777 -R /noVNC && \
    chmod 755 /root/.vnc/xstartup && \
    cp /etc/xdg/xfce4/panel/default.xml /etc/xdg/xfce4/xfconf/xfce-perchannel-xml/xfce4-panel.xml

ENTRYPOINT /opt/run.sh

 # docker container run -it --platform linux/arm64 -p 6080:6080 -e WIDTH=1920 -v -e HEIGHT=1080 yoas1/xubuntu-desktop:2.0
