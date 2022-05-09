#!/usr/bin/env bash

cp packages_script.sh Spot-Rna/
cd Spot-Rna
docker build -t spotrna .
rm packages_script.sh