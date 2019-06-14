# tico/docker [![Docker Pulls](https://img.shields.io/docker/pulls/tico/docker.svg?style=for-the-badge)](https://hub.docker.com/r/tico/docker/)

Special Docker in Docker image for Gitlab CI. Based on `docker:stable`

## Pre-installed tools

* awscli
* cibu
* composer-install (NOTE: requires DinD)
* curl
* docker-compose
* git
* jq
* npm-install (NOTE: requires DinD)
* openssh-client
* php-cs-fixer (NOTE: requires DinD)
* pip
* security-checker (NOTE: requires DinD)
* sentry-cli
* unused-scanner (NOTE: requires DinD)

## ENV vars

* NODE_VERSION (for `npm-install`) - node.js version, default: `6-alpine`
* NODE_LOGLEVEL (for `npm-install`) - log level, default: `error`
