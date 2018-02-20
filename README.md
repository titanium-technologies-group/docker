# tico/docker

Special Docker in Docker image for Gitlab CI. Based on `docker:stable`

## Pre-installed tools

* curl
* pip
* openssh-client
* docker-compose
* awscli
* git
* cibu
* jq
* npm-install (NOTE: requires DinD)

## ENV vars

* NODE_VERSION (for `npm-install`) - node.js version, default: `6-alpine`
* NODE_LOGLEVEL (for `npm-install`) - log level, default: `error`
