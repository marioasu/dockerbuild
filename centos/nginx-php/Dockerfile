FROM mrsu/nginx:centos
MAINTAINER mrsu <mrsuzhongping@gmail.com>

RUN rpm -Uvh https://mirror.webtatic.com/yum/el6/latest.rpm && \
    yum install -y php71w-fpm && \
    yum clean all

COPY etc /etc

ENTRYPOINT ["php-fpm"]
