#Version: 0.0.1

FROM debian:buster
MAINTAINER Roosevelt Hoken
EXPOSE 443

RUN apt-get -y update
RUN apt-get -y install nginx
RUN apt-get install openssl -y

RUN openssl req -x509 -sha256 -nodes -days 365 -newkey rsa:2048 \
	-subj "/C=FR/ST=Russia/L=Kazan/O=School21/CN=rhoke.42.fr" \
	-keyout /etc/ssl/private/localhost.key -out /etc/ssl/certs/localhost.crt
COPY ./conf/default /etc/nginx/sites-available
RUN ls -s /etc/nginx/sites-available/default /etc/nginx/sites-enabled/

ENTRYPOINT nginx -g 'daemon off;'

