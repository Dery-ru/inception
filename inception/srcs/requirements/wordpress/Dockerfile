#Version: 0.0.1

FROM debian:buster
MAINTAINER Roosevelt Hoke
EXPOSE 9000

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get -y install php7.3 php-mysqli php-fpm mariadb-client
RUN apt-get -y install wget curl
    
COPY ./tools/www.conf /etc/php/7.3/fpm/pool.d
RUN mkdir /run/php/

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp
RUN mkdir -p /var/www/wordpress
RUN chown -R www-data:www-data /var/www/wordpress/
RUN chmod 777 /var/www/wordpress/

COPY tools/setup.sh /
RUN chmod 777 /setup.sh
WORKDIR /var/www/wordpress

ENTRYPOINT ["sh", "/setup.sh"]
