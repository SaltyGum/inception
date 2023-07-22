# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jeluiz4 <jeffluiz97@gmail.com>             +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/07/18 15:14:05 by jeluiz4           #+#    #+#              #
#    Updated: 2023/07/21 22:48:22 by jeluiz4          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

all : up

up : 
	docker-compose -f ./srcs/docker-compose.yml up --build -d

down : 
	docker-compose -f ./srcs/docker-compose.yml down

stop : 
	docker-compose -f ./srcs/docker-compose.yml stop

start : 
	docker-compose -f ./srcs/docker-compose.yml start

status : 
	docker stats --no-stream mariadb wordpress nginx
