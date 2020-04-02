# aws-cli

## About

This is AWS-CLI SHELL container.

## DooD(Docker outside of Docker)

container use `docker.sock` on host

``` yaml
    volumes:
        - /var/run/docker.sock:/var/run/docker.sock
```

## aws-cli - aws-cli and docker

1. docker-compose build aws-cli
1. docker-compose run aws-cli