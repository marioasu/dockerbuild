default: ubuntu

all: ubuntu supervisord nginx nginx-php

ubuntu: ubuntu/Dockerfile
	docker build -f $< -t mrsu/$@ $(dir $<)
supervisord: supervisord/Dockerfile
	docker build -f $< -t mrsu/$@ $(dir $<)
nginx: nginx/Dockerfile
	docker build -f $< -t mrsu/$@ $(dir $<)
nginx-php: nginx-php/Dockerfile
	docker build -f $< -t mrsu/$@ $(dir $<)
openldap: openldap/Dockerfile
	docker build -f $< -t mrsu/$@ $(dir $<)
.PHONY: ubuntu supervisord nginx nginx-php
