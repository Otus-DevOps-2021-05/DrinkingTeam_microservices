#!/bin/bash

yc compute instance create \
  --name docker-host \
  --zone ru-central1-a \
  --network-interface subnet-id=e9boarnj7cna0dhq13l5,nat-ip-version=ipv4 \
  --memory 4g \
  --create-boot-disk image-folder-id=standard-images,image-family=ubuntu-1804-lts,size=50 \
  --ssh-key ~/.ssh/appuser.pub
