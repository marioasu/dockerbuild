FROM mrsu/nginx
MAINTAINER mrsu <mrsuzhongping@gmail.com>

RUN apt-get update && \
    apt-get install -y php7.0-fpm && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    > /var/lib/apt/extended_states

COPY etc /etc
