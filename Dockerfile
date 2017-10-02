FROM docker:stable
MAINTAINER Nikita Chernyi <me@rakshazi.cf>

COPY bin /usr/local/bin
COPY cibu /opt/cibu

RUN apk --no-cache add py-pip curl openssh-client bash && \
    pip install docker-compose awscli ecs-deploy && \
    chmod +x /usr/local/bin/*

