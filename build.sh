#!/usr/bin/env bash

set -e

service=${1}

./packer.exe build -force services/${service}.json
