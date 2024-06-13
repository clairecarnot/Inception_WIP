FROM debian:bullseye

RUN apt-get update \
	&& apt-get upgrade -y \
	&& apt-get install -y wget tar

RUN wget https://github.com/portainer/portainer/releases/download/2.20.3/portainer-2.20.3-linux-amd64.tar.gz \
	&& tar xvzf /portainer-2.20.3-linux-amd64.tar.gz  -C /usr/local/bin/ \
	&& rm -rf portainer-2.20.3-linux-amd64.tar.gz

RUN chmod +x /usr/local/bin/portainer/portainer

#RUN mkdir -p /data

EXPOSE 9000


COPY tools/portainer.sh /portainer.sh
RUN chmod +x /portainer.sh
ENTRYPOINT ["/portainer.sh"]

#CMD ["/usr/local/bin/portainer/portainer"]
