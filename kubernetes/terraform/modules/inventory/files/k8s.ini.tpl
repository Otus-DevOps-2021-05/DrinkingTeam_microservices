[masters]
master ansible_host=${master} ansible_user=ubuntu

[workers]
worker1 ansible_host=${worker1} ansible_user=ubuntu
worker2 ansible_host=${worker2} ansible_user=ubuntu

[all:vars]
ansible_python_interpreter=/usr/bin/python3
