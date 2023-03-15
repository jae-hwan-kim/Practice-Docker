up :
	sudo docker-compose -f ./srcs/docker-compose.yml up -d

rmi :
	docker rmi srcs-wordpress srcs-mariadb srcs-nginx

vrm :
	docker volume rm srcs_db_volume srcs_wp_volume

down :
	sudo docker-compose -f ./srcs/docker-compose.yml down