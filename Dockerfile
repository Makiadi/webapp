FROM ubuntu:18.04
MAINTAINER makiadi (makiadimakfe@hotmail.fr)
RUN DEBIAN_FRONTED=noninterative apt-get update && apt-get install -y nginx && apt-get install git -y
EXPOSE 80
#ADD static-website-example/ /var/www/html
RUN rm -rf /var/www/html/*
RUN git clone https://github.com/diranetafen/static-website-example.git /var/www/html
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]

