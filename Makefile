up: #Containers start
	docker-compose up -d

down: #Stop
	docker-compose stop

ps:
	docker ps

connect_ruby:
	docker exec -it 8441c22f7bee bash


