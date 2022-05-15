#!/usr/bin/env bash

cd Dinoknot
cp ../packages_script.sh ./
docker build -t dinoknot .
rm packages_script.sh