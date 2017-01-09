#!/usr/bin/env bash

set -e

rm Vagrantfile || true
vagrant box add --force puppet puppet-debian-8.6-amd64-virtualbox.box
vagrant init puppet
vagrant up
