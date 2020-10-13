#!/bin/bash

docker network create opencart-network
docker volume create --name mariadb_data
docker volume create --name opencart_data
