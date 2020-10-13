#!/bin/bash

echo "Installing PHPMyAdmin"
INSTALL_DIR=/opt/bitnami/
VERSION=phpMyAdmin-5.0.3-all-languages

curl https://files.phpmyadmin.net/phpMyAdmin/5.0.3/${VERSION}.zip --output /tmp/phpmyadmin.zip
mkdir -p /var/lib/phpmyadmin/tmp
chown -R www-data:www-data /var/lib/phpmyadmin
unzip /tmp/phpmyadmin.zip -d $INSTALL_DIR
mv $INSTALL_DIR/$VERSION $INSTALL_DIR/phpmyadmin
cp $INSTALL_DIR/phpmyadmin/config.sample.inc.php $INSTALL_DIR/phpmyadmin/config.inc.php
chown -R www-data:www-data $INSTALL_DIR/phpmyadmin




