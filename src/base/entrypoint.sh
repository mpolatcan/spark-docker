#!/usr/bin/env bash

python3 config_loader.py

./hadoop_entrypoint.sh $1

./spark_config_loader.sh

if [[ "$1" == "spark" ]]; then
  tail -f /dev/null
fi