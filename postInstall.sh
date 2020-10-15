
docker cp ./config-site.php bitnami-opencart-and-tools_opencart_1:/bitnami/opencart/config.php
docker cp ./config-admin.php bitnami-opencart-and-tools_opencart_1:/bitnami/opencart/admin/config.php
#docker exec -t bitnami-opencart-and-tools_opencart_1  bash -c /bitnami/opencart/patchConfigOpencart.sh
