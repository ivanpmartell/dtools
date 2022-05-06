#!/usr/bin/env bash

cp packages_script.sh Knotty/
cd Knotty
docker build -t knotty .
rm packages_script.sh