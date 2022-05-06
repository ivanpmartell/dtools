#!/usr/bin/env bash

cp packages_script.sh Dinoknot/
cd Dinoknot
docker build -t dinoknot .
rm packages_script.sh