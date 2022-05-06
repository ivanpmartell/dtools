#!/usr/bin/env bash

export DEBIAN_FRONTEND=noninteractive

echo "Installing docker"
apt-get update
apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
apt install docker-ce
apt-get autoremove --purge -y
apt-get autoclean -y
rm -rf /var/cache/apt/*

echo "Fixing user permissions..."
usermod -aG docker ${USER}
echo "Done"
echo "Make sure to relog into your user:"
echo "\t\t su - ${USER}"