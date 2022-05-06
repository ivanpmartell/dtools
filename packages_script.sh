#!/usr/bin/env bash

export DEBIAN_FRONTEND=noninteractive

echo "Installing packages"
apt-get update
apt-get install -y \
    wget \
    gnupg2 \
    lsb-release \
    apt-utils \
    software-properties-common \
    build-essential \
    git
apt-get autoremove --purge -y
apt-get autoclean -y
rm -rf /var/cache/apt/*