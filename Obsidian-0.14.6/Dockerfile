FROM ubuntu:18.04
RUN apt-get update; \
    apt-get -y upgrade; \
    apt-get install -y wget vnc4server python3 wmctrl xdotool apt-transport-https libasound2

ENV PASSWORD=admin123 WIDTH=1366 HEIGHT=860
COPY ./noVNC/ /noVNC/
COPY ./run.sh /run.sh
COPY obsidian /tmp
RUN chmod 777 /tmp/obsidian && \
    mv /tmp/obsidian /usr/local/bin/obsidian && \
    chmod 777 /run.sh && \
    chmod 777 -R /noVNC
CMD ["/run.sh"]

#docker container run -it -p 6080:6080 -p 5901:5901 -e WIDTH=1366 -e HEIGHT=860 -v </path-to-save-data>:/guides yoas1/obsidian:0.14.6

