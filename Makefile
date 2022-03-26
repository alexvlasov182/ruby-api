up: #Containers start
	docker-compose up -d

down: #Stop
	docker-compose stop

ps:
	docker ps

connect_ruby:
	docker exec -it f7641abc8a58 bash

connect_db:
	docker exec -it ee9065b9bdab bash


