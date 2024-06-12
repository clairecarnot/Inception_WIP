FROM debian:bullseye

RUN apt-get update && \
	apt-get upgrade -y && \
	apt-get install -y redis-server && \
	rm -rf /var/lib/apt/lists/*

#COPY ./conf/redis.conf /etc/redis/redis.conf
COPY ./tools/redis.sh /tmp/redis.sh

#RUN mkdir /run/redis/ && \
#	chown -R redis:redis /run/redis/ /var/lib/redis

EXPOSE 6379

#CMD [ "redis-server", "/etc/redis/redis.conf" ]
#ENTRYPOINT [ "redis-server", "/etc/redis/redis.conf" ]
CMD ["sh", "/tmp/redis.sh"]
