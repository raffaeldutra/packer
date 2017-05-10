#!/usr/bin/env bash
# Rafael Dutra <raffaeldutra@gmail.com>

sudo apt-get install --yes --no-install-recommends apt-transport-https ca-certificates curl gnupg2 software-properties-common
sudo curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"
sudo apt-get update
sudo apt-get install --yes --no-install-recommends docker-ce
