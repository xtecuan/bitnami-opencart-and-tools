#!/bin/bash

mv /bitnami/opencart/config.php /bitnami/opencart/config.orig.txt
cp /bitnami/opencart/config-site.php /bitnami/opencart/config.php

mv /bitnami/opencart/admin/config.php /bitnami/opencart/admin/config.orig.txt
cp /bitnami/opencart/admin/config-admin.php /bitnami/opencart/admin/config.php
