FROM mrsu/nginx:centos
MAINTAINER mrsu <mrsuzhongping@gmail.com>

RUN rpm -Uvh https://mirror.webtatic.com/yum/el6/latest.rpm && \
    yum install -y php71w-fpm \
    php71w-cli \
    php71w-pdo \
    php71w-mysql \
    php71w-pecl-redis \
    php71w-mbstring \
    php71w-xml && \
    curl -sS https://getcomposer.org/installer | php && mv composer.phar /usr/bin/composer && \
    yum clean all

COPY config /config
COPY etc /etc
