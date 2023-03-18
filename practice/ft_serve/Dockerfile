FROM	debian:buster

LABEL	maintainer="jaekim@student.42seoul.kr"

RUN apt-get update && \
    apt-get install -y \
    nginx \
    mariadb-server \
    php-mysql \
    php-mbstring \
    openssl \
    vim \
    wget \
    php-fpm

# copy		from local -> container
COPY ./srcs/cmds.sql ./
COPY ./srcs/run.sh ./
COPY ./srcs/default ./tmp
COPY ./srcs/wp-config.php ./tmp
COPY ./srcs/config.inc.php ./tmp

EXPOSE	80 443

# CMD		컨테이너가 실행될 때 실행할 명령어
CMD	bash run.sh