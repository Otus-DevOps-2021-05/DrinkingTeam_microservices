#!/bin/bash

ansible-playbook -i ./inventory/prod/k8s.ini k8s-pre.yml
