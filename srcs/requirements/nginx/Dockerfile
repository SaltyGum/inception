# syntax=docker/dockerfile:1

FROM    alpine:3.17.4

ENV WP_DOMAIN=${WP_DOMAIN}

# requirements
RUN     set -eux; \
        apk add --no-cache nginx \
                           openssl \
                           bash \
                           vim

# setting up the user
RUN     set -eux; \
        mkdir -p /var/www/html/$WP_DOMAIN; \
        adduser -u 82 -S -D -G www-data www-data; \
        chown -R www-data:www-data /var/www/$WP_DOMAIN

COPY    ./tools/openssl.cnf .
COPY    ./tools/create_certs.sh .

RUN     set -eux; \
        ./create_certs.sh; \
        rm -rf ./create_certs.sh ./openssl.cnf ./create_certs.sh

COPY    ./conf/jeluiz4.42.fr.conf /etc/nginx/http.d/default.conf

EXPOSE  443
EXPOSE  80
CMD     ["nginx", "-g", "daemon off;"]
