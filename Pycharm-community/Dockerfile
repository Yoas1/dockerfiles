FROM ubuntu:18.04
ARG VERSION=2022.2.2
RUN apt-get update; \
    apt-get -y upgrade; \
    apt-get install -y wget vnc4server python3 wmctrl xdotool apt-transport-https libasound2
RUN cd /tmp && \
   wget https://download.jetbrains.com/python/pycharm-community-$VERSION.tar.gz && \
   tar xzf pycharm-community-$VERSION.tar.gz -C /opt/ && \
   rm pycharm-community-$VERSION.tar.gz && \
   ln -s /opt/pycharm-community-$VERSION/bin/pycharm.sh /usr/bin/pycharm
ENV PASSWORD=admin123 WIDTH=1366 HEIGHT=768
COPY ./noVNC/ /noVNC/
COPY ./run.sh /run.sh
RUN chmod 777 /run.sh && \
    chmod 777 -R /noVNC
CMD ["/run.sh"]

#docker container run -it -p 6080:6080 -p 5901:5901 -e WIDTH=1270 -e HEIGHT=650 yoas1/pycharm-community:2022.1.1
