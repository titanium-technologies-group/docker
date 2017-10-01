FROM docker:stable
MAINTAINER Nikita Chernyi <me@rakshazi.cf>

RUN apk --no-cache add py-pip curl openssh-client && \
    pip install docker-compose awscli ecs-deploy && \
    chmod +x /usr/local/bin/*
