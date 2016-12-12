usermod -u ${USER_ID:-1000} www-data
mkdir -p /data/config /data/http /data/logs
chown -R www-data:www-data /data
