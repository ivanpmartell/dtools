#!/usr/bin/env bash

cd Hfold
cp ../packages_script.sh ./
docker build -t hfold .
rm packages_script.sh