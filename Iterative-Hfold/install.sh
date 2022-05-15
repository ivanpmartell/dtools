#!/usr/bin/env bash

cd Iterative-Hfold
cp ../packages_script.sh ./
docker build -t iterative-hfold .
rm packages_script.sh