all:
	mkdir -p /home/ccarnot/data/mariadb
	mkdir -p /home/ccarnot/data/wordpress
	docker compose -f ./srcs/docker-compose.yml build
	docker compose -f ./srcs/docker-compose.yml up -d

logs:
	docker compose -f ./srcs/docker-compose.yml logs

clean:
	docker container stop nginx mariadb wordpress redis ftp
	docker network rm inception

fclean: clean
	@sudo rm -rf /home/ccarnot/data/mariadb/*
	@sudo rm -rf /home/ccarnot/data/wordpress/*
	@docker system prune -af

re: fclean all

.PHONY: all logs clean fclean
