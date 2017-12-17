default: centos

all: centos nginx nginx-php

centos: centos6/Dockerfile
	docker build -f $< -t mrsu/$@ $(dir $<)
nginx: nginx/Dockerfile
	docker build -f $< -t mrsu/$@:centos $(dir $<)
nginx-php: nginx-php/Dockerfile
	docker build -f $< -t mrsu/$@:centos $(dir $<)
.PHONY: centos supervisord nginx nginx-php
