# QoL commands

build:
	@docker-compose -f docker-compose.yml build

start:
	@docker-compose up -d --build kali

# bash:
# 	@docker run --tty --interactive kali-linux_kali /bin/bash

bash:
	@docker exec -it kali bash