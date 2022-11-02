#!/bin/sh
set -ue

echo "Activating feature 'dvc'"

export DEBIAN_FRONTEND=noninteractive

cd /etc/apt/sources.list.d
wget https://dvc.org/deb/dvc.list
apt-get update
apt-get install --yes dvc
apt-get clean
rm --recursive --force /var/lib/apt/lists/*

# Temporary solution to resolve this issue:
# https://github.com/community/community/discussions/38070
GIT_CONFIG_PATH=/usr/local/etc/gitconfig
if [ "${CODESPACES:-false}" = "true" -a -f $GIT_CONFIG_PATH ]; then
  ln -s $GIT_CONFIG_PATH /etc/gitconfig || true
fi
