#!/usr/bin/env bash

cd Knotty
cp ../packages_script.sh ./
docker build -t knotty .
rm packages_script.sh