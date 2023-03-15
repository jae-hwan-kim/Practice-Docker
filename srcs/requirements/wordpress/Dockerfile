FROM	debian:buster

RUN		apt-get update -y && apt-get upgrade -y && \
        apt-get install php-fpm -y \
                        vim \
                        wget \
                        tar && \
        wget https://wordpress.org/latest.tar.gz && \
        tar -xvzf latest.tar.gz && \
        mkdir -p /var/www/html/wordpress && \
        mv wordpress/ var/www/html/ 

COPY	./conf/www.conf /etc/php/7.3/fpm/pool.d/www.conf

EXPOSE	9000

CMD		service php7.3-fpm start && tail -f /dev/null