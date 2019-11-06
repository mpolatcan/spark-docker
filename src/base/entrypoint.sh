#!/usr/bin/env bash

./hadoop_entrypoint.sh $1

./spark_config_loader.sh

if [[ "${HADOOP_NODE_TYPE}" == "namenode" ]]; then
  livy-server start
fi

if [[ "$1" == "spark" ]]; then
  tail -f /dev/null
fi