#!/bin.bash

service mariadb start

mariadb -e "CREATE DATABASE IF NOT EXISTS \`${MARIADB_DATABASE}\`;"
mariadb -e "CREATE USER IF NOT EXISTS '${MARIADB_USER}'@'localhost' IDENTIFIED BY '${MARIADB_USER_PASS}';"
mariadb -e "GRANT ALL PRIVILEGES ON \`${MARIADB_DATABASE}\`.* TO \`${MARIADB_USER}\`@'%' IDENTIFIED BY '${MARIADB_USER_PASS}';"
mariadb -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${MARIADB_ROOT_PASSWORD}';"
mariadb -e "FLUSH PRIVILEGES;"

kill $(cat /var/run/mysqld/mysqld.pid)

mysqld
