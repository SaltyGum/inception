# syntax=docker/dockerfile:1

FROM alpine:3.17.4

RUN     set -eux; \
        apk add --no-cache  mariadb \
                            mariadb-client \
                            mariadb-common \
                            mariadb-server-utils \
                            bash \
                            vim \
                            ; \
        rm -f /etc/mysql/my.cnf /etc/my.cf ~/my.cf

COPY    ./conf/my.cnf /etc/mysql/my.cnf
COPY    ./conf/my.cnf /etc/my.cnf.d/mariadb-server.cnf
COPY    ./conf/my.cnf /root/.my.cnf 

RUN     set -eux; \
        mkdir -p /run/mysql /var/lib/mysql; \
        chmod 777 /var/lib/mysql

COPY    ./tools/script.sh /script.sh
RUN     chmod +x /script.sh

ENTRYPOINT ["./script.sh"]
EXPOSE 3306
