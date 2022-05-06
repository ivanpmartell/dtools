#!/usr/bin/env bash

cp packages_script.sh Hfold/
cd Hfold
docker build -t hfold .
rm packages_script.sh