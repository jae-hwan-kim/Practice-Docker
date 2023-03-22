FROM	debian:buster

RUN		apt-get update -y && \
		apt-get upgrade -y && \
		apt-get -y install \
		mariadb-server \
		mariadb-client \
		procps

COPY	./tools/mariadb_setup.sh /tmp/mariadb_setup.sh
COPY	./tools/healthcheck.sh /tmp/healthcheck.sh
COPY	./conf/50-server.cnf /etc/mysql/mariadb.conf.d/

ENTRYPOINT ["sh", "/tmp/mariadb_setup.sh"]

HEALTHCHECK --interval=5s --timeout=5s --start-period=1s --retries=5 \
CMD [ "sh", "/tmp/healthcheck.sh" ]

EXPOSE 3306