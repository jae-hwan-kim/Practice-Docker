up :
	sudo docker-compose -f ./srcs/docker-compose.yml up --build -d

rmi :
	docker rmi srcs-wordpress srcs-mariadb srcs-nginx

vrm :
	docker volume rm srcs_db_volume srcs_wp_volume

down :
	sudo docker-compose -f ./srcs/docker-compose.yml down

log :
	sudo docker-compose -f ./srcs/docker-compose.yml logs

prune :
	docker system prune -af

clean :
	make down
	make rmi vrm
	make prune
	docker run debian:buster 