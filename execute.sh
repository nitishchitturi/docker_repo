#!/bin/bash
clear
#Extra Credit Docker - Venkat
echo "running service now"

git clone https://github.com/nitishchitturi/docker_repo.git

cd docker

docker swarm init

docker stack deploy -c docker-compose.yml dockervenkatchitturi


docker service ls

echo "All containers running service:"

docker container ls -q
