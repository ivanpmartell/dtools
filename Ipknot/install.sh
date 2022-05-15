#!/usr/bin/env bash

cd Ipknot
cp ../packages_script.sh ./
docker build -t ipknot .
rm packages_script.sh