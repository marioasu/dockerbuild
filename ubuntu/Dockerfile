FROM ubuntu:16.04

MAINTAINER mrsu <marioasu@163.com>

RUN apt-get update && \
    apt-get install -y vim && \
    apt-get install -y net-tools && \
    apt-get install -y curl && \
    apt-get install -y iputils-ping && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    > /var/lib/apt/extended_states && \
    update-locale LANG=C.UTF-8 LC_MESSAGES=POSIX && \
    locale-gen en_US.UTF-8 && \
    dpkg-reconfigure locales && \
    ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

ENV LANG=en_US.UTF-8
COPY entrypoint.sh /
CMD ["bash", "/entrypoint.sh"]