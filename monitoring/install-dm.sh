#!/bin/bash

docker-machine create \
  --driver generic \
  --generic-ip-address=51.250.2.125 \
  --generic-ssh-user yc-user \
  --generic-ssh-key ~/.ssh/appuser \
  docker-host

eval $(docker-machine env docker-host)
