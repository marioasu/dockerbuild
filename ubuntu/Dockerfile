FROM ubuntu:16.04

MAINTAINER mrsu <marioasu@163.com>

RUN apt-get update && \
    apt-get install -y software-properties-common apt-utils && \
    apt-get install -y vim && \
    apt-get install -y net-tools && \
    apt-get install -y curl && \
    apt-get install -y iputils-ping && \
    apt-get clean && \
    apt-get install -y language-pack-en-base && \
    locale-gen en_US.UTF-8 && \
    ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    rm -rf /var/lib/apt/lists/* && \
    > /var/lib/apt/extended_states

ENV DEBIAN_FRONTEND=noninteractive
ENV LANG=en_US.UTF-8

COPY entrypoint.sh /
CMD ["bash", "/entrypoint.sh"]
