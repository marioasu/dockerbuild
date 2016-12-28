FROM mrsu/supervisord
MAINTAINER mrsu <marioasu@163.com>

RUN apt-get update && \
    apt-get install -y slapd && \
    apt-get install -y ldap-utils && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    > /var/lib/apt/extended_states

COPY config /config
COPY etc /etc

EXPOSE 389
