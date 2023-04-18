#!/bin/sh

# install testarchiver package
python3 -m pip install testarchiver

# run testarchiver
testarchiver --database test_archive.db results/output.xml

# Starts up Grafana
docker run -d -p 3000:3000 --name grafana-service grafana/grafana-oss
