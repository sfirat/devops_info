#! /bin/bash

sudo yum remove -y docker docker-common docker-selinux docker-engine

sudo yum install -y yum-utils device-mapper-persistent-data lvm2

sudo yum-config-manager -y --add-repo https://download.docker.com/linux/centos/docker-ce.repo

sudo yum install -y docker-ce

sudo systemctl start docker

sudo docker run hello-world