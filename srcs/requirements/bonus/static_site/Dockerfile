FROM debian:bullseye

RUN apt-get update \
	&& apt-get upgrade -y \
	&& apt-get install apache2 -y
#	&& apt-get install python3 -y

RUN mkdir -p /var/www/html

COPY ./conf/* /var/www/html/

RUN sed -i  's/80/81/g' /etc/apache2/ports.conf

EXPOSE 81

CMD ["apachectl", "-D", "FOREGROUND"]

#CMD [ "python3", "-m", "http.server", "1313", "--directory", "/var/www/html" ]
