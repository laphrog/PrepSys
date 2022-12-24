#!/bin/bash

# Install main packages 
yum install -y vim git wget firewalld yum-utils


# Enable FirewallD
systemctl start firewalld
systemctl enable firewalld 

# Install & Enable Docker 
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
yum install docker-ce

systemctl start docker
systemctl enable docker

# Install docker-compose
curl -L "https://github.com/docker/compose/releases/download/1.25.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

