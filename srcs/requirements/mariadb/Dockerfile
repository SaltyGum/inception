# syntax=docker/dockerfile:1

FROM debian:buster

RUN apt-get update -y && apt-get install -y  mariadb-server \
    mariadb-client \
    bash \
    vim \
    cowsay


COPY ./tools/db_Conf.cnf /etc/mysql/mariadb.conf.d/

COPY ./tools/script.sh /

RUN	chmod +x ./script.sh

RUN ls -l

CMD [ "./script.sh" ]
