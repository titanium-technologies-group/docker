FROM docker:stable
MAINTAINER Nikita Chernyi <developer.nikus@gmail.com>

COPY entrypoint.sh /usr/local/bin/custom-entrypoint

RUN apk --no-cache add py-pip curl openssh-client && \
    pip install docker-compose awscli ecs-deploy && \
    curl -L -o /usr/local/bin/kubectl https://storage.googleapis.com/kubernetes-release/release/v1.7.6/bin/linux/amd64/kubectl && \
    sed -i '/exec*/i/usr/local/bin/custom-entrypoint' /usr/local/bin/docker-entrypoint.sh && \
    chmod +x /usr/local/bin/*
