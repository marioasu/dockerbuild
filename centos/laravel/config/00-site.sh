#!/bin/bash
set -e

USER=nginx
groupmod -g ${USER_GID:-1000} $USER
usermod -u ${USER_ID:-1000} $USER

nginx_conf_d=/etc/nginx/conf.d
sed -i "s#%DOMAIN_NAME%#$DOMAIN_NAME#" $nginx_conf_d/*.conf
sed -i "s#%WEB_HOME%#$WEB_HOME#" $nginx_conf_d/*.conf
