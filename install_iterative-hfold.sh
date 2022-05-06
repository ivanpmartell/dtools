#!/usr/bin/env bash

cp packages_script.sh Iterative-Hfold/
cd Iterative-Hfold
docker build -t iterative-hfold .
rm packages_script.sh