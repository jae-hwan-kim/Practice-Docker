FROM	debian:buster

LABEL	maintainer="jaekim@student.42seoul.kr"

RUN apt-get update && \
    apt-get install -y \
    nginx \
    openssl \
    vim

# copy		from local -> container
COPY ./conf/run.sh ./
COPY ./conf/default ./tmp

EXPOSE	80 443

# CMD		컨테이너가 실행될 때 실행할 명령어
CMD	bash run.sh