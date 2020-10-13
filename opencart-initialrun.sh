#!/bin/bash

docker run -d --name opencart \
  -p 80:8080 -p 443:8443 \
  --env ALLOW_EMPTY_PASSWORD=yes \
  --env OPENCART_DATABASE_USER=bn_opencart \
  --env OPENCART_DATABASE_PASSWORD="Welcome123\$" \
  --env OPENCART_DATABASE_NAME=bitnami_opencart \
  --env OPENCART_USERNAME=admin \
  --env OPENCART_PASSWORD="Welcome123\$\$\$1234" \
  --env OPENCART_EMAIL="melvyng@openranger.com" \
  --env OPENCART_HOST="myopencart.xtesoft.com" \
  --env OPENCART_ENABLE_HTTPS=yes \
  --network opencart-network \
  --volume opencart_data:/bitnami/opencart \
  --volume opencart_storage_data:/bitnami/opencart_storage \
  opencart-phpmyadmin-img



