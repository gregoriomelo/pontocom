#!/bin/bash

path_to_private_key=$1
username=$2
host=$3
docker_image=$4
docker_compose_service=$5

ssh -i $path_to_private_key $username@$host "sudo docker pull $docker_image; sudo docker-compose stop $docker_compose_service; sudo docker-compose up -d $docker_compose_service"
