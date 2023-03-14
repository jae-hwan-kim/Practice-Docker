up :
	sudo docker-compose -f ./srcs/docker-compose.yml up -d

down :
	sudo docker-compose -f ./srcs/docker-compose.yml down

clean :
	sudo docker-compose -f ./srcs/docker-compose.yml down --rmi all

re : clean up