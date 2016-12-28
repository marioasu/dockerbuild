FROM mrsu/supervisord
MAINTAINER mrsu <marioasu@163.com>

RUN apt-get update && \
    apt-get install -y nginx && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    > /var/lib/apt/extended_states && \
    rm -rf /etc/nginx/*.d && \
    mkdir -p /etc/nginx/nginx.d /etc/nginx/host.d /ect/nginx/conf.d /etc/nginx/addon.d

COPY config /config
COPY etc /etc

EXPOSE 80
EXPOSE 443
