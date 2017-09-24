FROM docker:stable
MAINTAINER Nikita Chernyi <developer.nikus@gmail.com>

COPY entrypoint.sh /usr/local/bin/custom-entrypoint

RUN apk --no-cache add py-pip curl openssh-client && \
    pip install docker-compose awscli ecs-deploy && \
    curl -L -o /usr/local/bin/kubectl https://storage.googleapis.com/kubernetes-release/release/v1.7.6/bin/linux/amd64/kubectl && \
    printf "#!/bin/sh\nexec docker run -v ${CI_PROJECT_DIR}:/app rakshazi/php-cs-fixer \$@" > /usr/local/bin/php-cs-fixer && \
    printf "#!/bin/sh\nexec docker run -i -v ${CI_PROJECT_DIR}:/app composer update --no-dev --ignore-platform-reqs --no-interaction --no-progress -a -d /app" > /usr/local/bin/composer-update && \
    sed -i '/exec*/i/usr/local/bin/custom-entrypoint' /usr/local/bin/docker-entrypoint.sh && \
    chmod +x /usr/local/bin/*
