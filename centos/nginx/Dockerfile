FROM mrsu/centos
MAINTAINER mrsu <mrsuzhongping@gmail.com>

RUN yum install -y nginx && \
    yum clean all

COPY etc /etc
COPY config /config

ENTRYPOINT ["nginx"]

EXPOSE 80
EXPOSE 443
