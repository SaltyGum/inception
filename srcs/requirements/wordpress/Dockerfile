FROM debian:buster

RUN	apt-get update -y

RUN	apt-get install php-fpm php-mysql curl -y

COPY	./tools/script.sh .

COPY    ./conf/wp-pool.conf /etc/php/7.3/fpm/pool.d/www.conf

COPY	./tools/wp-config.php .

RUN     chmod +x ./script.sh 

ENTRYPOINT  [ "./script.sh" ]
