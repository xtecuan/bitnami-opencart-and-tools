#!/bin/bash

docker run -d --name mariadb \
  --env ALLOW_EMPTY_PASSWORD=yes \
  --env MARIADB_USER=bdusername \
  --env MARIADB_PASSWORD="bdpassword" \
  --env MARIADB_DATABASE=bitnami_opencart \
  --network opencart-network \
  --volume mariadb_data:/bitnami/mariadb \
  bitnami/mariadb:latest
