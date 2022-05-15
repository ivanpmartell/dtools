#!/usr/bin/env bash

cd Hotknots
cp ../packages_script.sh ./
docker build -t hotknots .
rm packages_script.sh