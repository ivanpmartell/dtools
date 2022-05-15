#!/usr/bin/env bash

cd Spot-Rna
cp ../packages_script.sh ./
docker build -t spotrna .
rm packages_script.sh