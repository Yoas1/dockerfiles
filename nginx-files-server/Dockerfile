FROM nginx

COPY default.conf /etc/nginx/conf.d/
COPY theme /etc/nginx/theme

RUN mkdir /data

ENTRYPOINT ["nginx", "-g", "daemon off;"] 



# docker run -it --name files -p 8080:80 yoas1/nginx-files:1.0