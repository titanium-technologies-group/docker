FROM docker:stable
MAINTAINER Nikita Chernyi <developer.nikus@gmail.com>

RUN apk --no-cache add py-pip curl openssh-client && \
    pip install docker-compose awscli ecs-deploy && \
    curl -L -o /usr/local/bin/kubectl https://storage.googleapis.com/kubernetes-release/release/v1.7.6/bin/linux/amd64/kubectl && \
    chmod +x /usr/local/bin/*
