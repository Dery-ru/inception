#Version: 0.0.1

FROM debian:buster
MAINTAINER Roosevelt Hoke

EXPOSE 3306

RUN apt-get update
RUN apt-get install -y mariadb-server vim procps;
COPY tools/setup.sh .
RUN chmod +x setup.sh
RUN rm /etc/mysql/mariadb.conf.d/50-server.cnf

# https"//mariadb.com/kb/en/configuring-mariadb-for-remote-client-access/
COPY tools/50-server.cnf /etc/mysql/mariadb.conf.d
ENTRYPOINT ["sh", "/setup.sh"]

