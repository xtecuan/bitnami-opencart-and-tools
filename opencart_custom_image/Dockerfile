FROM bitnami/opencart:latest

USER root
RUN  apt-get -y update; apt-get -y install unzip nano
COPY ./downloadAndInstallPHPMyAdmin.sh /tmp
RUN  chmod a+x /tmp/downloadAndInstallPHPMyAdmin.sh
RUN /tmp/downloadAndInstallPHPMyAdmin.sh
COPY ./config.inc.php /opt/bitnami/phpmyadmin
COPY ./htaccess /opt/bitnami/phpmyadmin/.htaccess
COPY ./htpasswd /opt/bitnami/phpmyadmin/.htpasswd
#RUN chown -R daemon:daemon /opt/bitnami/phpmyadmin
RUN mkdir -p /opt/bitnami/apache2/conf/vhosts/phpmyadmin/
COPY ./phpmyadmin.conf /opt/bitnami/apache2/conf/vhosts/phpmyadmin/
#RUN chown -R daemon:daemon /opt/bitnami/apache2/conf/vhosts/phpmyadmin/
COPY ./opencart-https-vhost.conf /opt/bitnami/apache2/conf/vhosts/
#RUN chown  daemon:daemon /opt/bitnami/apache2/conf/vhosts/opencart-https-vhost.conf
#COPY ./config-site.php /bitnami/opencart/
#COPY ./config-admin.php /bitnami/opencart/admin

#COPY ./patchConfigOpencart.sh /bitnami/opencart
#RUN  chmod a+x /bitnami/opencart/patchConfigOpencart.sh
