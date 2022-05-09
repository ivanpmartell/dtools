#!/usr/bin/env bash

cp packages_script.sh Ipknot/
cd Ipknot
docker build -t ipknot .
rm packages_script.sh