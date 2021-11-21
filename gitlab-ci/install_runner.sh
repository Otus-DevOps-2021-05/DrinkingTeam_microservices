#!/bin/bash

sudo -E docker run -d --name gitlab-runner --restart always -v /srv/gitlabrunner/config:/etc/gitlab-runner -v /var/run/docker.sock:/var/run/docker.sock gitlab/gitlab-runner:latest

echo $GITLAB_TOKEN

sudo -E docker exec -it gitlab-runner gitlab-runner register \
 --url http://51.250.8.124/ \
 --non-interactive \
 --locked=false \
 --name DockerRunner \
 --executor docker \
 --docker-image alpine:latest \
 --registration-token $GITLAB_TOKEN \
 --tag-list "linux,xenial,ubuntu,docker" \
 --run-untagged
