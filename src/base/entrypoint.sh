#!/usr/bin/env bash

declare -A spark_services

spark_services[livy]="livy-server start"

./hadoop_entrypoint.sh $1

./spark_config_loader.sh

if [[ ${SPARK_SERVICES} != "NULL" ]]; then
  echo "Awaiting Hadoop services to be started..."
  sleep 10
  echo "Starting Spark services..."
  for spark_service in ${SPARK_SERVICES[@]}; do
    ${spark_services[$spark_service]}
  done
fi

if [[ "$1" == "spark" ]]; then
  tail -f /dev/null
fi