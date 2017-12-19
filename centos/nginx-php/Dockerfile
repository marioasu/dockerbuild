FROM mrsu/nginx:centos
MAINTAINER mrsu <mrsuzhongping@gmail.com>

RUN rpm -Uvh https://mirror.webtatic.com/yum/el6/latest.rpm && \
    yum install -y php71w-fpm \
    php71w-cli && \
    curl -sS https://getcomposer.org/installer | php && mv composer.phar /usr/bin && \
    yum clean all

COPY etc /etc

ENTRYPOINT ["php-fpm"]
