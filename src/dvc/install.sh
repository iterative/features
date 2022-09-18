#!/bin/sh
set -e

echo "Activating feature 'dvc'"

export DEBIAN_FRONTEND=noninteractive

cd /etc/apt/sources.list.d
wget https://dvc.org/deb/dvc.list
apt-get update
apt-get install --yes dvc
apt-get clean
rm --recursive --force /var/lib/apt/lists/*

