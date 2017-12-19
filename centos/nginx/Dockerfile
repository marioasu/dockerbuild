FROM mrsu/centos
MAINTAINER mrsu <mrsuzhongping@gmail.com>

RUN yum install -y nginx && \
    yum clean all

COPY etc /etc
COPY config /config

EXPOSE 80
EXPOSE 443
