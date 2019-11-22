#!/usr/bin/env bash

./hadoop_entrypoint.sh $1

./spark_config_loader.sh

for daemon in ${HADOOP_DAEMONS[@]}; do
    if [[ "$daemon" == "namenode" ]]; then
      echo "Awaiting Hadoop services to be started..."
      sleep 10
      echo "Starting Apache Livy server..."
      livy-server start
    fi
done

if [[ "$1" == "spark" ]]; then
  tail -f /dev/null
fi