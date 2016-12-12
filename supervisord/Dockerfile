FROM mrsu/ubuntu:latest

MAINTAINER mrsu <marioasu@163.com>

RUN apt-get update && \
    apt-get install -y supervisor && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    > /var/lib/apt/extended_states

COPY config /config
