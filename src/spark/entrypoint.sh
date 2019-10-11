#!/usr/bin/env bash

./haddop_entrypoint.sh $1

./spark_config_loader.sh

if [[ "$1" == "spark" ]]; then
  tail -f /dev/null
fi