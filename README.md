# tico/docker

Special Docker in Docker image for Gitlab CI. Based on `docker:stable`

## Pre-installed tools

* curl
* pip
* openssh-client
* docker-compose
* awscli
* ecs-deploy
* kubectl
* php-cs-fixer
* composer-update

## Configuration

via environment variables.

### SSH_PRIVATE_KEY

Pass ssh private key via that variable and ssh agent will be configured and added

### KUBECONFIG

Pass kubeconfig via that variable and kubectl will start proxy on `127.0.0.1:8001` in background

## Usage

See `.gitlab-ci.yml` file as example
