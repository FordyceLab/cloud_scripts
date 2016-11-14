#!/bin/bash

sudo apt-get update
sudo apt-get install -y apt-transport-https ca-certificates
sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
sudo sh -c 'echo "deb https://apt.dockerproject.org/repo ubuntu-xenial main" >> /etc/apt/sources.list.d/docker.list'
sudo apt-get update
sudo apt-get purge lxc-docker
sudo apt-cache policy docker-engine
sudo apt-get update
sudo apt-get install -y linux-image-extra-$(uname -r)
sudo apt-get install -y apparmor
sudo apt-get update
sudo apt-get install -y docker-engine
sudo service docker start
sudo docker run --rm hello-world