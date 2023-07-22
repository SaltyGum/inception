FROM debian:buster

RUN	apt-get -y update && \
	apt-get install -y nginx && \
	apt-get install openssl -y

COPY	./conf/default.conf /etc/nginx/sites-available/

COPY    ./tools/openssl.cnf .

COPY    ./tools/create_certs.sh .

EXPOSE  443
EXPOSE  80
CMD     ["nginx", "-g", "daemon off;"]
