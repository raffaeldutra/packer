#!/usr/bin/env bash

declare -r release="jessie"
declare -r package="puppetlabs-release-pc1-${release}.deb"

sudo wget https://apt.puppetlabs.com/${package}
sudo dpkg -i ${package}
sudo apt-get update

sudo apt-get install --yes --no-install-recommends puppet
