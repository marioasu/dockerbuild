FROM mrsu/supervisord
MAINTAINER mrsu <mrsuzhongping@gmail.com>

RUN apt-get update && \
    apt-get install -y nginx && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    > /var/lib/apt/extended_states && \
    rm -rf /etc/nginx/*.d && \
    mkdir -p /ect/nginx/conf.d /etc/nginx/addon.d

COPY config /config
COPY etc /etc

EXPOSE 80
EXPOSE 443
