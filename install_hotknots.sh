#!/usr/bin/env bash

cp packages_script.sh Hotknots/
cd Hotknots
docker build -t hotknots .
rm packages_script.sh