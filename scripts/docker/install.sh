#!/usr/bin/env bash
# Rafael Dutra <raffaeldutra@gmail.com>

declare key="58118E89F3A912897C070ADBF76221572C52609D"

sudo apt-get update
sudo apt-get --yes purge lxc-docker*
sudo apt-get --yes purge docker.io*
sudo apt-get --yes install apt-transport-https ca-certificates
sudo apt-key adv --keyserver hkp://pgp.mit.edu:80 --recv-keys ${key}
sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-keys ${key}

sudo echo "deb https://apt.dockerproject.org/repo debian-jessie main" | sudo tee /etc/apt/sources.list.d/docker.list

sudo apt-get update
sudo apt-cache policy docker-engine
sudo apt-get update
sudo apt-get install --yes --no-install-recommends docker-engine
sudo service docker start
