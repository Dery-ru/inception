SRCS = ./srcs/

all: prepare up

up:
	@ cd $(SRCS) && docker-compose up -d --build

down:
	@ cd $(SRCS) && docker-compose down

prepare:
	@ cd $(SRCS)/requirements/tools && sudo sh prepare.sh

clean:
	@ $(SRCS) && docker-compose down && docker system prune
	@ sudo rm -Rf ~/data/

fclean:
	@ $(SRCS) && docker-compose down && docker system prune -a
	@ sudo rm -Rf ~/data/

.PHONY: fclean prepare run all

